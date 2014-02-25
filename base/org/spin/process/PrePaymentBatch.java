/*************************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                              *
 * This program is free software; you can redistribute it and/or modify it           *
 * under the terms version 2 of the GNU General Public License as published          *
 * by the Free Software Foundation. This program is distributed in the hope          *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  *
 * See the GNU General Public License for more details.                              *
 * You should have received a copy of the GNU General Public License along           *
 * with this program; if not, write to the Free Software Foundation, Inc.,           *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                            *
 * For the text or an alternative of this public license, you may reach us           *
 * Copyright (C) 2012-2013 E.R.P. Consultores y Asociados, S.A. All Rights Reserved. *
 * Contributor(s): Carlos Parada www.erpconsultoresyasociados.com                    *
 *************************************************************************************/
package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MPayment;
import org.compiere.model.MPaymentBatch;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 
 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
 *
 */
public class PrePaymentBatch extends SvrProcess {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		for(ProcessInfoParameter para : getParameter()){
			String name = para.getParameterName();
			if(para.getParameter() == null)
				;
			else if(name.equals("ProcessingDate"))
				processingDate = (Timestamp) para.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);				
		}
		/**
		 * SQL for Load Data From Browse Pre-Payment Batch
		 */
		
		sql = "Select Distinct ts.T_Selection_ID,Min(C_PaymentProcessor_ID) As C_PaymentProcessor_ID \n " +  
				"From T_Selection ts \n " +
				"Inner Join C_Payment cp On TS.T_Selection_ID = cp.C_Payment_ID \n" +
				"Inner Join C_BankAccount cba On cp.C_BankAccount_ID = cba.C_BankAccount_ID \n" +
				"Left Join C_PaymentProcessor cpp On cpp.C_BankAccount_ID = cba.C_BankAccount_ID \n" +
				"Where ts.AD_PInstance_ID = ? \n " +
				"Group By ts.T_Selection_ID \n"+
				"Order By ts.T_Selection_ID";
		log.fine("SQL Declare Retentions=" + sql);
		
	
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps =null;
		ResultSet rs = null;
		
		ps = DB.prepareStatement(sql,get_TrxName());
		ps.setInt(1, getAD_PInstance_ID());
		rs = ps.executeQuery();
		
		MPaymentBatch pb = new MPaymentBatch(getCtx(), 0, get_TrxName());
		pb.setName(Msg.translate(getCtx(), "Created") + " " + Env.getContext(getCtx(), "#AD_User_Name"));
		pb.saveEx(get_TrxName());
		while (rs.next())
		{
			if (pb.getC_PaymentProcessor_ID() == 0)
				pb.setC_PaymentProcessor_ID(rs.getInt("C_PaymentProcessor_ID"));
			MPayment m_pay = new MPayment(getCtx(),rs.getInt("T_Selection_ID") , get_TrxName());
			m_pay.setC_PaymentBatch_ID( pb.getC_PaymentBatch_ID());			
			pb.setProcessingDate(processingDate);
			m_pay.save(get_TrxName());
			
		}
		
		pb.save(get_TrxName());
		rs.close();
		ps.close();
		
		addLog (pb.getC_PaymentBatch_ID(), pb.getUpdated(), null, 
				pb.getDocumentNo());
		
		return "@Created@" + " " +  pb.getDocumentNo();
	}
	/**	Logger							*/
	public static CLogger log = CLogger.getCLogger(PrePaymentBatch.class);
	/** Bank Account */
	int p_C_BankAccount_ID=0;
	/** Sentence SQL */
	String sql= new String();
	/**Transaction */
	
	/**ProcessingDate*/
	Timestamp processingDate;
	
}
