--DROP VIEW T_LVE_RV_AccountStatement;
CREATE OR REPLACE VIEW T_LVE_RV_AccountStatement AS 
SELECT 
	ast.ad_client_id, 
	ast.ad_org_id, 
	oi.C_Location_ID AS Org_Location_ID,
	oi.TaxID,
	ast.ad_pinstance_id, 
	ast.balance, 
	ast.c_bp_group_id, 
	ast.c_bpartner_id, 
	ast.c_cash_id, 
	ast.c_cashline_id, 
	ast.c_invoice_id, 
	ast.c_payment_id, 
	ast.credit, 
	ast.creditmemo_id, 
	ast.debit, 
	ast.docbasetype, 
	ast.documentdate, 
	ast.documentno, 
	ast.issotrx, 
	ast.linealbalance, 
	ast.seqno, 
	ast.seqno1, 
	ord.poreference
FROM T_LVE_AccountStatement ast
LEFT JOIN c_invoice inv ON inv.c_invoice_id = ast.c_invoice_id
LEFT JOIN c_order ord ON ord.c_order_id = inv.c_order_id
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = ast.AD_Org_ID ) ;

