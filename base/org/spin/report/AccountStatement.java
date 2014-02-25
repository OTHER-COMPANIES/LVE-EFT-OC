package org.spin.report;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author Yamel Senih 31/10/2011, 15:02:45
 *
 */
public class AccountStatement extends SvrProcess {

	/**	Organization			*/
	private int 		p_AD_Org_ID = 0;
	/**	Business Partner Group	*/
	//private int			p_C_BP_Group_ID = 0;
	/**	Business Partner		*/
	private int 		p_C_BPartner_ID = 0;

	/**	Documet Date 			*/
	private Timestamp	p_Date = null;
	/** Document Date To		*/
	private Timestamp	p_Date_To = null;
	/**	Is Sales Transaction	*/
	private boolean		p_IsSOTrx = false;
	
	/**	Parameter Where Clause	*/
	private StringBuffer		m_parameterWhere = new StringBuffer();
	
	/**	Start Time				*/
	private long 				m_start = System.currentTimeMillis();
	
	/**	C_BPartner_Location_ID   */
	private int 				p_C_BPartner_Location_ID = 0;
	
	/**	m_whereLocation   */
	private String				m_whereLocation = "";
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if (name.equals("IsSOTrx"))
				p_IsSOTrx = para.getParameterAsBoolean();
			else if (name.equals("DocumentDate")){
				p_Date = (Timestamp)para.getParameter();
				p_Date_To = (Timestamp)para.getParameter_To();
			}
			else if (name.equals("C_BPartner_Location_ID"))
				p_C_BPartner_Location_ID = para.getParameterAsInt();
			//else
				//log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		//	Current Date when Date To is Null
		if(p_Date_To== null){
			p_Date_To = new Timestamp(System.currentTimeMillis());
		}
		
		//	Optional Org
		if (p_AD_Org_ID != 0)
			m_parameterWhere.append(" AND fac.AD_Org_ID = " + p_AD_Org_ID);
		
		if (p_C_BPartner_Location_ID != 0)
			m_whereLocation = "AND fac.C_BPartner_Location_ID = " + p_C_BPartner_Location_ID + " " ;
	}	//	prepare
	

	@Override
	protected String doIt(){
		StringBuffer sql = new StringBuffer();
		//
		sql.append("SELECT " +
				getAD_Client_ID() + " AD_Client_ID, " +
				p_AD_Org_ID + " AD_Org_ID, " +
				"C_BP_Group_ID, " +
				"C_BPartner_ID, " +
				(p_IsSOTrx? "'Y'": "'N'") + ", " + 
				"0 C_Invoice_ID, " +
				"0 CreditMemo_ID, " +
				"0 C_CashLine_ID, " +
				"0 C_Cash_ID, " +
				"0 C_Payment_ID, " +
				"'" + Msg.translate(getCtx(), "PreviousBalance") + "' DocumentNo, " +
				"'' DocBaseType, " +
				DB.TO_DATE(p_Date, true) + " DocumentDate, " +
				"SUM(Debit) Debit, " +
				"SUM(Credit) Credit, " +
				"0 OrderBy, " +
				"0 SeqNo1, " +
				getAD_PInstance_ID() + " AD_PInstance_ID " +
				"FROM (");
		
		//	Select Invoice
		sql.append("SELECT " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				"coalesce(CASE WHEN doc.DocBaseType IN('ARI', 'API') AND fac.DateAcct < " + DB.TO_DATE(p_Date, true) + " THEN fac.GrandTotal ELSE 0 END, 0) Debit, " +
				"coalesce(CASE WHEN doc.DocBaseType IN('ARC', 'APC') AND fac.DateAcct < " + DB.TO_DATE(p_Date, true) + " THEN fac.GrandTotal ELSE 0 END, 0) Credit ");
		//	From
		sql.append("FROM C_Invoice fac " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = fac.C_BPartner_ID) " +
				"INNER JOIN C_BPartner_Location lcp ON(fac.C_BPartner_Location_ID = lcp.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON (lcp.C_Location_ID = loc.C_Location_ID) " +
				"INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"LEFT JOIN C_AllocationLine lap ON(lap.C_Invoice_ID = fac.C_Invoice_ID) " +
				"WHERE  fac.DocStatus IN ('CO', 'CL') AND fac.IspayScheduleValid <> 'Y' " +
				//"AND doc.DocBaseType NOT IN('ARC', 'APC') " + 
				"AND fac.DateAcct <= " + DB.TO_DATE(p_Date, true) + " " +
				"AND fac.IsSOTrx = " + (p_IsSOTrx? "'Y'": "'N'") + " " + 
				"AND fac.AD_Client_ID = " + getAD_Client_ID() + " " + 
				m_whereLocation +  
				"AND fac.C_BPartner_ID = " + p_C_BPartner_ID + " ");
		//	Clause Where Add
			sql.append(m_parameterWhere);
		//	Group By
		sql.append(" GROUP BY " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				"fac.C_Invoice_ID," +
				"doc.DocBaseType");
		//	Having
		sql.append(" HAVING (COUNT(lap.C_AllocationLine_ID) = 0 AND doc.DocBaseType IN('ARC', 'APC')) OR doc.DocBaseType IN('ARI', 'API')");

		//	Union
		sql.append(" UNION ALL ");
		
		//	Select Cash Journal and Payment
		sql.append("SELECT " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				"0 Debit, " +
				"	abs(coalesce(" +
				"			lap.Amount, 0" +
				"	) + " +
				"	coalesce(" +
				"		lap.DiscountAmt, 0" +
				"	)" +
				") Credit ");
		//	From
		sql.append("FROM C_Invoice fac " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = fac.C_BPartner_ID) " +
				"INNER JOIN C_BPartner_Location lcp ON(fac.C_BPartner_Location_ID = lcp.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON (lcp.C_Location_ID = loc.C_Location_ID) " +
				"INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"INNER JOIN C_AllocationLine lap ON (lap.C_Invoice_ID = fac.C_Invoice_ID) " +
				"INNER JOIN C_AllocationHDR asp ON(asp.C_AllocationHDR_ID = lap.C_AllocationHDR_ID) " +
				"LEFT JOIN C_Payment pa ON(pa.C_Payment_ID = lap.C_Payment_ID) " +
				"LEFT JOIN C_DocType pdoc ON(pdoc.C_DocType_ID = pa.C_DocType_ID) " +
				"LEFT JOIN C_CashLine lca ON(lca.C_CashLine_ID = lap.C_CashLine_ID) " +
				"LEFT JOIN C_Cash ca ON(ca.C_Cash_ID = lca.C_Cash_ID) " +
				"LEFT JOIN C_DocType cdoc ON(cdoc.C_DocType_ID = ca.C_DocTypeTarget_ID) " +
				"WHERE (lap.C_Payment_ID IS NOT NULL OR lap.C_CashLine_ID IS NOT NULL) " +
				"AND fac.DocStatus IN ('CO', 'CL') AND fac.IspayScheduleValid <> 'Y' " +
				"AND doc.DocBaseType NOT IN('ARC', 'APC') " +
				"AND asp.DocStatus IN ('CO', 'CL') " +
				"AND asp.DateAcct < " + DB.TO_DATE(p_Date, true) + " " +
				"AND fac.IsSOTrx = " + (p_IsSOTrx? "'Y'": "'N'") + " " + 
				"AND fac.AD_Client_ID = " + getAD_Client_ID() + " " + 
				m_whereLocation +  
				"AND fac.C_BPartner_ID = " + p_C_BPartner_ID + " ");
		//	Clause Where Add
		sql.append(m_parameterWhere);
		
		//	Union
		sql.append(" UNION ALL ");		
		
		//	Select Credit Memo
		sql.append("SELECT " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				"0 Debit, " +
				"abs(" +
				"	coalesce(" +
				"			lap.Amount, 0" +
				"			) + " +
				"	coalesce(" +
				"			lap.DiscountAmt, 0" +
				"			)" +
				") Credit ");
		
		//	From 
		sql.append("FROM (SELECT asp.C_AllocationHDR_ID, fac.C_Invoice_ID, lap.Amount, lap.DiscountAmt " +
				"		FROM C_AllocationHDR asp " +
				"		INNER JOIN C_AllocationLine lap ON(lap.C_AllocationHDR_ID = asp.C_AllocationHDR_ID) " +
				"		INNER JOIN C_Invoice fac ON(fac.C_Invoice_ID = lap.C_Invoice_ID) " +
				"		INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"		WHERE (lap.C_Payment_ID IS NULL AND lap.C_CashLine_ID IS NULL) " +
				"		AND doc.DocBaseType NOT IN('ARC', 'APC') " +
				"		AND fac.DocStatus IN ('CO', 'CL') AND fac.IspayScheduleValid <> 'Y' " +
				"		AND asp.DocStatus IN ('CO', 'CL') " +
				"		AND fac.DateAcct < " + DB.TO_DATE(p_Date, true) + " " +
				"		AND fac.IsSOTrx = " + (p_IsSOTrx? "'Y'": "'N'") + " " + 
				"		AND fac.AD_Client_ID = " + getAD_Client_ID() + " " + 
						m_whereLocation +  
				"		AND fac.C_BPartner_ID = " + p_C_BPartner_ID + ") alloc " +
				"INNER JOIN C_AllocationLine lap ON(lap.C_AllocationHDR_ID = alloc.C_AllocationHDR_ID) " +
				"INNER JOIN C_Invoice fac ON(fac.C_Invoice_ID = lap.C_Invoice_ID) " +
				"INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = fac.C_BPartner_ID) " +
				"INNER JOIN C_BPartner_Location lcp ON(fac.C_BPartner_Location_ID = lcp.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON (lcp.C_Location_ID = loc.C_Location_ID) " +
				"WHERE lap.C_Payment_ID IS NULL AND lap.C_CashLine_ID IS NULL " +
				"AND doc.DocBaseType IN('ARC', 'APC') " +
				"AND lap.C_Invoice_ID <> alloc.C_Invoice_ID ");

		//	Clause Where Add
		sql.append(m_parameterWhere);

		sql.append(") pv ");
		
		//	Group By
		sql.append(" GROUP BY " +
				"pv.C_BP_Group_ID, " +
				"pv.C_BPartner_ID ");
		
		//	Union
		sql.append(" UNION ALL ");
		
		//	Select Invoice*/
		sql.append("SELECT " +
				"fac.AD_Client_ID, " +
				"fac.AD_Org_ID, " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				(p_IsSOTrx? "'Y'": "'N'") + ", " + 
				"fac.C_Invoice_ID, " +
				"0 CreditMemo_ID, " +
				"0 C_CashLine_ID, " +
				"0 C_Cash_ID, " +
				"0 C_Payment_ID, " +
				"CASE WHEN doc.DocBaseType IN('ARC', 'APC') THEN '**=> ' || fac.DocumentNo ELSE fac.DocumentNo END, " +
				"doc.DocBaseType, " +
				"fac.DateAcct DocumentDate, " +
				"CASE WHEN doc.DocBaseType IN('ARI', 'API') THEN coalesce(fac.GrandTotal, 0) ELSE 0 END Debit, " +
				"CASE WHEN doc.DocBaseType IN('ARC', 'APC') THEN coalesce(fac.GrandTotal, 0) ELSE 0 END Credit, " +
				"1 OrderBy, " +
				"1 SeqNo1, " +
				getAD_PInstance_ID() + " AD_PInstance_ID ");
		//	From
		sql.append("FROM C_Invoice fac " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = fac.C_BPartner_ID) " +
				"INNER JOIN C_BPartner_Location lcp ON(fac.C_BPartner_Location_ID = lcp.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON (lcp.C_Location_ID = loc.C_Location_ID) " +
				"INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"LEFT JOIN C_AllocationLine lap ON(lap.C_Invoice_ID = fac.C_Invoice_ID) " +
				"WHERE  fac.DocStatus IN ('CO', 'CL') AND fac.IspayScheduleValid <> 'Y' " +
				//"AND doc.DocBaseType NOT IN('ARC', 'APC') " + 
				"AND fac.DateAcct >= " + DB.TO_DATE(p_Date, true) + " AND fac.DateAcct <= " + DB.TO_DATE(p_Date_To, true) + " " +
				"AND fac.IsSOTrx = " + (p_IsSOTrx? "'Y'": "'N'") + " " + 
				"AND fac.AD_Client_ID = " + getAD_Client_ID() + " " + 
				m_whereLocation +  
				"AND fac.C_BPartner_ID = " + p_C_BPartner_ID + " ");
		//	Clause Where Add
			sql.append(m_parameterWhere);
		//	Group By
		sql.append(" GROUP BY " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				"fac.C_Activity_ID, " +
				"fac.C_Invoice_ID," +
				"doc.DocBaseType");
		//	Having
		sql.append(" HAVING (COUNT(lap.C_AllocationLine_ID) = 0 AND doc.DocBaseType IN('ARC', 'APC')) OR doc.DocBaseType IN('ARI', 'API')");

		//	Union
		sql.append(" UNION ALL ");
		
		//	Select Cash Journal and Payment
		sql.append("SELECT " +
				"asp.AD_Client_ID, " +
				"asp.AD_Org_ID, " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				(p_IsSOTrx? "'Y'": "'N'") + ", " + 
				"lap.C_Invoice_ID, " +
				"0 CreditMemo_ID, " +
				"lca.C_CashLine_ID, " +
				"ca.C_Cash_ID, " +
				"pa.C_Payment_ID, " +
				"CASE " +
				"	WHEN ca.C_Cash_ID IS NOT NULL THEN ca.DocumentNo " +
				"	WHEN pa.C_Payment_ID IS NOT NULL THEN pa.DocumentNo " +
				"	ELSE NULL " +
				"END DocumentNo, " +
				"CASE " +
				"	WHEN cdoc.C_DocType_ID IS NOT NULL THEN cdoc.DocBaseType " +
				"	WHEN pdoc.C_DocType_ID IS NOT NULL THEN pdoc.DocBaseType " +
				"	ELSE NULL " +
				"END DocBaseType, " +
				"CASE " +
				"	WHEN ca.C_Cash_ID IS NOT NULL THEN ca.DateAcct " +
				"	WHEN pa.C_Payment_ID IS NOT NULL THEN pa.DateAcct " +
				"	ELSE NULL " +
				"END DocumentDate,	" +
				"0 Debit, " +
				"abs(" +
				"	coalesce(" +
				"			lap.Amount, 0" +
				"	) + " +
				"	coalesce(" +
				"		lap.DiscountAmt, 0" +
				"	)" +
				") Credit, " +
				"2 OrderBy ," +
				"1 SeqNo1, " +
				getAD_PInstance_ID() + " AD_PInstance_ID ");
		//	From
		sql.append("FROM C_Invoice fac " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = fac.C_BPartner_ID) " +
				"INNER JOIN C_BPartner_Location lcp ON(fac.C_BPartner_Location_ID = lcp.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON (lcp.C_Location_ID = loc.C_Location_ID) " +
				"INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"INNER JOIN C_AllocationLine lap ON (lap.C_Invoice_ID = fac.C_Invoice_ID) " +
				"INNER JOIN C_AllocationHDR asp ON(asp.C_AllocationHDR_ID = lap.C_AllocationHDR_ID) " +
				"LEFT JOIN C_Payment pa ON(pa.C_Payment_ID = lap.C_Payment_ID) " +
				"LEFT JOIN C_DocType pdoc ON(pdoc.C_DocType_ID = pa.C_DocType_ID) " +
				"LEFT JOIN C_CashLine lca ON(lca.C_CashLine_ID = lap.C_CashLine_ID) " +
				"LEFT JOIN C_Cash ca ON(ca.C_Cash_ID = lca.C_Cash_ID) " +
				"LEFT JOIN C_DocType cdoc ON(cdoc.C_DocType_ID = ca.C_DocTypeTarget_ID) " +
				"WHERE (lap.C_Payment_ID IS NOT NULL OR lap.C_CashLine_ID IS NOT NULL) " +
				"AND fac.DocStatus IN ('CO', 'CL') AND fac.IspayScheduleValid <> 'Y' " +
				"AND doc.DocBaseType NOT IN('ARC', 'APC') " +
				"AND asp.DocStatus IN ('CO', 'CL') " +
				"AND asp.DateAcct >= " + DB.TO_DATE(p_Date, true) + " AND asp.DateAcct <= " + DB.TO_DATE(p_Date_To, true) + " " +
				"AND fac.IsSOTrx = " + (p_IsSOTrx? "'Y'": "'N'") + " " + 
				"AND fac.AD_Client_ID = " + getAD_Client_ID() + " " + 
				m_whereLocation +  
				"AND fac.C_BPartner_ID = " + p_C_BPartner_ID + " ");
		//	Clause Where Add
		sql.append(m_parameterWhere);
		
		//	Union
		sql.append(" UNION ALL ");		
		
		//	Select Credit Memo
		sql.append("SELECT " +
				"fac.AD_Client_ID, " +
				"fac.AD_Org_ID, " +
				"cp.C_BP_Group_ID, " +
				"cp.C_BPartner_ID, " +
				(p_IsSOTrx? "'Y'": "'N'") + ", " + 
				"alloc.C_Invoice_ID, " +
				"fac.C_Invoice_ID CreditMemo_ID, " +
				"0 C_CashLine_ID, " +
				"0 C_Cash_ID, " +
				"0 C_Payment_ID, " +
				"fac.DocumentNo, " +
				"doc.DocBaseType, " +
				"fac.DateAcct DocumentDate, " +
				"0 Debit, " +
				"abs(" +
				"	coalesce(" +
				"			lap.Amount, 0" +
				"			) + " +
				"	coalesce(" +
				"			lap.DiscountAmt, 0" +
				"			)" +
				") Credit, " +
				"2 OrderBy ," +
				"1 SeqNo1, " +
				getAD_PInstance_ID() + " AD_PInstance_ID ");
		
		//	From 
		sql.append("FROM (SELECT asp.C_AllocationHDR_ID, fac.C_Invoice_ID, lap.Amount, lap.DiscountAmt " +
				"		FROM C_AllocationHDR asp " +
				"		INNER JOIN C_AllocationLine lap ON(lap.C_AllocationHDR_ID = asp.C_AllocationHDR_ID) " +
				"		INNER JOIN C_Invoice fac ON(fac.C_Invoice_ID = lap.C_Invoice_ID) " +
				"		INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"		WHERE (lap.C_Payment_ID IS NULL AND lap.C_CashLine_ID IS NULL) " +
				"		AND doc.DocBaseType NOT IN('ARC', 'APC') " +
				"		AND fac.DocStatus IN ('CO', 'CL') AND fac.IspayScheduleValid <> 'Y' " +
				"		AND asp.DocStatus IN ('CO', 'CL') " +
				"		AND fac.DateAcct >= " + DB.TO_DATE(p_Date, true) + " AND fac.DateAcct <= " + DB.TO_DATE(p_Date_To, true) + " " +
				"		AND fac.IsSOTrx = " + (p_IsSOTrx? "'Y'": "'N'") + " " + 
				"		AND fac.AD_Client_ID = " + getAD_Client_ID() + " " + 
						m_whereLocation +  
				"		AND fac.C_BPartner_ID = " + p_C_BPartner_ID + ") alloc " +
				"INNER JOIN C_AllocationLine lap ON(lap.C_AllocationHDR_ID = alloc.C_AllocationHDR_ID) " +
				"INNER JOIN C_Invoice fac ON(fac.C_Invoice_ID = lap.C_Invoice_ID) " +
				"INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = fac.C_BPartner_ID) " +
				"INNER JOIN C_BPartner_Location lcp ON(fac.C_BPartner_Location_ID = lcp.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON (lcp.C_Location_ID = loc.C_Location_ID) " +
				"WHERE lap.C_Payment_ID IS NULL AND lap.C_CashLine_ID IS NULL " +
				"AND doc.DocBaseType IN('ARC', 'APC') " +
				"AND lap.C_Invoice_ID <> alloc.C_Invoice_ID ");

		//	Clause Where Add
		sql.append(m_parameterWhere);
		
		//	Order By
		sql.append(" ORDER BY SeqNo1, DocumentDate, C_Invoice_ID, OrderBy ");
		//*/
		log.fine("SQL = " + sql.toString());
		//System.err.println(sql);
		//int i = 1;
		try{
			//	Insert Header
			insertHeader();
			
			PreparedStatement pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			
			//	Evaluation
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				BigDecimal v_Debit = Env.ZERO;
				BigDecimal v_DebitSumm = Env.ZERO;
				BigDecimal v_Credit = Env.ZERO;
				BigDecimal v_CreditSumm = Env.ZERO;
				BigDecimal v_Balance = Env.ZERO;
				BigDecimal v_LinealBalance = Env.ZERO;
				
				do {
					v_Debit = rs.getBigDecimal("Debit");
					v_Credit = rs.getBigDecimal("Credit");
					
					//	Summary End Balance
					v_DebitSumm = v_DebitSumm.add(v_Debit);
					v_CreditSumm = v_CreditSumm.add(v_Credit);
					
					//	Calculo de Balance
					v_LinealBalance = v_Debit.subtract(v_Credit);
					v_Balance = v_Balance.add(v_LinealBalance);
					
					//	Sql Insert

					String sqlInsert = new String("INSERT INTO T_LVE_AccountStatement(" +
							"AD_Client_ID, " +
							"AD_Org_ID, " +
							"C_BP_Group_ID, " +
							"C_BPartner_ID, " +
							"IsSOTrx, " +
							"C_Invoice_ID, " +
							"CreditMemo_ID, " +
							"C_CashLine_ID, " +
							"C_Cash_ID, " +
							"C_Payment_ID, " +
							"DocumentNo, " +
							"DocBaseType, " +
							"DocumentDate, " +
							"Debit, " +
							"Credit, " +
							"Balance, " +
							"LinealBalance, " +
							"SeqNo, " +
							"SeqNo1," +
							"C_BPartner_Location_ID ," +
							"AD_PInstance_ID) " +
							"VALUES(" +
							rs.getInt("AD_Client_ID") + "," +
							rs.getInt("AD_Org_ID") + "," +
							rs.getInt("C_BP_Group_ID") + "," +
							rs.getInt("C_BPartner_ID") + "," +
							"'" + rs.getString(5) + "'," +
							rs.getInt("C_Invoice_ID") + "," +
							rs.getInt("CreditMemo_ID") + "," +
							rs.getInt("C_CashLine_ID") + "," +
							rs.getInt("C_Cash_ID") + "," +
							rs.getInt("C_Payment_ID") + "," +
							"'" + rs.getString("DocumentNo") + "'," +
							"'" + rs.getString("DocBaseType") + "'," +
							"'" + rs.getDate("DocumentDate") + "'," +
							v_Debit + "," +
							v_Credit + "," +
							v_Balance + "," +
							v_LinealBalance + "," +
							rs.getInt("OrderBy") + "," +
							rs.getInt("seqNo1") + "," +
							p_C_BPartner_Location_ID + "," +
							rs.getInt("AD_PInstance_ID") + ")");
					
					//System.out.println(sqlInsert);
					
					DB.executeUpdate(sqlInsert, get_TrxName());
					
				} while(rs.next());
				
				String sqlInsert = new String("INSERT INTO T_LVE_AccountStatement(" +
						"AD_Client_ID, " +
						"AD_Org_ID, " +
						"C_BPartner_ID, " +
						"IsSOTrx, " +
						"DocumentNo, " +
						"DocumentDate, " +
						"Debit, " +
						"Credit, " +
						"Balance, " +
						"LinealBalance, " +
						"SeqNo, " +
						"SeqNo1," +
						"C_BPartner_Location_ID ," +
						"AD_PInstance_ID) " +
						"VALUES(" +
						getAD_Client_ID() + ", " +
						p_AD_Org_ID + ", " +
						p_C_BPartner_ID + ", " + 
						(p_IsSOTrx? "'Y'": "'N'") + ", " + 
						"'" + Msg.translate(getCtx(), "EndBalance") + "', " +
						"?, " +
						v_DebitSumm + ", " +
						v_CreditSumm + ", " +
						v_Balance + ", " +
						v_LinealBalance + ", " +
						"3, " +
						"2, " +
						p_C_BPartner_Location_ID + "," +
						getAD_PInstance_ID() +
						")");
				
				DB.executeUpdateEx(sqlInsert, new Object[] {p_Date_To}, get_TrxName());
				
			}
			
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
			if (rs != null)
				rs.close ();
			rs = null;
	
		} catch(Exception e){
			throw new AdempiereException(e);
		}
		
		log.fine((System.currentTimeMillis() - m_start) + " ms");
		
		return "@Created@ = ";// + noInserts;
	}	//	doIt

	
	/**
	 * Inserta el Registro del encabezado
	 * @author Yamel Senih 09/06/2012, 16:32:15
	 * @throws SQLException
	 * @return void
	 */
	private void insertHeader() throws SQLException{
		
		StringBuffer sqlMorosidad = new StringBuffer("" +
				"SELECT " +
				"SUM(CASE WHEN DaysDue < 0 THEN F_P ELSE 0 END) CurrentBalance, " +
				"SUM(CASE WHEN DaysDue BETWEEN 0 AND 30 THEN F_P ELSE 0 END) Due0_30, " +
				"SUM(CASE WHEN DaysDue BETWEEN 31 AND 60 THEN F_P ELSE 0 END) Due31_60, " +
				"SUM(CASE WHEN DaysDue BETWEEN 61 AND 90 THEN F_P ELSE 0 END) Due61_90, " +
				"SUM(CASE WHEN DaysDue BETWEEN 91 AND 120 THEN F_P ELSE 0 END) Due91_120, " +
				"SUM(CASE WHEN DaysDue >= 120 THEN F_P ELSE 0 END) PastDue121 ");
		
		sqlMorosidad.append("FROM (SELECT " +
				"CASE " +
				"WHEN Doc.DocBaseType IN('ARC', 'APC') " +
				"	THEN fac.GrandTotal * -1 " +
				"	ELSE fac.GrandTotal " +
				"END InvoiceAmt,");
		
		sqlMorosidad.append("cpa.NetDays, " +
				"fac.DateInvoiced + cpa.NetDays as DueDate," +
				"(? - (fac.DateInvoiced + cpa.NetDays)) DaysDue, ");
		//	Total Open
		sqlMorosidad.append("ROUND(" +
				"CASE " +
				"	WHEN Doc.DocBaseType IN('ARC', 'APC') " +
				"	THEN fac.GrandTotal * -1 " +
				"	ELSE fac.GrandTotal	" +
				"END " +
				" + " +
				"SUM(" +
				"	coalesce(" +
				"			CASE " +
				"				WHEN apa.DateAcct <= " + DB.TO_DATE(p_Date_To, true) + " AND apa.DocStatus IN ('CO', 'CL') " +
				"				THEN lpa.Amount " +
				"				ELSE 0 " +
				"			END, 0)" +
				" + " +
				"	coalesce(" +
				"			CASE " +
				"				WHEN apa.DateAcct <= " + DB.TO_DATE(p_Date_To, true) + " AND apa.DocStatus IN ('CO', 'CL') " +
				"				THEN lpa.DiscountAmt " +
				"				ELSE 0 " +
				"			END, 0)" +
				"	) * " +
				"	(CASE " +
				"		WHEN fac.IsSOTrx = 'Y' " +
				"		THEN -1 " +
				"		ELSE 1 " +
				"	END), " +
				"2) F_P,");
		//	Payment Amount
		sqlMorosidad.append("ROUND(" +
				"SUM(" +
				"	coalesce(" +
				"			CASE " +
				"				WHEN apa.DateAcct <= " + DB.TO_DATE(p_Date_To, true) + " AND apa.DocStatus IN ('CO', 'CL') " +
				"				THEN lpa.Amount	" +
				"				ELSE 0 " +
				"			END, 0)" +
				" + " +
				"	coalesce(" +
				"			CASE " +
				"				WHEN apa.DateAcct <= " + DB.TO_DATE(p_Date_To, true) + " AND apa.DocStatus IN ('CO', 'CL') " +
				"				THEN lpa.DiscountAmt " +
				"				ELSE 0 " +
				"			END, 0)" +
				"	), 2) PayAmt,");
		//	Payment Date
		sqlMorosidad.append("MAX(apa.DateAcct) PayDate ");
		//	Tables
		sqlMorosidad.append("FROM C_Invoice fac " +
				"INNER JOIN C_BPartner cp ON(cp.C_BPartner_ID = fac.C_BPartner_ID) " +
				"INNER JOIN C_BPartner_Location lcp ON(fac.C_BPartner_Location_ID = lcp.C_BPartner_Location_ID) " +
				"INNER JOIN C_Location loc ON (lcp.C_Location_ID = loc.C_Location_ID) " +
				"INNER JOIN M_PriceList lsp ON(lsp.M_PriceList_ID = fac.M_PriceList_ID) " +
				"INNER JOIN C_PaymentTerm cpa ON(cpa.C_PaymentTerm_ID = fac.C_PaymentTerm_ID) " +
				"INNER JOIN C_DocType doc ON(doc.C_DocType_ID = fac.C_DocType_ID) " +
				"LEFT JOIN C_AllocationLine lpa ON (lpa.C_Invoice_ID = fac.C_Invoice_ID) " +
				"LEFT JOIN C_AllocationHDR apa ON (apa.C_AllocationHDR_ID = lpa.C_AllocationHDR_ID) " +
				"LEFT JOIN C_Order ord ON(ord.C_Order_ID = fac.C_Order_ID) ");
		//	Where
		sqlMorosidad.append("WHERE  fac.DocStatus IN ('CO', 'CL') " +
				"AND fac.IspayScheduleValid <> 'Y' " +
				"AND fac.DateInvoiced <= " + DB.TO_DATE(p_Date_To, true) + " " + 
				"AND fac.IsSOTrx = " + (p_IsSOTrx? "'Y'": "'N'") + " " + 
				"AND fac.AD_Client_ID = " + getAD_Client_ID() + " ");
		//	Location
		sqlMorosidad.append(m_whereLocation);
		//	Clause Where Add
		sqlMorosidad.append(m_parameterWhere);
		//	Business Partner Data
		sqlMorosidad.append("AND fac.C_BPartner_ID = " + p_C_BPartner_ID + " ");
		//	Group By
		sqlMorosidad.append("GROUP BY " + 
				"fac.C_Invoice_ID, " +
				"Doc.DocBaseType, " +
				"fac.GrandTotal, " +
				"cpa.NetDays ");

			sqlMorosidad.append(") mor ");
			
			//System.out.println(sqlMorosidad);
			
			PreparedStatement pstmt = DB.prepareStatement (sqlMorosidad.toString(), get_TrxName());
			
			pstmt.setTimestamp(1, p_Date_To);
			
			//System.out.println("AccountStatement.insertHeader() " + sqlMorosidad);
			
			ResultSet rs = pstmt.executeQuery();
			
			BigDecimal v_CurrentBalance = Env.ZERO;
			BigDecimal v_Due0_30 = Env.ZERO;
			BigDecimal v_Due31_60 = Env.ZERO;
			BigDecimal v_Due61_90 = Env.ZERO;
			BigDecimal v_Due91_120 = Env.ZERO;
			BigDecimal v_PastDue121 = Env.ZERO;
			
			if(rs.next()){
				v_CurrentBalance = rs.getBigDecimal("CurrentBalance");
				v_Due0_30 = rs.getBigDecimal("Due0_30");
				v_Due31_60 = rs.getBigDecimal("Due31_60");
				v_Due61_90 = rs.getBigDecimal("Due61_90");
				v_Due91_120 = rs.getBigDecimal("Due91_120");
				v_PastDue121 = rs.getBigDecimal("PastDue121");
			}
			
			String sqlInsertHeader = new String("" +
					"INSERT INTO T_LVE_AccountStatementHeader(" +
					"AD_Client_ID, " +
					"AD_Org_ID, " +
					"C_BPartner_ID, " +
					"DateFrom, " +
					"DateTo, " +
					"IsSOTrx, " +
					"CurrentBalance, " +
					"Due0_30, " +
					"Due31_60, " +
					"Due61_90, " +
					"Due91_120, " +
					"PastDue121, " +
					"Created, " +
					"CreatedBy, " +
					"C_BPartner_Location_ID ," +
					"AD_PInstance_ID" +
					") " +
					"VALUES(" +
					getAD_Client_ID() + ", " + 
					p_AD_Org_ID + ", " + 
					p_C_BPartner_ID + ", " + 
					"?, " +
					"?, " +
					(p_IsSOTrx? "'Y'": "'N'") + ", " +
					v_CurrentBalance + ", " + 
					v_Due0_30 + ", " + 
					v_Due31_60 + ", " + 
					v_Due61_90 + ", " + 
					v_Due91_120 + ", " + 
					v_PastDue121 + ", " + 
					"?, " +
					getAD_User_ID() + ", " +
					p_C_BPartner_Location_ID + "," +
					getAD_PInstance_ID() +
					")");
			
			DB.executeUpdateEx(sqlInsertHeader, new Object[] {p_Date, p_Date_To, new Timestamp(System.currentTimeMillis())}, get_TrxName());
	}
	
}
