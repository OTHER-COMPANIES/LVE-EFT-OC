/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.report;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.model.MBankStatement;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class Conciliation extends SvrProcess {
	
	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(Conciliation.class);
	
	
	/**	Bank Statement								*/
	private int 								m_C_BankStatement_ID;
	
	/** Bank Account 								*/
	private int 								m_C_BankAccount_ID;

	/**	Transaction											*/
	Trx 										trx = null;
	/** Transaction Name								*/
	String 										trxName ="";
	/**	Statement Final									*/
	ResultSet 									statement_Final = null;  
	
	String sql;
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		MBankStatement m_BankStatement = new MBankStatement(getCtx(),getRecord_ID(),null);
		m_C_BankAccount_ID = m_BankStatement.getC_BankAccount_ID();
		m_C_BankStatement_ID = m_BankStatement.getC_BankStatement_ID();
		
		sql = " SELECT C_BankStatement_ID, StatementDate, BeginningBalance, C_BankAccount_ID, AD_Org_ID"
			+ " FROM C_BankStatement "
			+ " WHERE C_BankStatement_ID = ?";
		
		//	Log
		log.fine("SQL Bank Statement=" + sql);
		//	Transaction
		trx = Trx.get(get_TrxName(), false);	
		
		//	Log
		log.fine("Trx=" + trx.toString());
		//	Log
		log.fine("C_BankAccount_ID=" + m_C_BankAccount_ID 
				+ "\nC_BankStatement_ID=" + m_C_BankStatement_ID );
	}
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		load_conciliation();
		return null;
	} 
	
	private void load_conciliation(){
		
		
		trx = Trx.get(trx.getTrxName(),true);
		statement_Final=GetBankStatementFinal();
		PreparedStatement psInsert = null;
		StringBuffer sql = new StringBuffer();
		
		if(statement_Final != null)
			{
				try {
					///Insertando el Encabezado de la Conciliacion
					sql.append(" INSERT INTO T_Conciliation (C_Bankstatement_ID,C_BankAccount_ID,AD_Client_ID,AD_Org_ID,AD_PInstance_ID,AmountNotReconciled,T_Conciliation_ID)")
						.append(" VALUES (?,?,?,?,?,")
						.append(" (SELECT SUM(CASE WHEN cp.IsReceipt='Y' THEN cp.PayAmt ELSE cp.PayAmt * -1 END) ")
						.append(" FROM ")
						.append(" C_Payment cp")
						.append(" WHERE")
						.append(" cp.IsReconciled='N' AND cp.Processed='Y' AND cp.DocStatus NOT IN ('DR') AND cp.DateTrx <= ? AND cp.C_BankAccount_ID = ?),")
						.append(  m_C_BankStatement_ID)
						.append(");");
					psInsert = DB.prepareStatement(sql.toString(),trx.getTrxName());
					psInsert.setInt(1,m_C_BankStatement_ID);
					psInsert.setInt(2, statement_Final.getInt("C_BankAccount_ID"));
					psInsert.setInt(3,getAD_Client_ID());
					psInsert.setInt(4,statement_Final.getInt("AD_Org_ID"));
					psInsert.setInt(5,getAD_PInstance_ID());
					psInsert.setDate(6,statement_Final.getDate("StatementDate"));
					psInsert.setInt(7, statement_Final.getInt("C_BankAccount_ID"));
					
					
					psInsert.executeUpdate();
					
					//Insertando el Detalle de la Conciliacion
					//Movimientos Conciliados
					
					sql.delete(0, sql.length());
					
					sql.append("insert into T_ConciliationLine(AD_Client_ID,AD_Org_ID,AD_PInstance_ID,isreconciled,StatementDate,trxamt,stmtamt,C_Payment_ID,chargeamt,C_Charge_ID,ismanual,tendertype,c_bankstatementline_id)" +
								"Select "+
								"CBSL.ad_client_id, "+
								"CBSL.ad_org_id, "+
								"? as ad_pinstance_id, "+
								"'Y' isreconciled, "+
								"CBS.statementdate, "+
								"CBSL.trxamt, "+
								"CBSL.stmtamt, "+
								"CP.C_Payment_ID, "+
								"CBSL.chargeamt, "+
								"CBSL.c_charge_id, "+
								"CBSL.ismanual, "+
								"CP.tendertype, "+
								"CBSL.c_bankstatementline_id "+
								"From "+
								"c_bankstatement CBS "+ 
								"Inner Join c_bankstatementline CBSL On CBS.c_bankstatement_id=CBSL.c_bankstatement_id "+
								"Left Join C_Payment CP On CBSL.C_Payment_ID=CP.C_Payment_ID "+
								"Left Join C_Charge CCH On CBSL.c_charge_id=CCH.c_charge_id "+
								"Where "+ 
								"((/*CP.isreconciled='Y' And*/ CP.docstatus NOT IN ('DR')) Or CP.c_payment_id is null) "+
								" And CBS.c_bankstatement_id=? "+
								" /*And CBSL.processed='Y'*/");
					
					//Union
					sql.append(" union ");
					
					//Movimientos No Conciliados
					sql.append("Select "+ 
								"CP.ad_client_id,"+
								"CP.ad_org_id,"+
								"? as ad_pinstance_id,"+
								"'N' isreconciled,"+
								"CP.datetrx, "+
								"Case When CP.IsReceipt='Y' then CP.payamt else CP.payamt * -1 end as trxamt, "+
								"Case When CP.IsReceipt='Y' then CP.payamt else CP.payamt * -1 end as stmamt, "+
								"CP.c_payment_id, "+
								"0 as chargeamt, "+
								"null as c_charge_id, "+
								"'N' as ismanual, "+
								"CP.tendertype, "+
								"null  as c_bankstatementline "+
								"From "+
								"c_payment CP "+
								"Where "+
								"CP.isreconciled='N'/*not exists(Select 1 from c_bankstatement cbs inner join c_bankstatementline cbsl on cbs.c_bankstatement_id = cbsl.c_bankstatement_id Where cbsl.c_payment_id=CP.c_payment_id and cbs.statementdate<=? and cbs.c_bankaccount_id=CP.c_bankaccount_id)*/ " +
								" And CP.processed='Y' And CP.docstatus NOT IN ('DR') And CP.datetrx<=?"+
								" And CP.c_bankaccount_id=? "+
								"Order By 4 desc");
					
					psInsert = DB.prepareStatement(sql.toString(),trx.getTrxName());
					psInsert.setInt(1, getAD_PInstance_ID());
					psInsert.setInt(2,m_C_BankStatement_ID);
					psInsert.setInt(3,getAD_PInstance_ID());
					psInsert.setDate(4,statement_Final.getDate("statementdate"));
					//psInsert.setDate(5,rs_finalStatement.getDate("statementdate"));
					psInsert.setInt(5,m_C_BankAccount_ID);
					psInsert.executeUpdate();
					
					//Guardando
					trx.commit();
					DB.close(statement_Final, psInsert);
					System.out.println(sql);
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					trx.rollback();
					log.log(Level.SEVERE,e.getMessage().toString());
				}
			}
			else
				log.info(Msg.translate(Env.getCtx(),"NotReconciliation"));
		
	}

	private ResultSet GetBankStatementFinal()
	{
		PreparedStatement pstmt = null;
		pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = null;
		try {
			pstmt.setInt(1, m_C_BankStatement_ID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				;
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}		
		return rs;
	}
}
