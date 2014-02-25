-- May 14, 2013 4:52:58 PM VET
-- EFT Venezuela
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,55880,0,11,'DaysDueCheck',TO_TIMESTAMP('2013-05-14 16:52:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Days Due for Check Doc.','Days Due for Check Documents',TO_TIMESTAMP('2013-05-14 16:52:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 4:52:58 PM VET
-- EFT Venezuela
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=55880 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- May 14, 2013 4:53:43 PM VET
-- EFT Venezuela
UPDATE AD_Element_Trl SET Name='Días de Vencimiento para Cheques',PrintName='Días de Vencimiento para Documentos de Cheques',Updated=TO_TIMESTAMP('2013-05-14 16:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=55880 AND AD_Language='es_MX'
;

-- May 14, 2013 4:54:01 PM VET
-- EFT Venezuela
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,65356,55880,0,11,296,'DaysDueCheck',TO_TIMESTAMP('2013-05-14 16:53:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Days Due for Check Doc.',0,TO_TIMESTAMP('2013-05-14 16:53:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 14, 2013 4:54:01 PM VET
-- EFT Venezuela
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=65356 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 14, 2013 4:54:13 PM VET
-- EFT Venezuela
ALTER TABLE C_Bank ADD COLUMN DaysDueCheck NUMERIC(10) DEFAULT NULL 
;

-- May 14, 2013 4:55:03 PM VET
-- EFT Venezuela
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,65356,66747,0,227,TO_TIMESTAMP('2013-05-14 16:55:01','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Days Due for Check Doc.',0,100,0,TO_TIMESTAMP('2013-05-14 16:55:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 14, 2013 4:55:03 PM VET
-- EFT Venezuela
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=66747 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 14, 2013 4:55:06 PM VET
-- EFT Venezuela
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-05-14 16:55:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=66747
;

