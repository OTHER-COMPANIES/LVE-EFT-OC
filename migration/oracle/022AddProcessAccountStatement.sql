-- 8/10/2013 05:56:25 PM VET
-- LVE EFT
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53073,53616,TO_DATE('2013-10-08 17:56:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','T_LVE_RV_AccountStatementHeader',TO_DATE('2013-10-08 17:56:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:56:49 PM VET
-- LVE EFT
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53484,53073,'org.spin.report.AccountStatement','N',TO_DATE('2013-10-08 17:56:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Account Statement','Y',0,0,TO_DATE('2013-10-08 17:56:48','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_AccountStatementHeader Account')
;

-- 8/10/2013 05:56:49 PM VET
-- LVE EFT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53484 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 8/10/2013 05:57:12 PM VET
-- LVE EFT
UPDATE AD_Process_Trl SET Name='Estado de Cuenta (Por Documento)',Updated=TO_DATE('2013-10-08 17:57:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53484 AND AD_Language='es_MX'
;

-- 8/10/2013 05:57:31 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53484,54121,19,'AD_Org_ID',TO_DATE('2013-10-08 17:57:26','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2013-10-08 17:57:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:57:31 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54121 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/10/2013 05:57:45 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53484,54122,30,'C_BPartner_ID',TO_DATE('2013-10-08 17:57:43','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','Business Partner ',20,TO_DATE('2013-10-08 17:57:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:57:45 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54122 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/10/2013 05:58:10 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56452,0,53484,54123,15,'DocumentDate',TO_DATE('2013-10-08 17:58:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','Y','Document Date',30,TO_DATE('2013-10-08 17:58:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:58:10 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54123 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/10/2013 05:58:25 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1106,0,53484,54124,17,319,'IsSOTrx',TO_DATE('2013-10-08 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02',1,'The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','N','N','Sales Transaction',40,TO_DATE('2013-10-08 17:58:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:58:25 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54124 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/10/2013 05:58:39 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,189,0,53484,54125,19,'C_BPartner_Location_ID',TO_DATE('2013-10-08 17:58:37','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner','ECA02',22,'The Partner address indicates the location of a Business Partner','Y','Y','N','N','Partner Location',50,TO_DATE('2013-10-08 17:58:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:58:39 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54125 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/10/2013 05:59:32 PM VET
-- LVE EFT
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53647,0,53484,TO_DATE('2013-10-08 17:59:29','YYYY-MM-DD HH24:MI:SS'),100,'Account Statement','U','Y','Y','N','N','N','Account Statement',TO_DATE('2013-10-08 17:59:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:59:32 PM VET
-- LVE EFT
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53647 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 8/10/2013 05:59:32 PM VET
-- LVE EFT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-10-08 17:59:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',53647,0,999,TO_DATE('2013-10-08 17:59:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/10/2013 05:59:37 PM VET
-- LVE EFT
UPDATE AD_Menu SET EntityType='ECA02',Updated=TO_DATE('2013-10-08 17:59:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53647
;

-- 8/10/2013 05:59:45 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0,Updated=TO_DATE('2013-10-08 17:59:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53647
;

-- 8/10/2013 05:59:45 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1,Updated=TO_DATE('2013-10-08 17:59:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=1500004
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53627
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000207
;

-- 8/10/2013 05:59:46 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_DATE('2013-10-08 17:59:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=1500002
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- 8/10/2013 05:59:47 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_DATE('2013-10-08 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- 8/10/2013 05:59:48 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27,Updated=TO_DATE('2013-10-08 17:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- 8/10/2013 05:59:48 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28,Updated=TO_DATE('2013-10-08 17:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- 8/10/2013 05:59:48 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29,Updated=TO_DATE('2013-10-08 17:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- 8/10/2013 05:59:48 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30,Updated=TO_DATE('2013-10-08 17:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- 8/10/2013 05:59:48 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31,Updated=TO_DATE('2013-10-08 17:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- 8/10/2013 06:00:01 PM VET
-- LVE EFT
UPDATE AD_Menu_Trl SET Name='Estado de Cuenta (Por Documento)',Description='Estado de Cuenta (Por Documento)',Updated=TO_DATE('2013-10-08 18:00:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53647 AND AD_Language='es_MX'
;

