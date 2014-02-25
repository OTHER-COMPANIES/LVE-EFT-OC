-- May 14, 2013 12:40:40 PM VET
-- RRHH LVE
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000206,'org.erpca.process.PrePaymentBatch','N',TO_DATE('2013-05-14 12:40:34','YYYY-MM-DD HH24:MI:SS'),100,'Pre-Payment Batch','ECA02','Pre-Payment Batch','Y','N','N','N','N','Pre-Payment Batch','Y',5,157,TO_DATE('2013-05-14 12:40:34','YYYY-MM-DD HH24:MI:SS'),100,'prc_PrePaymentBatch')
;

-- May 14, 2013 12:40:40 PM VET
-- RRHH LVE
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- May 14, 2013 12:41:19 PM VET
-- RRHH LVE
UPDATE AD_Process_Trl SET Name='Lote de Anticipos',Description='Lote de Anticipos',Help='Lote de Anticipos',Updated=TO_DATE('2013-05-14 12:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000206 AND AD_Language='es_MX'
;

-- May 14, 2013 12:42:24 PM VET
-- RRHH LVE
UPDATE AD_View SET Description='Payments', Help='Payments', Name='Payments', Value='VW_Payment',Updated=TO_DATE('2013-05-14 12:42:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=3000200
;

-- May 14, 2013 12:42:24 PM VET
-- RRHH LVE
UPDATE AD_View_Trl SET IsTranslated='N' WHERE AD_View_ID=3000200
;

-- May 14, 2013 12:42:42 PM VET
-- RRHH LVE
UPDATE AD_View_Trl SET Name='Pagos',Description='Pagos',Help='Pagos',Updated=TO_DATE('2013-05-14 12:42:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=3000200
;

-- May 14, 2013 12:44:16 PM VET
-- RRHH LVE
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value,WhereClause) VALUES ('3',3000202,0,0,3000206,3000200,TO_DATE('2013-05-14 12:44:11','YYYY-MM-DD HH24:MI:SS'),100,'Pre-Payment Batch','ECA02','Pre-Payment Batch','Y','N','Pre-Payment Batch','N',TO_DATE('2013-05-14 12:44:11','YYYY-MM-DD HH24:MI:SS'),100,'SB_PrePaymentBatch','C_Order_ID Is Not Null  And C_PaymentBatch_ID Is Not Null And IsPrePayment=''Y'' And IsReceipt=''N''')
;

-- May 14, 2013 12:44:16 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- May 14, 2013 2:56:02 PM VET
-- RRHH LVE
UPDATE AD_Browse SET WhereClause='TenderType = ''K'' And IsReceipt=''N'' And PayConfirm_ID Is Null And 
(DocStatus In (''CO'',''CL'') 
Or
C_Payment_ID In (Select CP.C_Payment_ID From C_Payment CP Where CP.DocStatus=''RE'' And CP.Reversal_ID<>C_Payment_ID)
)',Updated=TO_DATE('2013-05-14 14:56:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=3000201
;

-- May 14, 2013 2:57:03 PM VET
-- RRHH LVE
UPDATE AD_Browse_Trl SET Name='Lote de Anticipos',Description='Lote de Anticipos',Help='Lote de Anticipos',Updated=TO_DATE('2013-05-14 14:57:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=3000202 AND AD_Language='es_MX'
;

-- May 14, 2013 2:57:14 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000339,3000202,0,840,0,10,3000222,TO_DATE('2013-05-14 14:57:12','YYYY-MM-DD HH24:MI:SS'),100,'Account Number','ECA02','The Account Number indicates the Number assigned to this bank account. ','Y','N','N','N','N','N','N','Account No',10,TO_DATE('2013-05-14 14:57:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:14 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000339 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:15 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000340,3000202,0,1350,0,10,3000223,TO_DATE('2013-05-14 14:57:14','YYYY-MM-DD HH24:MI:SS'),100,'City or the Credit Card or Account Holder','ECA02','The Account City indicates the City of the Credit Card or Account holder','Y','N','N','N','N','N','N','Account City',11,TO_DATE('2013-05-14 14:57:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:15 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000340 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:17 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000341,3000202,0,1988,0,10,3000224,TO_DATE('2013-05-14 14:57:15','YYYY-MM-DD HH24:MI:SS'),100,'Country','ECA02','Account Country Name','Y','N','N','N','N','N','N','Account Country',12,TO_DATE('2013-05-14 14:57:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:17 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000341 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:18 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000342,3000202,0,102,0,19,3000225,TO_DATE('2013-05-14 14:57:17','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',13,TO_DATE('2013-05-14 14:57:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:18 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000342 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:19 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000343,3000202,0,113,0,19,3000226,TO_DATE('2013-05-14 14:57:18','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',14,TO_DATE('2013-05-14 14:57:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:19 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000343 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:20 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000344,3000202,0,1415,0,10,3000283,TO_DATE('2013-05-14 14:57:19','YYYY-MM-DD HH24:MI:SS'),100,'Purchase Order Number','ECA02','The PO Number indicates the number assigned to a purchase order','Y','N','N','N','N','N','N','PO Number',15,TO_DATE('2013-05-14 14:57:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:20 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000344 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:21 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000345,3000202,0,112,0,18,130,3000227,TO_DATE('2013-05-14 14:57:20','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','N','N','N','N','N','N','Trx Organization',16,TO_DATE('2013-05-14 14:57:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:21 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000345 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:23 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000346,3000202,0,1351,0,10,3000228,TO_DATE('2013-05-14 14:57:21','YYYY-MM-DD HH24:MI:SS'),100,'Email Address','ECA02','The EMail Address indicates the EMail address off the Credit Card or Account holder.','Y','N','N','N','N','N','N','Account EMail',17,TO_DATE('2013-05-14 14:57:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:23 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000346 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:24 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000347,3000202,0,1352,0,10,3000229,TO_DATE('2013-05-14 14:57:23','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Driver License','ECA02','The Driver''s License being used as identification.','Y','N','N','N','N','N','N','Driver License',18,TO_DATE('2013-05-14 14:57:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:24 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000347 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:25 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000348,3000202,0,1353,0,10,3000230,TO_DATE('2013-05-14 14:57:24','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Social Security No','ECA02','The Social Security number being used as identification.','Y','N','N','N','N','N','N','Social Security No',19,TO_DATE('2013-05-14 14:57:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:25 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000348 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:26 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000349,3000202,0,1354,0,10,3000231,TO_DATE('2013-05-14 14:57:25','YYYY-MM-DD HH24:MI:SS'),100,'Name on Credit Card or Account holder','ECA02','The Name of the Credit Card or Account holder.','Y','N','Y','N','N','N','N','Account Name',20,TO_DATE('2013-05-14 14:57:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:26 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000349 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:27 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000350,3000202,0,1355,0,10,3000232,TO_DATE('2013-05-14 14:57:26','YYYY-MM-DD HH24:MI:SS'),100,'State of the Credit Card or Account holder','ECA02','The State of the Credit Card or Account holder','Y','N','N','N','N','N','N','Account State',21,TO_DATE('2013-05-14 14:57:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:27 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000350 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:29 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000351,3000202,0,1356,0,10,3000233,TO_DATE('2013-05-14 14:57:27','YYYY-MM-DD HH24:MI:SS'),100,'Street address of the Credit Card or Account holder','ECA02','The Street Address of the Credit Card or Account holder.','Y','N','N','N','N','N','N','Account Street',22,TO_DATE('2013-05-14 14:57:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:29 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000351 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:30 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000352,3000202,0,1357,0,10,3000234,TO_DATE('2013-05-14 14:57:29','YYYY-MM-DD HH24:MI:SS'),100,'Zip Code of the Credit Card or Account Holder','ECA02','The Zip Code of the Credit Card or Account Holder.','Y','N','N','N','N','N','N','Account Zip/Postal',23,TO_DATE('2013-05-14 14:57:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:30 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000352 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:31 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000353,3000202,0,1005,0,19,3000235,TO_DATE('2013-05-14 14:57:30','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity','ECA02','Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','N','N','N','N','N','N','Activity',24,TO_DATE('2013-05-14 14:57:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:31 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000353 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:33 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000354,3000202,0,836,0,19,3000236,TO_DATE('2013-05-14 14:57:31','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','ECA02','The Bank Account identifies an account at this Bank.','Y','N','N','N','N','N','N','Bank Account',25,TO_DATE('2013-05-14 14:57:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:33 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000354 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:34 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000355,3000202,0,187,0,30,3000237,TO_DATE('2013-05-14 14:57:33','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',26,TO_DATE('2013-05-14 14:57:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:34 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000355 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:35 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000356,3000202,0,837,0,19,3000238,TO_DATE('2013-05-14 14:57:34','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner','ECA02','The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','N','N','N','N','N','N','Partner Bank Account',27,TO_DATE('2013-05-14 14:57:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:35 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000356 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:37 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000357,3000202,0,550,0,19,3000239,TO_DATE('2013-05-14 14:57:35','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign','ECA02','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','Y','N','N','N','N','N','N','Campaign',28,TO_DATE('2013-05-14 14:57:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:37 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000357 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:38 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000358,3000202,0,1463,0,19,3000240,TO_DATE('2013-05-14 14:57:37','YYYY-MM-DD HH24:MI:SS'),100,'Cash Book for recording petty cash transactions','ECA02','The Cash Book identifies a unique cash book.  The cash book is used to record cash transactions.','Y','N','N','N','N','N','N','Cash Book',29,TO_DATE('2013-05-14 14:57:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:38 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000358 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:39 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000359,3000202,0,968,0,19,3000241,TO_DATE('2013-05-14 14:57:38','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','N','N','N','N','N','N','Charge',30,TO_DATE('2013-05-14 14:57:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:39 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000359 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:40 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000360,3000202,0,2278,0,19,3000242,TO_DATE('2013-05-14 14:57:39','YYYY-MM-DD HH24:MI:SS'),100,'Currency Conversion Rate Type','ECA02','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.','Y','N','N','N','N','N','N','Currency Type',31,TO_DATE('2013-05-14 14:57:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:40 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000360 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:42 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000361,3000202,0,193,0,19,3000243,TO_DATE('2013-05-14 14:57:40','YYYY-MM-DD HH24:MI:SS'),100,'The Currency for this record','ECA02','Indicates the Currency to be used when processing or reporting on this record','Y','N','N','N','N','N','N','Currency',32,TO_DATE('2013-05-14 14:57:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:42 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000361 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:43 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000362,3000202,0,196,0,19,3000244,TO_DATE('2013-05-14 14:57:42','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',33,TO_DATE('2013-05-14 14:57:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:43 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000362 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:44 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000363,3000202,0,849,0,12,3000245,TO_DATE('2013-05-14 14:57:43','YYYY-MM-DD HH24:MI:SS'),100,'Charge Amount','ECA02','The Charge Amount indicates the amount for an additional charge.','Y','N','N','N','N','N','N','Charge amount',34,TO_DATE('2013-05-14 14:57:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:44 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000363 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:46 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000364,3000202,0,1389,0,10,3000246,TO_DATE('2013-05-14 14:57:44','YYYY-MM-DD HH24:MI:SS'),100,'Check Number','ECA02','The Check Number indicates the number on the check.','Y','N','N','N','N','N','N','Check No',35,TO_DATE('2013-05-14 14:57:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:46 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000364 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:47 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000365,3000202,0,1008,0,30,3000247,TO_DATE('2013-05-14 14:57:46','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',36,TO_DATE('2013-05-14 14:57:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:47 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000365 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:49 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000366,3000202,0,558,0,30,3000249,TO_DATE('2013-05-14 14:57:47','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',37,TO_DATE('2013-05-14 14:57:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:49 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000366 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:50 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000367,3000202,0,1465,0,19,3000250,TO_DATE('2013-05-14 14:57:49','YYYY-MM-DD HH24:MI:SS'),100,'Payment batch for EFT','ECA02','Electronic Fund Transfer Payment Batch.','Y','N','N','N','N','N','N','Payment Batch',38,TO_DATE('2013-05-14 14:57:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:50 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000367 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:51 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000368,3000202,0,1384,0,13,3000251,TO_DATE('2013-05-14 14:57:50','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02','The Payment is a unique identifier of this payment.','Y','N','N','N','N','N','N','Payment',39,TO_DATE('2013-05-14 14:57:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:51 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000368 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:53 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000369,3000202,0,208,0,19,3000252,TO_DATE('2013-05-14 14:57:51','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project','ECA02','A Project allows you to track and control internal or external activities.','Y','N','N','N','N','N','N','Project',40,TO_DATE('2013-05-14 14:57:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:53 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000369 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:54 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000370,3000202,0,245,0,16,3000253,TO_DATE('2013-05-14 14:57:53','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',41,TO_DATE('2013-05-14 14:57:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:54 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000370 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:55 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000371,3000202,0,246,0,18,110,3000254,TO_DATE('2013-05-14 14:57:54','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',42,TO_DATE('2013-05-14 14:57:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:55 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000371 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:56 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000372,3000202,0,1084,0,11,3000255,TO_DATE('2013-05-14 14:57:55','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Month','ECA02','The Expiry Month indicates the expiry month for this credit card.','Y','N','N','N','N','N','N','Exp. Month',43,TO_DATE('2013-05-14 14:57:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:56 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000372 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:58 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000373,3000202,0,1085,0,11,3000256,TO_DATE('2013-05-14 14:57:56','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Year','ECA02','The Expiry Year indicates the expiry year for this credit card.','Y','N','N','N','N','N','N','Exp. Year',44,TO_DATE('2013-05-14 14:57:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:58 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000373 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:57:59 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000374,3000202,0,249,0,10,3000257,TO_DATE('2013-05-14 14:57:58','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Number ','ECA02','The Credit Card number indicates the number on the credit card, without blanks or spaces.','Y','N','N','N','N','N','N','Number',45,TO_DATE('2013-05-14 14:57:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:57:59 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000374 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:00 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000375,3000202,0,1012,0,17,149,3000258,TO_DATE('2013-05-14 14:57:59','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card (Visa, MC, AmEx)','ECA02','The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.','Y','N','N','N','N','N','N','Credit Card',46,TO_DATE('2013-05-14 14:57:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:00 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000375 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:01 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000376,3000202,0,1393,0,10,3000259,TO_DATE('2013-05-14 14:58:00','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification code on credit card','ECA02','The Credit Card Verification indicates the verification code on the credit card (AMEX 4 digits on front; MC,Visa 3 digits back)','Y','N','N','N','N','N','N','Verification Code',47,TO_DATE('2013-05-14 14:58:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:01 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000376 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:03 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000377,3000202,0,263,0,15,3000260,TO_DATE('2013-05-14 14:58:01','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','Account Date',48,TO_DATE('2013-05-14 14:58:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:03 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000377 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:05 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000378,3000202,0,1297,0,15,3000261,TO_DATE('2013-05-14 14:58:03','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date','ECA02','The Transaction Date indicates the date of the transaction.','Y','N','Y','N','N','N','N','Transaction Date',49,TO_DATE('2013-05-14 14:58:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:05 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000378 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:06 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000379,3000202,0,275,0,10,3000262,TO_DATE('2013-05-14 14:58:05','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','N','N','N','N','N','N','Description',50,TO_DATE('2013-05-14 14:58:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:06 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000379 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:07 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000380,3000202,0,1395,0,12,3000263,TO_DATE('2013-05-14 14:58:06','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount','ECA02','The Discount Amount indicates the discount amount for a document or line.','Y','N','N','N','N','N','N','Discount Amount',51,TO_DATE('2013-05-14 14:58:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:07 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000380 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:08 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000381,3000202,0,287,0,28,135,3000264,TO_DATE('2013-05-14 14:58:07','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',52,TO_DATE('2013-05-14 14:58:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:08 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000381 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:10 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000382,3000202,0,289,0,17,131,3000265,TO_DATE('2013-05-14 14:58:08','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',53,TO_DATE('2013-05-14 14:58:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:10 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000382 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:11 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000383,3000202,0,290,0,10,3000266,TO_DATE('2013-05-14 14:58:10','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','Y','N','N','N','N','Document No',54,TO_DATE('2013-05-14 14:58:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:11 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000383 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:12 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000384,3000202,0,348,0,20,3000267,TO_DATE('2013-05-14 14:58:11','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',55,TO_DATE('2013-05-14 14:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:12 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000384 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:13 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000385,3000202,0,1508,0,20,3000268,TO_DATE('2013-05-14 14:58:12','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the payment has been allocated','ECA02','The Allocated checkbox indicates if a payment has been allocated or associated with an invoice or invoices.','Y','N','N','N','N','N','N','Allocated',56,TO_DATE('2013-05-14 14:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:13 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000385 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:15 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000386,3000202,0,351,0,20,3000269,TO_DATE('2013-05-14 14:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','N','N','N','N','N','N','Approved',57,TO_DATE('2013-05-14 14:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:15 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000386 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:16 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000387,3000202,0,2107,0,20,3000270,TO_DATE('2013-05-14 14:58:15','YYYY-MM-DD HH24:MI:SS'),100,'Charge after Shipment','ECA02','Delayed Capture is required, if you ship products.  The first credit card transaction is the Authorization, the second is the actual transaction after the shipment of the product.','Y','N','N','N','N','N','N','Delayed Capture',58,TO_DATE('2013-05-14 14:58:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:16 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000387 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:17 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000388,3000202,0,1401,0,20,3000271,TO_DATE('2013-05-14 14:58:16','YYYY-MM-DD HH24:MI:SS'),100,'Can be accessed online ','ECA02','The Online Access check box indicates if the application can be accessed via the web. ','Y','N','N','N','N','N','N','Online Access',59,TO_DATE('2013-05-14 14:58:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:17 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000388 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:20 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000389,3000202,0,1818,0,20,3000272,TO_DATE('2013-05-14 14:58:17','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment)','ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','N','N','N','N','N','N','Over/Under Payment',60,TO_DATE('2013-05-14 14:58:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:20 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000389 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:21 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000390,3000202,0,2663,0,20,3000273,TO_DATE('2013-05-14 14:58:20','YYYY-MM-DD HH24:MI:SS'),100,'The Payment/Receipt is a Prepayment','ECA02','Payments not allocated to an invoice with a charge are posted to Unallocated Payments. When setting this flag, the payment is posted to the Customer or Vendor Prepayment account.','Y','N','N','N','N','N','N','Prepayment',61,TO_DATE('2013-05-14 14:58:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:21 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000390 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:22 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000391,3000202,0,1634,0,20,3000274,TO_DATE('2013-05-14 14:58:21','YYYY-MM-DD HH24:MI:SS'),100,'This is a sales transaction (receipt)','ECA02','Y','N','N','N','N','N','N','Receipt',62,TO_DATE('2013-05-14 14:58:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:22 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000391 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:23 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000392,3000202,0,1105,0,20,3000275,TO_DATE('2013-05-14 14:58:22','YYYY-MM-DD HH24:MI:SS'),100,'Payment is reconciled with bank statement','ECA02','Y','N','N','N','N','N','N','Reconciled',63,TO_DATE('2013-05-14 14:58:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:23 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000392 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:25 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000393,3000202,0,2063,0,20,3000276,TO_DATE('2013-05-14 14:58:23','YYYY-MM-DD HH24:MI:SS'),100,'This is a Self-Service entry or this entry can be changed via Self-Service','ECA02','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.','Y','N','N','N','N','N','N','Self-Service',64,TO_DATE('2013-05-14 14:58:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:25 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000393 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:26 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000394,3000202,0,1407,0,10,3000277,TO_DATE('2013-05-14 14:58:25','YYYY-MM-DD HH24:MI:SS'),100,'Combination of routing no, account and check no','ECA02','The Micr number is the combination of the bank routing number, account number and check number','Y','N','N','N','N','N','N','Micr',65,TO_DATE('2013-05-14 14:58:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:26 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000394 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:27 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000395,3000202,0,1497,0,28,3000278,TO_DATE('2013-05-14 14:58:26','YYYY-MM-DD HH24:MI:SS'),100,'This payment can be processed online','ECA02','The Online Processing indicates if the payment can be processed online.','Y','N','N','N','N','N','N','Online Processing',66,TO_DATE('2013-05-14 14:58:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:27 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000395 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:29 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000396,3000202,0,1409,0,10,3000279,TO_DATE('2013-05-14 14:58:27','YYYY-MM-DD HH24:MI:SS'),100,'Original Transaction ID','ECA02','The Original Transaction ID is used for reversing transactions and indicates the transaction that has been reversed.','Y','N','N','N','N','N','N','Original Transaction ID',67,TO_DATE('2013-05-14 14:58:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:29 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000396 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:30 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000397,3000202,0,1819,0,12,3000280,TO_DATE('2013-05-14 14:58:29','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment) Amount','ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','N','N','N','N','N','N','Over/Under Payment',68,TO_DATE('2013-05-14 14:58:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:30 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000397 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:32 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000398,3000202,0,1477,0,12,3000281,TO_DATE('2013-05-14 14:58:30','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','N','Y','N','N','N','N','Payment amount',69,TO_DATE('2013-05-14 14:58:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:32 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000398 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:33 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000399,3000202,0,1308,0,28,234,3000284,TO_DATE('2013-05-14 14:58:32','YYYY-MM-DD HH24:MI:SS'),100,'Posting status','ECA02','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Y','N','N','N','N','N','N','Posted',70,TO_DATE('2013-05-14 14:58:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:33 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000399 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:35 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000400,3000202,0,1047,0,20,3000285,TO_DATE('2013-05-14 14:58:33','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','Processed',71,TO_DATE('2013-05-14 14:58:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:35 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000400 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:36 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000401,3000202,0,54128,0,22,3000286,TO_DATE('2013-05-14 14:58:35','YYYY-MM-DD HH24:MI:SS'),100,'The date+time (expressed in decimal format) when the document has been processed','ECA02','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Y','N','N','N','N','N','N','Processed On',72,TO_DATE('2013-05-14 14:58:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:36 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000401 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:37 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000402,3000202,0,524,0,28,3000287,TO_DATE('2013-05-14 14:58:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Process Now',73,TO_DATE('2013-05-14 14:58:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:37 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000402 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:39 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000403,3000202,0,1422,0,10,3000288,TO_DATE('2013-05-14 14:58:37','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code returned','ECA02','The Authorization Code indicates the code returned from the electronic transmission.','Y','N','N','N','N','N','N','Authorization Code',74,TO_DATE('2013-05-14 14:58:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:39 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000403 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:42 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000404,3000202,0,2119,0,10,3000289,TO_DATE('2013-05-14 14:58:39','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code Delayed Capture returned','ECA02','The Authorization Code indicates the code returned from the electronic transmission.','Y','N','N','N','N','N','N','Authorization Code (DC)',75,TO_DATE('2013-05-14 14:58:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:42 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000404 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:44 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000405,3000202,0,1423,0,17,213,3000290,TO_DATE('2013-05-14 14:58:42','YYYY-MM-DD HH24:MI:SS'),100,'This address has been verified','ECA02','The Address Verified indicates if the address has been verified by the Credit Card Company.','Y','N','N','N','N','N','N','Address verified',76,TO_DATE('2013-05-14 14:58:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:44 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000405 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:49 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000406,3000202,0,1424,0,17,213,3000291,TO_DATE('2013-05-14 14:58:44','YYYY-MM-DD HH24:MI:SS'),100,'The Zip Code has been verified','ECA02','The Zip Verified indicates if the zip code has been verified by the Credit Card Company.','Y','N','N','N','N','N','N','Zip verified',77,TO_DATE('2013-05-14 14:58:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:49 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000406 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:52 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000407,3000202,0,2120,0,20,3000292,TO_DATE('2013-05-14 14:58:49','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification Code Match','ECA02','The Credit Card Verification Code was matched','Y','N','N','N','N','N','N','CVV Match',78,TO_DATE('2013-05-14 14:58:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:52 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000407 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:55 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000408,3000202,0,2753,0,18,343,3000293,TO_DATE('2013-05-14 14:58:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Referenced Payment',79,TO_DATE('2013-05-14 14:58:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:55 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000408 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:58:59 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000409,3000202,0,53457,0,18,343,3000294,TO_DATE('2013-05-14 14:58:55','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal','ECA02','Y','N','N','N','N','N','N','Reversal ID',80,TO_DATE('2013-05-14 14:58:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:58:59 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000409 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:00 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000410,3000202,0,1425,0,10,3000295,TO_DATE('2013-05-14 14:58:59','YYYY-MM-DD HH24:MI:SS'),100,'Response info','ECA02','The Info indicates any response information returned from the Credit Card Company.','Y','N','N','N','N','N','N','Info',81,TO_DATE('2013-05-14 14:58:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:00 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000410 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:01 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000411,3000202,0,964,0,10,3000296,TO_DATE('2013-05-14 14:59:00','YYYY-MM-DD HH24:MI:SS'),100,'Bank Routing Number','ECA02','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.','Y','N','N','N','N','N','N','Routing No',82,TO_DATE('2013-05-14 14:59:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:01 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000411 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:03 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000412,3000202,0,1426,0,10,3000297,TO_DATE('2013-05-14 14:59:01','YYYY-MM-DD HH24:MI:SS'),100,'Payment reference','ECA02','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','Y','N','N','N','N','N','N','Reference',83,TO_DATE('2013-05-14 14:59:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:03 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000412 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:04 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000413,3000202,0,2121,0,10,3000298,TO_DATE('2013-05-14 14:59:03','YYYY-MM-DD HH24:MI:SS'),100,'Payment Reference Delayed Capture','ECA02','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','Y','N','N','N','N','N','N','Reference (DC)',84,TO_DATE('2013-05-14 14:59:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:04 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000413 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:05 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000414,3000202,0,1427,0,10,3000299,TO_DATE('2013-05-14 14:59:04','YYYY-MM-DD HH24:MI:SS'),100,'Response message','ECA02','The Response Message indicates the message returned from the Credit Card Company as the result of a transmission','Y','N','N','N','N','N','N','Response Message',85,TO_DATE('2013-05-14 14:59:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:05 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000414 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:07 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000415,3000202,0,1428,0,10,3000300,TO_DATE('2013-05-14 14:59:05','YYYY-MM-DD HH24:MI:SS'),100,'Result of transmission','ECA02','The Response Result indicates the result of the transmission to the Credit Card Company.','Y','N','N','N','N','N','N','Result',86,TO_DATE('2013-05-14 14:59:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:07 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000415 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:08 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000416,3000202,0,2125,0,10,3000301,TO_DATE('2013-05-14 14:59:07','YYYY-MM-DD HH24:MI:SS'),100,'Track 1 and 2 of the Credit Card','ECA02','Swiped information for Credit Card Presence Transactions','Y','N','N','N','N','N','N','Swipe',87,TO_DATE('2013-05-14 14:59:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:08 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000416 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:10 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000417,3000202,0,1133,0,12,3000302,TO_DATE('2013-05-14 14:59:08','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document','ECA02','The Tax Amount displays the total tax amount for a document.','Y','N','N','N','N','N','N','Tax Amount',88,TO_DATE('2013-05-14 14:59:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:10 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000417 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:11 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000418,3000202,0,1441,0,17,214,3000303,TO_DATE('2013-05-14 14:59:10','YYYY-MM-DD HH24:MI:SS'),100,'Method of Payment','ECA02','The Tender Type indicates the method of payment (ACH or Direct Deposit, Credit Card, Check, Direct Debit)','Y','N','N','N','N','N','N','Tender type',89,TO_DATE('2013-05-14 14:59:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:11 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000418 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:13 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000419,3000202,0,1295,0,17,215,3000304,TO_DATE('2013-05-14 14:59:11','YYYY-MM-DD HH24:MI:SS'),100,'Type of credit card transaction','ECA02','The Transaction Type indicates the type of transaction to be submitted to the Credit Card Company.','Y','N','N','N','N','N','N','Transaction Type',90,TO_DATE('2013-05-14 14:59:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:13 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000419 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:14 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000420,3000202,0,607,0,16,3000305,TO_DATE('2013-05-14 14:59:13','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',91,TO_DATE('2013-05-14 14:59:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:14 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000420 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:15 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000421,3000202,0,608,0,18,110,3000306,TO_DATE('2013-05-14 14:59:14','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',92,TO_DATE('2013-05-14 14:59:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:15 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000421 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:17 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000422,3000202,0,613,0,18,134,3000307,TO_DATE('2013-05-14 14:59:15','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1','ECA02','The user defined element displays the optional elements that have been defined for this account combination.','Y','N','N','N','N','N','N','User List 1',93,TO_DATE('2013-05-14 14:59:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:17 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000422 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:18 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000423,3000202,0,614,0,18,137,3000308,TO_DATE('2013-05-14 14:59:17','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #2','ECA02','The user defined element displays the optional elements that have been defined for this account combination.','Y','N','N','N','N','N','N','User List 2',94,TO_DATE('2013-05-14 14:59:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:18 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000423 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:20 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000424,3000202,0,1445,0,10,3000309,TO_DATE('2013-05-14 14:59:18','YYYY-MM-DD HH24:MI:SS'),100,'Voice Authorization Code from credit card company','ECA02','The Voice Authorization Code indicates the code received from the Credit Card Company.','Y','N','N','N','N','N','N','Voice authorization code',95,TO_DATE('2013-05-14 14:59:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:20 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000424 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:21 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000425,3000202,0,1450,0,12,3000310,TO_DATE('2013-05-14 14:59:20','YYYY-MM-DD HH24:MI:SS'),100,'Amount to write-off','ECA02','The Write Off Amount indicates the amount to be written off as uncollectible.','Y','N','N','N','N','N','N','Write-off Amount',96,TO_DATE('2013-05-14 14:59:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:21 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000425 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:22 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000426,3000202,0,3000252,0,14,3000248,TO_DATE('2013-05-14 14:59:21','YYYY-MM-DD HH24:MI:SS'),100,'Description Confirmation','ECA02','Description Confirmation of Payment','Y','N','N','N','N','N','N','Description Confirmation',97,TO_DATE('2013-05-14 14:59:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:22 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000426 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 2:59:24 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000427,3000202,0,3000253,0,18,3000206,3000282,TO_DATE('2013-05-14 14:59:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Payment Confirm',98,TO_DATE('2013-05-14 14:59:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 2:59:24 PM VET
-- RRHH LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000427 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000342
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000345
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000343
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000340
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000341
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000346
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000347
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000348
;

-- May 14, 2013 4:04:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000349
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000350
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000351
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000352
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000339
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000353
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000354
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000357
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000358
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000359
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000360
;

-- May 14, 2013 4:04:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000361
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000365
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000366
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000367
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000369
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000363
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000364
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000426
;

-- May 14, 2013 4:04:48 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000370
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000371
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000372
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000373
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000374
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000375
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000376
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000379
;

-- May 14, 2013 4:04:49 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000380
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000381
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000382
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000384
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000385
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000386
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000387
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000388
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000389
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000390
;

-- May 14, 2013 4:04:50 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000391
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000392
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000393
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000394
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000395
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000396
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000397
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000344
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000427
;

-- May 14, 2013 4:04:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000399
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000400
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000401
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000402
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000403
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000404
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000405
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000406
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000407
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000410
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000412
;

-- May 14, 2013 4:04:52 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000413
;

-- May 14, 2013 4:04:53 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000414
;

-- May 14, 2013 4:04:53 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000415
;

-- May 14, 2013 4:04:53 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000408
;

-- May 14, 2013 4:04:53 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000409
;

-- May 14, 2013 4:04:53 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000411
;

-- May 14, 2013 4:04:53 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000416
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000417
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000418
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000419
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000420
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000421
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000422
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000423
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000424
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000425
;

-- May 14, 2013 4:04:54 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2013-05-14 16:04:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000368
;

-- May 14, 2013 4:04:55 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2013-05-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000383
;

-- May 14, 2013 4:04:55 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2013-05-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000355
;

-- May 14, 2013 4:04:55 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2013-05-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000362
;

-- May 14, 2013 4:04:55 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-05-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000378
;

-- May 14, 2013 4:04:55 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-05-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000377
;

-- May 14, 2013 4:04:55 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-05-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000356
;

-- May 14, 2013 4:04:55 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-05-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000398
;

-- May 14, 2013 4:05:46 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_DATE('2013-05-14 16:05:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000378
;

-- May 14, 2013 4:05:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=20,Updated=TO_DATE('2013-05-14 16:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000377
;

-- May 14, 2013 4:05:47 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=30,Updated=TO_DATE('2013-05-14 16:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000355
;

-- May 14, 2013 4:12:04 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-05-14 16:12:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000366
;

-- May 14, 2013 4:12:42 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsKey='Y', IsMandatory='Y',Updated=TO_DATE('2013-05-14 16:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000368
;

-- May 14, 2013 4:13:41 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-05-14 16:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000383
;

-- May 14, 2013 4:13:51 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-05-14 16:13:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000355
;

-- May 14, 2013 4:14:10 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-05-14 16:14:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000362
;

-- May 14, 2013 4:14:17 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-05-14 16:14:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000378
;

-- May 14, 2013 4:14:24 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-05-14 16:14:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000377
;

-- May 14, 2013 4:14:37 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_DATE('2013-05-14 16:14:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000356
;

-- May 14, 2013 4:14:58 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2013-05-14 16:14:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000366
;

-- May 14, 2013 4:15:41 PM VET
-- RRHH LVE
INSERT INTO AD_Menu (action,AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',3000202,0,3000209,0,TO_DATE('2013-05-14 16:15:39','YYYY-MM-DD HH24:MI:SS'),100,'Pre-Payment Batch','ECA02','Y','Y','N','N','N','Pre-Payment Batch',TO_DATE('2013-05-14 16:15:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 4:15:41 PM VET
-- RRHH LVE
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- May 14, 2013 4:15:41 PM VET
-- RRHH LVE
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-05-14 16:15:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',3000209,0,999,TO_DATE('2013-05-14 16:15:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 4:15:56 PM VET
-- RRHH LVE
UPDATE AD_Menu_Trl SET Name='Lote de Anticipos',Description='Lote de Anticipos',Updated=TO_DATE('2013-05-14 16:15:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000209 AND AD_Language='es_MX'
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000000
;

-- May 14, 2013 4:16:06 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15,Updated=TO_DATE('2013-05-14 16:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- May 14, 2013 4:16:08 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0,Updated=TO_DATE('2013-05-14 16:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- May 14, 2013 4:16:11 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_DATE('2013-05-14 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- May 14, 2013 4:16:12 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_DATE('2013-05-14 16:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- May 14, 2013 4:16:12 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_DATE('2013-05-14 16:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- May 14, 2013 4:16:12 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_DATE('2013-05-14 16:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- May 14, 2013 4:16:12 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_DATE('2013-05-14 16:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- May 14, 2013 4:16:12 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_DATE('2013-05-14 16:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- May 14, 2013 4:16:12 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27,Updated=TO_DATE('2013-05-14 16:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- May 14, 2013 4:16:12 PM VET
-- RRHH LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28,Updated=TO_DATE('2013-05-14 16:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- May 15, 2013 12:02:08 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-15 12:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000356
;

-- May 15, 2013 12:02:08 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-05-15 12:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000366
;

-- May 15, 2013 12:02:08 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-05-15 12:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000354
;

-- May 15, 2013 12:02:26 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_DATE('2013-05-15 12:02:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000354
;

-- May 15, 2013 12:03:28 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-05-15 12:03:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000356
;

-- May 15, 2013 12:03:41 PM VET
-- RRHH LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', IsMandatory='N', IsQueryCriteria='N',Updated=TO_DATE('2013-05-15 12:03:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000356
;

