-- 17/08/2013 07:13:53 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnSQL='(Select c_bankstatement.beginningbalance + c_bankstatement.statementdifference +      Case When T_Conciliation.AmountNotReconciled is null then 0 else T_Conciliation.AmountNotReconciled end  From c_bankstatement where c_bankstatement.c_bankstatement_id = T_Conciliation.c_bankstatement_id)',Updated=TO_TIMESTAMP('2013-08-17 07:13:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66760
;

-- 17/08/2013 07:17:33 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem_Trl SET PrintName='Estado de Cuenta:',Updated=TO_TIMESTAMP('2013-08-17 07:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54044 AND AD_Language='es_VE'
;

-- 17/08/2013 07:18:03 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem_Trl SET PrintName='Cuenta Bancaria:',Updated=TO_TIMESTAMP('2013-08-17 07:18:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54045 AND AD_Language='es_VE'
;

-- 17/08/2013 07:18:29 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem_Trl SET PrintName='Saldo Conciliado Anterior:',Updated=TO_TIMESTAMP('2013-08-17 07:18:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54046 AND AD_Language='es_VE'
;

-- 17/08/2013 07:19:02 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem_Trl SET PrintName='Saldo Conciliado a la Fecha:',Updated=TO_TIMESTAMP('2013-08-17 07:19:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54061 AND AD_Language='es_VE'
;

-- 17/08/2013 07:23:34 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem_Trl SET PrintName='Saldo del Estado de Cuentas:',Updated=TO_TIMESTAMP('2013-08-17 07:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54064 AND AD_Language='es_VE'
;

-- 17/08/2013 07:24:02 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:24:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54065
;

-- 17/08/2013 07:24:02 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:24:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54067
;

-- 17/08/2013 07:24:03 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:24:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54066
;

-- 17/08/2013 07:24:35 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:24:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54066
;

-- 17/08/2013 07:24:36 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:24:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54067
;

-- 17/08/2013 07:24:50 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem_Trl SET PrintName='Diferencia en Conciliación:',Updated=TO_TIMESTAMP('2013-08-17 07:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54066 AND AD_Language='es_VE'
;

-- 17/08/2013 07:26:15 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=120, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54066
;

-- 17/08/2013 07:26:15 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=130, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54067
;

-- 17/08/2013 07:26:15 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=140, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54064
;

-- 17/08/2013 07:26:15 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-08-17 07:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54065
;

