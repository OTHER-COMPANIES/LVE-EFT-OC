CREATE TABLE T_Conciliation  (	
    c_bankstatement_id      	numeric(10,0) NULL,
    c_bankaccount_id        	numeric(10,0) NULL,
    ad_client_id            	numeric(10,0) NULL,
    ad_org_id               	numeric(10,0) NULL,
    ad_pinstance_id         	numeric(10,0) NULL,
    amountnotreconciled     	numeric(10,0) NULL,
    T_Conciliation_id	numeric(10,0) NULL 
    );

ALTER TABLE T_Conciliation
    ADD CONSTRAINT fk_T_Conciliation_c_bankaccount
	FOREIGN KEY(c_bankaccount_id)
	REFERENCES c_bankaccount(c_bankaccount_id)
	MATCH SIMPLE
	ON DELETE RESTRICT 
	ON UPDATE CASCADE;

CREATE TABLE T_Conciliationline  ( 
    ad_client_id          	numeric(10,0) NULL,
    ad_org_id             	numeric(10,0) NULL,
    ad_pinstance_id       	numeric(10,0) NULL,
    isreconciled          	char(1) NULL,
    statementdate         	timestamp NULL,
    trxamt                	numeric NULL,
    stmtamt               	numeric NULL,
    c_payment_id          	numeric(10,0) NULL,
    chargeamt             	numeric NULL,
    c_charge_id           	numeric(10,0) NULL,
    ismanual              	char(1) NULL,
    tendertype            	char(1) NULL,
    c_bankstatementline_id	numeric(10,0) NULL,
    T_Conciliationline_ID numeric(10,0)
    );

CREATE VIEW LVE_RV_Conciliation AS
SELECT 
	cl.ad_client_id, 
	cl.ad_org_id, 
	cl.isreconciled, 
	cl.tendertype,
	SUM(cl.trxamt) AS trxamt, 
	SUM(cl.stmtamt) AS stmtamt,
	cl.ad_pinstance_id 
FROM T_Conciliationline cl
GROUP BY 
	cl.ad_pinstance_id,
	cl.isreconciled, 
	cl.tendertype, 
	cl.ad_client_id, 
	cl.ad_org_id
ORDER BY
	cl.ad_pinstance_id;
