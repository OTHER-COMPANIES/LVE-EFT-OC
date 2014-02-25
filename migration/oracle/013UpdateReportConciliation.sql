-- Aug 15, 2013 12:36:28 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET AD_Column_ID=66762, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-08-15 12:36:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54047
;

-- Aug 15, 2013 12:37:02 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET AD_Column_ID=66764, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-08-15 12:37:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54062
;

-- Aug 15, 2013 12:37:14 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET AD_Column_ID=66763, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-08-15 12:37:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54063
;

-- Aug 15, 2013 12:37:30 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET AD_Column_ID=66761, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-08-15 12:37:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54065
;

-- Aug 15, 2013 12:37:53 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET AD_Column_ID=66765, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-08-15 12:37:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54067
;

-- Aug 15, 2013 12:38:16 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET AD_Column_ID=66760, IsGroupBy='N', IsPageBreak='N', PrintFormatType='F', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-08-15 12:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54081
;

-- Aug 15, 2013 12:38:26 PM VET
-- LVE Withholding
insert into T_Conciliation(C_Bankstatement_ID,C_BankAccount_ID,AD_Client_ID,AD_Org_ID,AD_PInstance_ID,AmountNotReconciled,T_Conciliation_ID) Values(?,?,?,?,?,(Select sum(Case When CP.IsReceipt='Y' then CP.payamt else CP.payamt * -1 end) From c_payment CP Where CP.isreconciled='N' And CP.processed='Y' And CP.docstatus NOT IN ('DR') And CP.datetrx<=? And CP.c_bankaccount_id=?),101)
;

-- Aug 15, 2013 12:38:26 PM VET
-- LVE Withholding
insert into T_ConciliationLine(AD_Client_ID,AD_Org_ID,AD_PInstance_ID,isreconciled,StatementDate,trxamt,stmtamt,C_Payment_ID,chargeamt,C_Charge_ID,ismanual,tendertype,c_bankstatementline_id)Select CBSL.ad_client_id, CBSL.ad_org_id, ? as ad_pinstance_id, 'Y' isreconciled, CBS.statementdate, CBSL.trxamt, CBSL.stmtamt, CP.C_Payment_ID, CBSL.chargeamt, CBSL.c_charge_id, CBSL.ismanual, CP.tendertype, CBSL.c_bankstatementline_id From c_bankstatement CBS Inner Join c_bankstatementline CBSL On CBS.c_bankstatement_id=CBSL.c_bankstatement_id Left Join C_Payment CP On CBSL.C_Payment_ID=CP.C_Payment_ID Left Join C_Charge CCH On CBSL.c_charge_id=CCH.c_charge_id Where ((/*CP.isreconciled='Y' And*/ CP.docstatus NOT IN ('DR')) Or CP.c_payment_id is null)  And CBS.c_bankstatement_id=?  /*And CBSL.processed='Y'*/ union Select CP.ad_client_id,CP.ad_org_id,? as ad_pinstance_id,'N' isreconciled,CP.datetrx, Case When CP.IsReceipt='Y' then CP.payamt else CP.payamt * -1 end as trxamt, Case When CP.IsReceipt='Y' then CP.payamt else CP.payamt * -1 end as stmamt, CP.c_payment_id, 0 as chargeamt, null as c_charge_id, 'N' as ismanual, CP.tendertype, null  as c_bankstatementline From c_payment CP Where CP.isreconciled='N'/*not exists(Select 1 from c_bankstatement cbs inner join c_bankstatementline cbsl on cbs.c_bankstatement_id = cbsl.c_bankstatement_id Where cbsl.c_payment_id=CP.c_payment_id and cbs.statementdate<=? and cbs.c_bankaccount_id=CP.c_bankaccount_id)*/  And CP.processed='Y' And CP.docstatus NOT IN ('DR') And CP.datetrx<=? And CP.c_bankaccount_id=? Order By 4 desc
;

