-- Aug 15, 2013 11:32:39 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53438,53054,'org.spin.report.Conciliation','N',TO_DATE('2013-08-15 11:32:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Conciliation','Y',0,0,TO_DATE('2013-08-15 11:32:35','YYYY-MM-DD HH24:MI:SS'),100,'C_BankStatement Conciliation')
;

-- Aug 15, 2013 11:32:39 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53438 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 15, 2013 11:33:22 AM VET
-- LVE Withholding
UPDATE AD_Tab SET AD_Process_ID=53438,Updated=TO_DATE('2013-08-15 11:33:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=328
;

