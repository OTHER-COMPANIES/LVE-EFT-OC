-- 10/10/2013 12:20:21 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=183,Updated=TO_DATE('2013-10-10 12:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68616
;

-- 10/10/2013 12:31:51 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsOrderBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55272
;

-- 10/10/2013 12:34:16 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsActive='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:34:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55284
;

-- 10/10/2013 12:34:23 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsActive='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:34:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55308
;

-- 10/10/2013 12:34:57 PM VET
-- LVE EFT
UPDATE AD_PrintFormat SET Description='Análisis de Mórisidad', Name='Análisis de Mórisidad',Updated=TO_DATE('2013-10-10 12:34:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50152
;

-- 10/10/2013 12:38:05 PM VET
-- LVE EFT
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,1000000,102,119,50150,55315,0,0,TO_DATE('2013-10-10 12:38:03','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','L',1,0,0,'Legend','C','T',20,200,'N',0,TO_DATE('2013-10-10 12:38:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 10/10/2013 12:38:05 PM VET
-- LVE EFT
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55315 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 10/10/2013 12:38:26 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='Documents Unassigned (** =>)', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:38:26 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:38:43 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem_Trl SET PrintName='Documentos Sin Asignar (** =>)',Updated=TO_DATE('2013-10-10 12:38:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315 AND AD_Language='es_MX'
;

-- 10/10/2013 12:39:20 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=150, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:39:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:39:20 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=160, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:39:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55283
;

-- 10/10/2013 12:39:20 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=170, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:39:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55284
;

-- 10/10/2013 12:39:20 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=180, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:39:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55308
;

-- 10/10/2013 12:39:21 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=190, SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-10 12:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55237
;

-- 10/10/2013 12:39:21 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=200, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55236
;

-- 10/10/2013 12:39:43 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', LineAlignmentType='X', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:39:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:39:54 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET FieldAlignmentType='D', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:39:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:40:38 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsNextLine='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:40:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:40:50 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET FieldAlignmentType='L', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:40:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:41:27 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsRelativePosition='N', SortNo=0, XSpace=0, YSpace=0,Updated=TO_DATE('2013-10-10 12:41:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55315
;

-- 10/10/2013 12:43:36 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:43:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55270
;

-- 10/10/2013 12:43:40 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem_Trl SET PrintName='Fecha',Updated=TO_DATE('2013-10-10 12:43:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55270 AND AD_Language='es_MX'
;

-- 10/10/2013 12:43:59 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:43:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55271
;

-- 10/10/2013 12:44:08 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem_Trl SET PrintName='No.Doc.',Updated=TO_DATE('2013-10-10 12:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55271 AND AD_Language='es_MX'
;

-- 10/10/2013 12:44:29 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem_Trl SET PrintName='Doc. Base',Updated=TO_DATE('2013-10-10 12:44:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55269 AND AD_Language='es_MX'
;

-- 10/10/2013 12:44:33 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55269
;

-- 10/10/2013 12:44:47 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55258
;

-- 10/10/2013 12:44:53 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem_Trl SET PrintName='Saldo',Updated=TO_DATE('2013-10-10 12:44:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55258 AND AD_Language='es_MX'
;

-- 10/10/2013 12:46:04 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', MaxWidth=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-10 12:46:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55269
;
