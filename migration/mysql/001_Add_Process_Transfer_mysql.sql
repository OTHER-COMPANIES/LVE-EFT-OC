-- Apr 18, 2013 12:04:36 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53361,'org.erpca.process.ProcessPaymentBatch','N',TO_DATE('2013-04-18 00:04:35','YYYY-MM-DD HH24:MI:SS'),100,'Generate File Bank Transfer','ECA02','Y','N','N','N','N','Generate File Bank Transfer','Y',0,0,TO_DATE('2013-04-18 00:04:35','YYYY-MM-DD HH24:MI:SS'),100,'prc_Generate_File_Bank_Transfer')
;

-- Apr 18, 2013 12:04:36 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53361 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Apr 18, 2013 12:08:16 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,50022,0,53361,53884,38,'File_Directory',TO_DATE('2013-04-18 00:08:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','File Directory',10,TO_DATE('2013-04-18 00:08:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 12:08:16 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53884 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 18, 2013 12:09:53 AM VET
-- LVE File Bank Transfer
UPDATE AD_Process_Para SET DefaultValue='@#CurrentPath@',Updated=TO_DATE('2013-04-18 00:09:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53884
;

-- Apr 18, 2013 12:20:01 AM VET
-- LVE File Bank Transfer
UPDATE AD_Column SET AD_Process_ID=53361,Updated=TO_DATE('2013-04-18 00:20:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5317
;

-- Apr 18, 2013 12:20:14 AM VET
-- LVE File Bank Transfer
UPDATE AD_Column SET IsAlwaysUpdateable='N',Updated=TO_DATE('2013-04-18 00:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5317
;

-- Apr 18, 2013 12:20:16 AM VET
-- LVE File Bank Transfer
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2013-04-18 00:20:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5317
;

-- Apr 18, 2013 12:21:46 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55813,0,'PaymentExportVerifyClass',TO_DATE('2013-04-18 00:21:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Payment Export Verify Class','Payment Export Verify Class',TO_DATE('2013-04-18 00:21:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 12:21:46 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55813 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 18, 2013 12:23:24 AM VET
-- LVE File Bank Transfer
UPDATE AD_Element_Trl SET Name='Clase de Verificación de Pago',PrintName='Clase de Verificación de Pago',Description='Clase utilizada para verificar los pagos generados, normalmente se usa en los circulos de seguridad bancaria',Updated=TO_DATE('2013-04-18 00:23:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55813 AND AD_Language='es_MX'
;

-- Apr 18, 2013 12:23:45 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,64884,55813,0,10,297,'PaymentExportVerifyClass',TO_DATE('2013-04-18 00:23:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment Export Verify Class',0,TO_DATE('2013-04-18 00:23:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 18, 2013 12:23:45 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=64884 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 18, 2013 12:23:52 AM VET
-- LVE File Bank Transfer
ALTER TABLE C_BankAccount ADD COLUMN PaymentExportVerifyClass VARCHAR(60) DEFAULT NULL 
;

-- Apr 18, 2013 12:25:34 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,64884,66134,0,228,TO_DATE('2013-04-18 00:25:34','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Payment Export Verify Class',0,150,0,TO_DATE('2013-04-18 00:25:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 18, 2013 12:25:34 AM VET
-- LVE File Bank Transfer
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66134 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 18, 2013 12:26:47 AM VET
-- LVE File Bank Transfer
UPDATE AD_Process_Trl SET Name='Generar Archivo de Transferencia',Description='Genera un Archivo de Transferencia que porteriormente será subido al Banco',Updated=TO_DATE('2013-04-18 00:26:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53361 AND AD_Language='es_MX'
;

