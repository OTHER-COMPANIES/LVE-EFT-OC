--DROP VIEW T_LVE_RV_AccountStatementHeader;
CREATE OR REPLACE VIEW T_LVE_RV_AccountStatementHeader AS 
SELECT 
	ash.ad_client_id, 
	ash.ad_org_id, 	
	oi.C_Location_ID AS Org_Location_ID,
	oi.TaxID,
	ash.ad_pinstance_id, 
	ash.c_bp_group_id, 
	ash.c_bpartner_id, 
	ash.created, 
	ash.createdby, 
	ash.currentbalance, 
	ash.datefrom, 
	ash.dateto, 
	ash.due0_30, 
	ash.due31_60, 
	ash.due61_90, 
	ash.due91_120,
	ash.issotrx, 
	ash.pastdue121, 
	bp.socreditstatus, 
	bp.so_creditlimit, 
	bp.so_creditused, 
	bp.C_PaymentTerm_ID,
	COALESCE(bp.TaxID,bp.Value) AS BPTaxID,
	bp.Name AS BPName,
	bp.Name2 AS BPName2,
	bpl.C_BPartner_Location_ID
FROM T_LVE_AccountStatementHeader ash
JOIN C_BPartner bp ON (bp.C_BPartner_ID = ash.C_BPartner_ID)
LEFT JOIN c_bpartner_location bpl ON (bpl.C_BPartner_ID = bp.C_BPartner_ID )
LEFT JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = ash.AD_Org_ID ) ;
/*
SELECT Name, Password
FROM AD_User
WHERE Name LIKE '%SuperUser%'*/