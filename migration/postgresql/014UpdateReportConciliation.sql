-- Aug 15, 2013 12:44:25 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56119,0,'BalancePerBank',TO_TIMESTAMP('2013-08-15 12:44:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Balance Per Bank','Balance Per Bank',TO_TIMESTAMP('2013-08-15 12:44:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 15, 2013 12:44:25 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56119 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 15, 2013 12:44:32 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Saldo por banco',PrintName='Saldo por banco',Updated=TO_TIMESTAMP('2013-08-15 12:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56119 AND AD_Language='es_MX'
;

-- Aug 15, 2013 12:45:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66766,56119,0,12,392,'BalancePerBank',TO_TIMESTAMP('2013-08-15 12:45:05','YYYY-MM-DD HH24:MI:SS'),100,'''0''','ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Balance Per Bank',0,TO_TIMESTAMP('2013-08-15 12:45:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 12:45:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66766 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 12:45:13 PM VET
-- LVE Withholding
ALTER TABLE C_BankStatement ADD COLUMN BalancePerBank NUMERIC DEFAULT '0' 
;

-- Aug 15, 2013 12:46:57 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='(Select c_bankstatement.beginningbalance + c_bankstatement.statementdifference + Case When T_Conciliation.AmountNotReconciled is null then 0 else T_Conciliation.AmountNotReconciled end  From c_bankstatement where c_bankstatement.c_bankstatement_id = T_Conciliation.c_bankstatement_id)',Updated=TO_TIMESTAMP('2013-08-15 12:46:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66760
;

-- Aug 15, 2013 12:52:55 PM VET
-- LVE Withholding
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=66755
;

-- Aug 15, 2013 12:52:55 PM VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=66755
;

-- Aug 15, 2013 12:56:41 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=17,Updated=TO_TIMESTAMP('2013-08-15 12:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66757
;

