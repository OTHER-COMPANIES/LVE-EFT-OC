-- Aug 15, 2013 12:25:36 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56117,0,'AmountAvailable',TO_DATE('2013-08-15 12:25:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Amount Available','Amount Available',TO_DATE('2013-08-15 12:25:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 15, 2013 12:25:36 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56117 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 15, 2013 12:25:43 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Monto Disponible',PrintName='Monto Disponible',Updated=TO_DATE('2013-08-15 12:25:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56117 AND AD_Language='es_MX'
;

-- Aug 15, 2013 12:27:26 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66760,56117,0,12,53552,'AmountAvailable','(Select c_bankstatement.beginningbalance + c_bankstatement.statementdifference + Case When T_Conciliation.AmountNotReconciled is null then 0 else T_Cust_Reconciliation.AmountNotReconciled end  From c_bankstatement where c_bankstatement.c_bankstatement_id = T_Conciliation.c_bankstatement_id)',TO_DATE('2013-08-15 12:27:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Amount Available',0,TO_DATE('2013-08-15 12:27:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 12:27:26 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66760 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 12:28:04 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56118,0,12,'BalanceBank',TO_DATE('2013-08-15 12:28:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Balance Bank','Balance Bank',TO_DATE('2013-08-15 12:28:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 15, 2013 12:28:04 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56118 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 15, 2013 12:28:14 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Saldo Banco',PrintName='Saldo Banco',Updated=TO_DATE('2013-08-15 12:28:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56118 AND AD_Language='es_MX'
;

-- Aug 15, 2013 12:28:53 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66761,56118,0,12,53552,'BalanceBank','(Select c_bankstatement.BalancePerBank From c_bankstatement where c_bankstatement.c_bankstatement_id=T_Conciliation.c_bankstatement_id)',TO_DATE('2013-08-15 12:28:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Balance Bank',0,TO_DATE('2013-08-15 12:28:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 12:28:53 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66761 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 12:29:43 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66762,1378,0,12,53552,'BeginningBalance','(Select c_bankstatement.beginningbalance  From c_bankstatement where c_bankstatement.c_bankstatement_id=T_Conciliation.c_bankstatement_id)',TO_DATE('2013-08-15 12:29:41','YYYY-MM-DD HH24:MI:SS'),100,'Balance prior to any transactions','ECA02',22,'The Beginning Balance is the balance prior to making any adjustments for payments or disbursements.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Beginning Balance',0,TO_DATE('2013-08-15 12:29:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 12:29:43 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66762 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 12:30:29 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66763,1396,0,12,53552,'EndingBalance','(Select c_bankstatement.endingbalance From c_bankstatement where c_bankstatement.c_bankstatement_id=T_Conciliation.c_bankstatement_id)',TO_DATE('2013-08-15 12:30:28','YYYY-MM-DD HH24:MI:SS'),100,'Ending  or closing balance','ECA02',22,'The Ending Balance is the result of adjusting the Beginning Balance by any payments or disbursements.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Ending balance',0,TO_DATE('2013-08-15 12:30:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 12:30:29 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66763 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 12:31:11 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66764,1434,0,15,53552,'StatementDate','(Select c_bankstatement.StatementDate From c_bankstatement where c_bankstatement.c_bankstatement_id=T_Conciliation.c_bankstatement_id)',TO_DATE('2013-08-15 12:31:09','YYYY-MM-DD HH24:MI:SS'),100,'Date of the statement','ECA02',7,'The Statement Date field defines the date of the statement.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Statement date',0,TO_DATE('2013-08-15 12:31:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 12:31:11 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66764 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 12:31:50 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66765,1435,0,12,53552,'StatementDifference','(Select c_bankstatement.endingbalance-c_bankstatement.BalancePerBank From c_bankstatement where c_bankstatement.c_bankstatement_id=T_Conciliation.c_bankstatement_id)',TO_DATE('2013-08-15 12:31:47','YYYY-MM-DD HH24:MI:SS'),100,'Difference between statement ending balance and actual ending balance','ECA02',22,'The Statement Difference reflects the difference between the Statement Ending Balance and the Actual Ending Balance.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Statement difference',0,TO_DATE('2013-08-15 12:31:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 12:31:50 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66765 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

