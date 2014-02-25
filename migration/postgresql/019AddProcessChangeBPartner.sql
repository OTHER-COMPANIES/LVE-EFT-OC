-- 23/09/2013 12:10:53 PM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53464,'N',TO_TIMESTAMP('2013-09-23 12:10:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Change BPartner','Y',0,0,TO_TIMESTAMP('2013-09-23 12:10:50','YYYY-MM-DD HH24:MI:SS'),100,'LVE_C_BPartner ChangeBPartner')
;

-- 23/09/2013 12:10:53 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53464 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 23/09/2013 12:10:53 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53464,102,TO_TIMESTAMP('2013-09-23 12:10:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-23 12:10:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/09/2013 12:11:08 PM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Cambiar Socio del Negocio',Updated=TO_TIMESTAMP('2013-09-23 12:11:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53464 AND AD_Language='es_MX'
;

-- 23/09/2013 12:12:37 PM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52210,'Exists (Select 1 From C_BPartner Where C_BPartner.IsReconcilingItems =''Y'' And C_BPartner.C_BPartner_ID=C_Payment.C_BPartner_ID) And C_Payment.DocStatus In (''CO'',''CL'')	',TO_TIMESTAMP('2013-09-23 12:12:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_IsReconcilingItems','S',TO_TIMESTAMP('2013-09-23 12:12:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/09/2013 12:12:52 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1384,0,53464,54006,30,52210,'C_Payment_ID',TO_TIMESTAMP('2013-09-23 12:12:50','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02',22,'The Payment is a unique identifier of this payment.','Y','Y','Y','N','Payment',10,TO_TIMESTAMP('2013-09-23 12:12:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/09/2013 12:12:52 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54006 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/09/2013 12:13:59 PM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52211,'IsReconcilingItems=''N''',TO_TIMESTAMP('2013-09-23 12:13:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_NotIsReconcilingItems','S',TO_TIMESTAMP('2013-09-23 12:13:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/09/2013 12:14:17 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53464,54007,30,52211,'C_BPartner_ID',TO_TIMESTAMP('2013-09-23 12:14:16','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02',22,'The Payment is a unique identifier of this payment.','Y','Y','Y','N','Payment',20,TO_TIMESTAMP('2013-09-23 12:14:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/09/2013 12:14:17 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54007 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/09/2013 12:14:34 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET Description=NULL, Help=NULL, Name='C_BPartner_ID',Updated=TO_TIMESTAMP('2013-09-23 12:14:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54007
;

-- 23/09/2013 12:14:34 PM VET
-- LVE Withholding
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=54007
;

-- 23/09/2013 12:14:38 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET Name='BPartner',Updated=TO_TIMESTAMP('2013-09-23 12:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54007
;

-- 23/09/2013 12:14:38 PM VET
-- LVE Withholding
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=54007
;

-- 23/09/2013 12:15:28 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', Name='Business Partner ',Updated=TO_TIMESTAMP('2013-09-23 12:15:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54007
;

-- 23/09/2013 12:15:28 PM VET
-- LVE Withholding
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=54007
;

-- 23/09/2013 12:16:40 PM VET
-- LVE Withholding
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53627,0,53464,TO_TIMESTAMP('2013-09-23 12:16:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Change BPartner',TO_TIMESTAMP('2013-09-23 12:16:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/09/2013 12:16:40 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53627 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 23/09/2013 12:16:41 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-09-23 12:16:40','YYYY-MM-DD HH24:MI:SS'),100,'Y',53627,0,999,TO_TIMESTAMP('2013-09-23 12:16:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/09/2013 12:16:50 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Cambiar Socio del Negocio',Updated=TO_TIMESTAMP('2013-09-23 12:16:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53627 AND AD_Language='es_MX'
;

-- 23/09/2013 12:16:55 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-23 12:16:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53627
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=1500002
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 23/09/2013 12:16:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_TIMESTAMP('2013-09-23 12:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 23/09/2013 12:16:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29,Updated=TO_TIMESTAMP('2013-09-23 12:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

