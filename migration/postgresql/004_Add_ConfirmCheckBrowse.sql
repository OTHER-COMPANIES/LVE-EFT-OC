-- Apr 30, 2013 7:44:59 PM VET
-- CONFIRM LVE
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000200,TO_TIMESTAMP('2013-04-30 19:44:57','YYYY-MM-DD HH24:MI:SS'),100,'Payment UnConfirmed','ECA02','Payment UnConfirmed','Y','Payment UnConfirmed',TO_TIMESTAMP('2013-04-30 19:44:57','YYYY-MM-DD HH24:MI:SS'),100,'VW_PaymentUnConfirmed')
;

-- Apr 30, 2013 7:44:59 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- Apr 30, 2013 7:45:23 PM VET
-- CONFIRM LVE
UPDATE AD_View_Trl SET Name='Pagos sin Confirmar',Description='Pagos sin Confirmar',Help='Pagos sin Confirmar',Updated=TO_TIMESTAMP('2013-04-30 19:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=3000200
;

-- Apr 30, 2013 7:45:41 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,335,3000200,3000200,TO_TIMESTAMP('2013-04-30 19:45:41','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'CP',TO_TIMESTAMP('2013-04-30 19:45:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:55 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3874,0,3000222,3000200,3000200,'CP_AccountNo','CP.AccountNo',TO_TIMESTAMP('2013-04-30 19:45:55','YYYY-MM-DD HH24:MI:SS'),100,'Account Number','ECA02','The Account Number indicates the Number assigned to this bank account. ','Y','Account No',TO_TIMESTAMP('2013-04-30 19:45:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:56 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5052,0,3000223,3000200,3000200,'CP_A_City','CP.A_City',TO_TIMESTAMP('2013-04-30 19:45:55','YYYY-MM-DD HH24:MI:SS'),100,'City or the Credit Card or Account Holder','ECA02','The Account City indicates the City of the Credit Card or Account holder','Y','Account City',TO_TIMESTAMP('2013-04-30 19:45:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:56 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8213,0,3000224,3000200,3000200,'CP_A_Country','CP.A_Country',TO_TIMESTAMP('2013-04-30 19:45:56','YYYY-MM-DD HH24:MI:SS'),100,'Country','ECA02','Account Country Name','Y','Account Country',TO_TIMESTAMP('2013-04-30 19:45:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:57 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3862,0,3000225,3000200,3000200,'CP_AD_Client_ID','CP.AD_Client_ID',TO_TIMESTAMP('2013-04-30 19:45:56','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_TIMESTAMP('2013-04-30 19:45:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:57 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3863,0,3000226,3000200,3000200,'CP_AD_Org_ID','CP.AD_Org_ID',TO_TIMESTAMP('2013-04-30 19:45:57','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_TIMESTAMP('2013-04-30 19:45:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:58 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,9565,0,3000227,3000200,3000200,'CP_AD_OrgTrx_ID','CP.AD_OrgTrx_ID',TO_TIMESTAMP('2013-04-30 19:45:57','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','Trx Organization',TO_TIMESTAMP('2013-04-30 19:45:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:58 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5029,0,3000228,3000200,3000200,'CP_A_EMail','CP.A_EMail',TO_TIMESTAMP('2013-04-30 19:45:58','YYYY-MM-DD HH24:MI:SS'),100,'Email Address','ECA02','The EMail Address indicates the EMail address off the Credit Card or Account holder.','Y','Account EMail',TO_TIMESTAMP('2013-04-30 19:45:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:59 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5027,0,3000229,3000200,3000200,'CP_A_Ident_DL','CP.A_Ident_DL',TO_TIMESTAMP('2013-04-30 19:45:58','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Driver License','ECA02','The Driver''s License being used as identification.','Y','Driver License',TO_TIMESTAMP('2013-04-30 19:45:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:45:59 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5028,0,3000230,3000200,3000200,'CP_A_Ident_SSN','CP.A_Ident_SSN',TO_TIMESTAMP('2013-04-30 19:45:59','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Social Security No','ECA02','The Social Security number being used as identification.','Y','Social Security No',TO_TIMESTAMP('2013-04-30 19:45:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:00 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5050,0,3000231,3000200,3000200,'CP_A_Name','CP.A_Name',TO_TIMESTAMP('2013-04-30 19:45:59','YYYY-MM-DD HH24:MI:SS'),100,'Name on Credit Card or Account holder','ECA02','The Name of the Credit Card or Account holder.','Y','Account Name',TO_TIMESTAMP('2013-04-30 19:45:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:00 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5053,0,3000232,3000200,3000200,'CP_A_State','CP.A_State',TO_TIMESTAMP('2013-04-30 19:46:00','YYYY-MM-DD HH24:MI:SS'),100,'State of the Credit Card or Account holder','ECA02','The State of the Credit Card or Account holder','Y','Account State',TO_TIMESTAMP('2013-04-30 19:46:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:01 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5051,0,3000233,3000200,3000200,'CP_A_Street','CP.A_Street',TO_TIMESTAMP('2013-04-30 19:46:00','YYYY-MM-DD HH24:MI:SS'),100,'Street address of the Credit Card or Account holder','ECA02','The Street Address of the Credit Card or Account holder.','Y','Account Street',TO_TIMESTAMP('2013-04-30 19:46:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:02 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5026,0,3000234,3000200,3000200,'CP_A_Zip','CP.A_Zip',TO_TIMESTAMP('2013-04-30 19:46:01','YYYY-MM-DD HH24:MI:SS'),100,'Zip Code of the Credit Card or Account Holder','ECA02','The Zip Code of the Credit Card or Account Holder.','Y','Account Zip/Postal',TO_TIMESTAMP('2013-04-30 19:46:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:02 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,9566,0,3000235,3000200,3000200,'CP_C_Activity_ID','CP.C_Activity_ID',TO_TIMESTAMP('2013-04-30 19:46:02','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity','ECA02','Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','Activity',TO_TIMESTAMP('2013-04-30 19:46:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:03 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3880,0,3000236,3000200,3000200,'CP_C_BankAccount_ID','CP.C_BankAccount_ID',TO_TIMESTAMP('2013-04-30 19:46:02','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','ECA02','The Bank Account identifies an account at this Bank.','Y','Bank Account',TO_TIMESTAMP('2013-04-30 19:46:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:03 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5398,0,3000237,3000200,3000200,'CP_C_BPartner_ID','CP.C_BPartner_ID',TO_TIMESTAMP('2013-04-30 19:46:03','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_TIMESTAMP('2013-04-30 19:46:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:04 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5298,0,3000238,3000200,3000200,'CP_C_BP_BankAccount_ID','CP.C_BP_BankAccount_ID',TO_TIMESTAMP('2013-04-30 19:46:03','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner','ECA02','The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','Partner Bank Account',TO_TIMESTAMP('2013-04-30 19:46:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:04 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,9564,0,3000239,3000200,3000200,'CP_C_Campaign_ID','CP.C_Campaign_ID',TO_TIMESTAMP('2013-04-30 19:46:04','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign','ECA02','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','Y','Campaign',TO_TIMESTAMP('2013-04-30 19:46:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:05 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,52117,0,3000240,3000200,3000200,'CP_C_CashBook_ID','CP.C_CashBook_ID',TO_TIMESTAMP('2013-04-30 19:46:04','YYYY-MM-DD HH24:MI:SS'),100,'Cash Book for recording petty cash transactions','ECA02','The Cash Book identifies a unique cash book.  The cash book is used to record cash transactions.','Y','Cash Book',TO_TIMESTAMP('2013-04-30 19:46:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:05 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8984,0,3000241,3000200,3000200,'CP_C_Charge_ID','CP.C_Charge_ID',TO_TIMESTAMP('2013-04-30 19:46:05','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','Charge',TO_TIMESTAMP('2013-04-30 19:46:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:06 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,10265,0,3000242,3000200,3000200,'CP_C_ConversionType_ID','CP.C_ConversionType_ID',TO_TIMESTAMP('2013-04-30 19:46:05','YYYY-MM-DD HH24:MI:SS'),100,'Currency Conversion Rate Type','ECA02','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.','Y','Currency Type',TO_TIMESTAMP('2013-04-30 19:46:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:06 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5299,0,3000243,3000200,3000200,'CP_C_Currency_ID','CP.C_Currency_ID',TO_TIMESTAMP('2013-04-30 19:46:06','YYYY-MM-DD HH24:MI:SS'),100,'The Currency for this record','ECA02','Indicates the Currency to be used when processing or reporting on this record','Y','Currency',TO_TIMESTAMP('2013-04-30 19:46:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:07 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5302,0,3000244,3000200,3000200,'CP_C_DocType_ID','CP.C_DocType_ID',TO_TIMESTAMP('2013-04-30 19:46:07','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Document Type',TO_TIMESTAMP('2013-04-30 19:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:08 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8980,0,3000245,3000200,3000200,'CP_ChargeAmt','CP.ChargeAmt',TO_TIMESTAMP('2013-04-30 19:46:07','YYYY-MM-DD HH24:MI:SS'),100,'Charge Amount','ECA02','The Charge Amount indicates the amount for an additional charge.','Y','Charge amount',TO_TIMESTAMP('2013-04-30 19:46:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:08 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5049,0,3000246,3000200,3000200,'CP_CheckNo','CP.CheckNo',TO_TIMESTAMP('2013-04-30 19:46:08','YYYY-MM-DD HH24:MI:SS'),100,'Check Number','ECA02','The Check Number indicates the number on the check.','Y','Check No',TO_TIMESTAMP('2013-04-30 19:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:09 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5355,0,3000247,3000200,3000200,'CP_C_Invoice_ID','CP.C_Invoice_ID',TO_TIMESTAMP('2013-04-30 19:46:08','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','Invoice',TO_TIMESTAMP('2013-04-30 19:46:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:09 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3000452,0,3000248,3000200,3000200,'CP_ConfirmDescription','CP.ConfirmDescription',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100,'Description Confirmation','ECA02','Description Confirmation of Payment','Y','Description Confirmation',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:09 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,12925,0,3000249,3000200,3000200,'CP_C_Order_ID','CP.C_Order_ID',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Order',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:09 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5300,0,3000250,3000200,3000200,'CP_C_PaymentBatch_ID','CP.C_PaymentBatch_ID',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100,'Payment batch for EFT','ECA02','Electronic Fund Transfer Payment Batch.','Y','Payment Batch',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:10 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5043,0,3000251,3000200,3000200,'CP_C_Payment_ID','CP.C_Payment_ID',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02','The Payment is a unique identifier of this payment.','Y','Payment',TO_TIMESTAMP('2013-04-30 19:46:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:11 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8554,0,3000252,3000200,3000200,'CP_C_Project_ID','CP.C_Project_ID',TO_TIMESTAMP('2013-04-30 19:46:10','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project','ECA02','A Project allows you to track and control internal or external activities.','Y','Project',TO_TIMESTAMP('2013-04-30 19:46:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:11 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3865,0,3000253,3000200,3000200,'CP_Created','CP.Created',TO_TIMESTAMP('2013-04-30 19:46:11','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2013-04-30 19:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:12 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3866,0,3000254,3000200,3000200,'CP_CreatedBy','CP.CreatedBy',TO_TIMESTAMP('2013-04-30 19:46:11','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2013-04-30 19:46:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:12 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3871,0,3000255,3000200,3000200,'CP_CreditCardExpMM','CP.CreditCardExpMM',TO_TIMESTAMP('2013-04-30 19:46:12','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Month','ECA02','The Expiry Month indicates the expiry month for this credit card.','Y','Exp. Month',TO_TIMESTAMP('2013-04-30 19:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:13 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3872,0,3000256,3000200,3000200,'CP_CreditCardExpYY','CP.CreditCardExpYY',TO_TIMESTAMP('2013-04-30 19:46:12','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Year','ECA02','The Expiry Year indicates the expiry year for this credit card.','Y','Exp. Year',TO_TIMESTAMP('2013-04-30 19:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:14 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3870,0,3000257,3000200,3000200,'CP_CreditCardNumber','CP.CreditCardNumber',TO_TIMESTAMP('2013-04-30 19:46:13','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Number ','ECA02','The Credit Card number indicates the number on the credit card, without blanks or spaces.','Y','Number',TO_TIMESTAMP('2013-04-30 19:46:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:14 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3869,0,3000258,3000200,3000200,'CP_CreditCardType','CP.CreditCardType',TO_TIMESTAMP('2013-04-30 19:46:14','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card (Visa, MC, AmEx)','ECA02','The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.','Y','Credit Card',TO_TIMESTAMP('2013-04-30 19:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:14 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5047,0,3000259,3000200,3000200,'CP_CreditCardVV','CP.CreditCardVV',TO_TIMESTAMP('2013-04-30 19:46:14','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification code on credit card','ECA02','The Credit Card Verification indicates the verification code on the credit card (AMEX 4 digits on front; MC,Visa 3 digits back)','Y','Verification Code',TO_TIMESTAMP('2013-04-30 19:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:15 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,12128,0,3000260,3000200,3000200,'CP_DateAcct','CP.DateAcct',TO_TIMESTAMP('2013-04-30 19:46:14','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Account Date',TO_TIMESTAMP('2013-04-30 19:46:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:15 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5399,0,3000261,3000200,3000200,'CP_DateTrx','CP.DateTrx',TO_TIMESTAMP('2013-04-30 19:46:15','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date','ECA02','The Transaction Date indicates the date of the transaction.','Y','Transaction Date',TO_TIMESTAMP('2013-04-30 19:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:16 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,12127,0,3000262,3000200,3000200,'CP_Description','CP.Description',TO_TIMESTAMP('2013-04-30 19:46:15','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','Description',TO_TIMESTAMP('2013-04-30 19:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:16 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5301,0,3000263,3000200,3000200,'CP_DiscountAmt','CP.DiscountAmt',TO_TIMESTAMP('2013-04-30 19:46:16','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount','ECA02','The Discount Amount indicates the discount amount for a document or line.','Y','Discount Amount',TO_TIMESTAMP('2013-04-30 19:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:17 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5497,0,3000264,3000200,3000200,'CP_DocAction','CP.DocAction',TO_TIMESTAMP('2013-04-30 19:46:16','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Document Action',TO_TIMESTAMP('2013-04-30 19:46:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:17 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5496,0,3000265,3000200,3000200,'CP_DocStatus','CP.DocStatus',TO_TIMESTAMP('2013-04-30 19:46:17','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_TIMESTAMP('2013-04-30 19:46:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:18 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5401,0,3000266,3000200,3000200,'CP_DocumentNo','CP.DocumentNo',TO_TIMESTAMP('2013-04-30 19:46:17','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_TIMESTAMP('2013-04-30 19:46:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:19 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3864,0,3000267,3000200,3000200,'CP_IsActive','CP.IsActive',TO_TIMESTAMP('2013-04-30 19:46:18','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_TIMESTAMP('2013-04-30 19:46:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:19 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5400,0,3000268,3000200,3000200,'CP_IsAllocated','CP.IsAllocated',TO_TIMESTAMP('2013-04-30 19:46:19','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the payment has been allocated','ECA02','The Allocated checkbox indicates if a payment has been allocated or associated with an invoice or invoices.','Y','Allocated',TO_TIMESTAMP('2013-04-30 19:46:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:20 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3875,0,3000269,3000200,3000200,'CP_IsApproved','CP.IsApproved',TO_TIMESTAMP('2013-04-30 19:46:19','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Approved',TO_TIMESTAMP('2013-04-30 19:46:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:20 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8979,0,3000270,3000200,3000200,'CP_IsDelayedCapture','CP.IsDelayedCapture',TO_TIMESTAMP('2013-04-30 19:46:20','YYYY-MM-DD HH24:MI:SS'),100,'Charge after Shipment','ECA02','Delayed Capture is required, if you ship products.  The first credit card transaction is the Authorization, the second is the actual transaction after the shipment of the product.','Y','Delayed Capture',TO_TIMESTAMP('2013-04-30 19:46:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:21 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5495,0,3000271,3000200,3000200,'CP_IsOnline','CP.IsOnline',TO_TIMESTAMP('2013-04-30 19:46:20','YYYY-MM-DD HH24:MI:SS'),100,'Can be accessed online ','ECA02','The Online Access check box indicates if the application can be accessed via the web. ','Y','Online Access',TO_TIMESTAMP('2013-04-30 19:46:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:21 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,7035,0,3000272,3000200,3000200,'CP_IsOverUnderPayment','CP.IsOverUnderPayment',TO_TIMESTAMP('2013-04-30 19:46:21','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment)','ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','Over/Under Payment',TO_TIMESTAMP('2013-04-30 19:46:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:22 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,13045,0,3000273,3000200,3000200,'CP_IsPrepayment','CP.IsPrepayment',TO_TIMESTAMP('2013-04-30 19:46:21','YYYY-MM-DD HH24:MI:SS'),100,'The Payment/Receipt is a Prepayment','ECA02','Payments not allocated to an invoice with a charge are posted to Unallocated Payments. When setting this flag, the payment is posted to the Customer or Vendor Prepayment account.','Y','Prepayment',TO_TIMESTAMP('2013-04-30 19:46:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:22 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,6216,0,3000274,3000200,3000200,'CP_IsReceipt','CP.IsReceipt',TO_TIMESTAMP('2013-04-30 19:46:22','YYYY-MM-DD HH24:MI:SS'),100,'This is a sales transaction (receipt)','ECA02','Y','Receipt',TO_TIMESTAMP('2013-04-30 19:46:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:23 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,3879,0,3000275,3000200,3000200,'CP_IsReconciled','CP.IsReconciled',TO_TIMESTAMP('2013-04-30 19:46:22','YYYY-MM-DD HH24:MI:SS'),100,'Payment is reconciled with bank statement','ECA02','Y','Reconciled',TO_TIMESTAMP('2013-04-30 19:46:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:23 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8775,0,3000276,3000200,3000200,'CP_IsSelfService','CP.IsSelfService',TO_TIMESTAMP('2013-04-30 19:46:23','YYYY-MM-DD HH24:MI:SS'),100,'This is a Self-Service entry or this entry can be changed via Self-Service','ECA02','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.','Y','Self-Service',TO_TIMESTAMP('2013-04-30 19:46:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:24 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5048,0,3000277,3000200,3000200,'CP_Micr','CP.Micr',TO_TIMESTAMP('2013-04-30 19:46:23','YYYY-MM-DD HH24:MI:SS'),100,'Combination of routing no, account and check no','ECA02','The Micr number is the combination of the bank routing number, account number and check number','Y','Micr',TO_TIMESTAMP('2013-04-30 19:46:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:24 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5356,0,3000278,3000200,3000200,'CP_OProcessing','CP.OProcessing',TO_TIMESTAMP('2013-04-30 19:46:24','YYYY-MM-DD HH24:MI:SS'),100,'This payment can be processed online','ECA02','The Online Processing indicates if the payment can be processed online.','Y','Online Processing',TO_TIMESTAMP('2013-04-30 19:46:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:25 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5031,0,3000279,3000200,3000200,'CP_Orig_TrxID','CP.Orig_TrxID',TO_TIMESTAMP('2013-04-30 19:46:25','YYYY-MM-DD HH24:MI:SS'),100,'Original Transaction ID','ECA02','The Original Transaction ID is used for reversing transactions and indicates the transaction that has been reversed.','Y','Original Transaction ID',TO_TIMESTAMP('2013-04-30 19:46:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:25 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,7034,0,3000280,3000200,3000200,'CP_OverUnderAmt','CP.OverUnderAmt',TO_TIMESTAMP('2013-04-30 19:46:25','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment) Amount','ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','Over/Under Payment',TO_TIMESTAMP('2013-04-30 19:46:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:26 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5303,0,3000281,3000200,3000200,'CP_PayAmt','CP.PayAmt',TO_TIMESTAMP('2013-04-30 19:46:25','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','Payment amount',TO_TIMESTAMP('2013-04-30 19:46:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:26 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,3000453,0,3000282,3000200,3000200,'CP_PayConfirm_ID','CP.PayConfirm_ID',TO_TIMESTAMP('2013-04-30 19:46:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Payment Confirm',TO_TIMESTAMP('2013-04-30 19:46:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:27 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5032,0,3000283,3000200,3000200,'CP_PONum','CP.PONum',TO_TIMESTAMP('2013-04-30 19:46:27','YYYY-MM-DD HH24:MI:SS'),100,'Purchase Order Number','ECA02','The PO Number indicates the number assigned to a purchase order','Y','PO Number',TO_TIMESTAMP('2013-04-30 19:46:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:28 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5042,0,3000284,3000200,3000200,'CP_Posted','CP.Posted',TO_TIMESTAMP('2013-04-30 19:46:27','YYYY-MM-DD HH24:MI:SS'),100,'Posting status','ECA02','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Y','Posted',TO_TIMESTAMP('2013-04-30 19:46:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:28 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3878,0,3000285,3000200,3000200,'CP_Processed','CP.Processed',TO_TIMESTAMP('2013-04-30 19:46:28','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','Processed',TO_TIMESTAMP('2013-04-30 19:46:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:29 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,59039,0,3000286,3000200,3000200,'CP_ProcessedOn','CP.ProcessedOn',TO_TIMESTAMP('2013-04-30 19:46:28','YYYY-MM-DD HH24:MI:SS'),100,'The date+time (expressed in decimal format) when the document has been processed','ECA02','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Y','Processed On',TO_TIMESTAMP('2013-04-30 19:46:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:29 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,3877,0,3000287,3000200,3000200,'CP_Processing','CP.Processing',TO_TIMESTAMP('2013-04-30 19:46:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Process Now',TO_TIMESTAMP('2013-04-30 19:46:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:30 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5038,0,3000288,3000200,3000200,'CP_R_AuthCode','CP.R_AuthCode',TO_TIMESTAMP('2013-04-30 19:46:29','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code returned','ECA02','The Authorization Code indicates the code returned from the electronic transmission.','Y','Authorization Code',TO_TIMESTAMP('2013-04-30 19:46:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:30 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8981,0,3000289,3000200,3000200,'CP_R_AuthCode_DC','CP.R_AuthCode_DC',TO_TIMESTAMP('2013-04-30 19:46:30','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code Delayed Capture returned','ECA02','The Authorization Code indicates the code returned from the electronic transmission.','Y','Authorization Code (DC)',TO_TIMESTAMP('2013-04-30 19:46:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:31 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5039,0,3000290,3000200,3000200,'CP_R_AvsAddr','CP.R_AvsAddr',TO_TIMESTAMP('2013-04-30 19:46:30','YYYY-MM-DD HH24:MI:SS'),100,'This address has been verified','ECA02','The Address Verified indicates if the address has been verified by the Credit Card Company.','Y','Address verified',TO_TIMESTAMP('2013-04-30 19:46:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:31 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5040,0,3000291,3000200,3000200,'CP_R_AvsZip','CP.R_AvsZip',TO_TIMESTAMP('2013-04-30 19:46:31','YYYY-MM-DD HH24:MI:SS'),100,'The Zip Code has been verified','ECA02','The Zip Verified indicates if the zip code has been verified by the Credit Card Company.','Y','Zip verified',TO_TIMESTAMP('2013-04-30 19:46:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:32 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8982,0,3000292,3000200,3000200,'CP_R_CVV2Match','CP.R_CVV2Match',TO_TIMESTAMP('2013-04-30 19:46:31','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification Code Match','ECA02','The Credit Card Verification Code was matched','Y','CVV Match',TO_TIMESTAMP('2013-04-30 19:46:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:32 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,13705,0,3000293,3000200,3000200,'CP_Ref_Payment_ID','CP.Ref_Payment_ID',TO_TIMESTAMP('2013-04-30 19:46:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Referenced Payment',TO_TIMESTAMP('2013-04-30 19:46:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:33 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,55309,0,3000294,3000200,3000200,'CP_Reversal_ID','CP.Reversal_ID',TO_TIMESTAMP('2013-04-30 19:46:32','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal','ECA02','Y','Reversal ID',TO_TIMESTAMP('2013-04-30 19:46:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:34 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5041,0,3000295,3000200,3000200,'CP_R_Info','CP.R_Info',TO_TIMESTAMP('2013-04-30 19:46:33','YYYY-MM-DD HH24:MI:SS'),100,'Response info','ECA02','The Info indicates any response information returned from the Credit Card Company.','Y','Info',TO_TIMESTAMP('2013-04-30 19:46:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:34 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3873,0,3000296,3000200,3000200,'CP_RoutingNo','CP.RoutingNo',TO_TIMESTAMP('2013-04-30 19:46:34','YYYY-MM-DD HH24:MI:SS'),100,'Bank Routing Number','ECA02','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.','Y','Routing No',TO_TIMESTAMP('2013-04-30 19:46:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:35 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5035,0,3000297,3000200,3000200,'CP_R_PnRef','CP.R_PnRef',TO_TIMESTAMP('2013-04-30 19:46:34','YYYY-MM-DD HH24:MI:SS'),100,'Payment reference','ECA02','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','Y','Reference',TO_TIMESTAMP('2013-04-30 19:46:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:35 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8983,0,3000298,3000200,3000200,'CP_R_PnRef_DC','CP.R_PnRef_DC',TO_TIMESTAMP('2013-04-30 19:46:35','YYYY-MM-DD HH24:MI:SS'),100,'Payment Reference Delayed Capture','ECA02','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','Y','Reference (DC)',TO_TIMESTAMP('2013-04-30 19:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:36 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5037,0,3000299,3000200,3000200,'CP_R_RespMsg','CP.R_RespMsg',TO_TIMESTAMP('2013-04-30 19:46:35','YYYY-MM-DD HH24:MI:SS'),100,'Response message','ECA02','The Response Message indicates the message returned from the Credit Card Company as the result of a transmission','Y','Response Message',TO_TIMESTAMP('2013-04-30 19:46:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:36 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5036,0,3000300,3000200,3000200,'CP_R_Result','CP.R_Result',TO_TIMESTAMP('2013-04-30 19:46:36','YYYY-MM-DD HH24:MI:SS'),100,'Result of transmission','ECA02','The Response Result indicates the result of the transmission to the Credit Card Company.','Y','Result',TO_TIMESTAMP('2013-04-30 19:46:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:37 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,8985,0,3000301,3000200,3000200,'CP_Swipe','CP.Swipe',TO_TIMESTAMP('2013-04-30 19:46:36','YYYY-MM-DD HH24:MI:SS'),100,'Track 1 and 2 of the Credit Card','ECA02','Swiped information for Credit Card Presence Transactions','Y','Swipe',TO_TIMESTAMP('2013-04-30 19:46:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:37 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5034,0,3000302,3000200,3000200,'CP_TaxAmt','CP.TaxAmt',TO_TIMESTAMP('2013-04-30 19:46:37','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document','ECA02','The Tax Amount displays the total tax amount for a document.','Y','Tax Amount',TO_TIMESTAMP('2013-04-30 19:46:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:38 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5046,0,3000303,3000200,3000200,'CP_TenderType','CP.TenderType',TO_TIMESTAMP('2013-04-30 19:46:37','YYYY-MM-DD HH24:MI:SS'),100,'Method of Payment','ECA02','The Tender Type indicates the method of payment (ACH or Direct Deposit, Credit Card, Check, Direct Debit)','Y','Tender type',TO_TIMESTAMP('2013-04-30 19:46:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:39 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5044,0,3000304,3000200,3000200,'CP_TrxType','CP.TrxType',TO_TIMESTAMP('2013-04-30 19:46:38','YYYY-MM-DD HH24:MI:SS'),100,'Type of credit card transaction','ECA02','The Transaction Type indicates the type of transaction to be submitted to the Credit Card Company.','Y','Transaction Type',TO_TIMESTAMP('2013-04-30 19:46:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:39 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3867,0,3000305,3000200,3000200,'CP_Updated','CP.Updated',TO_TIMESTAMP('2013-04-30 19:46:39','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2013-04-30 19:46:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:39 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,3868,0,3000306,3000200,3000200,'CP_UpdatedBy','CP.UpdatedBy',TO_TIMESTAMP('2013-04-30 19:46:39','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2013-04-30 19:46:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:40 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,9563,0,3000307,3000200,3000200,'CP_User1_ID','CP.User1_ID',TO_TIMESTAMP('2013-04-30 19:46:39','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1','ECA02','The user defined element displays the optional elements that have been defined for this account combination.','Y','User List 1',TO_TIMESTAMP('2013-04-30 19:46:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:40 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,9567,0,3000308,3000200,3000200,'CP_User2_ID','CP.User2_ID',TO_TIMESTAMP('2013-04-30 19:46:40','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #2','ECA02','The user defined element displays the optional elements that have been defined for this account combination.','Y','User List 2',TO_TIMESTAMP('2013-04-30 19:46:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:41 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,5030,0,3000309,3000200,3000200,'CP_VoiceAuthCode','CP.VoiceAuthCode',TO_TIMESTAMP('2013-04-30 19:46:40','YYYY-MM-DD HH24:MI:SS'),100,'Voice Authorization Code from credit card company','ECA02','The Voice Authorization Code indicates the code received from the Credit Card Company.','Y','Voice authorization code',TO_TIMESTAMP('2013-04-30 19:46:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:46:42 PM VET
-- CONFIRM LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,6475,0,3000310,3000200,3000200,'CP_WriteOffAmt','CP.WriteOffAmt',TO_TIMESTAMP('2013-04-30 19:46:41','YYYY-MM-DD HH24:MI:SS'),100,'Amount to write-off','ECA02','The Write Off Amount indicates the amount to be written off as uncollectible.','Y','Write-off Amount',TO_TIMESTAMP('2013-04-30 19:46:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 7:56:33 PM VET
-- CONFIRM LVE
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000204,'org.erpca.process.PaymentConfirmation','N',TO_TIMESTAMP('2013-04-30 19:56:32','YYYY-MM-DD HH24:MI:SS'),100,'Payment Confirmation','ECA02','Payment Confirmation','Y','N','N','N','N','Payment Confirmation','Y',0,0,TO_TIMESTAMP('2013-04-30 19:56:32','YYYY-MM-DD HH24:MI:SS'),100,'prc_PaymentConfirmation')
;

-- Apr 30, 2013 7:56:33 PM VET
-- CONFIRM LVE
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Apr 30, 2013 8:04:45 PM VET
-- CONFIRM LVE
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,836,0,3000204,3000211,19,'C_BankAccount_ID',TO_TIMESTAMP('2013-04-30 20:04:44','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','ECA02',22,'The Bank Account identifies an account at this Bank.','Y','Y','Y','N','Bank Account',10,TO_TIMESTAMP('2013-04-30 20:04:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 8:04:45 PM VET
-- CONFIRM LVE
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 3, 2013 3:48:39 PM VET
-- Retention LVE
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value,WhereClause) VALUES ('3',3000201,0,0,3000204,3000200,TO_TIMESTAMP('2013-05-03 15:48:37','YYYY-MM-DD HH24:MI:SS'),100,'Check Confirmation','ECA02','Check Confirmation','Y','N','Check Confirmation','N',TO_TIMESTAMP('2013-05-03 15:48:37','YYYY-MM-DD HH24:MI:SS'),100,'SB_CheckConfirmation','TenderType = ''X'' And PayConfirm_ID Is Null ')
;

-- May 3, 2013 3:48:39 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- May 3, 2013 3:50:04 PM VET
-- Retention LVE
UPDATE AD_Browse_Trl SET Name='Confirmación de Cheques',Description='Confirmación de Cheques',Help='Confirmación de Cheques',Updated=TO_TIMESTAMP('2013-05-03 15:50:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=3000201 AND AD_Language='es_MX'
;

-- May 3, 2013 3:50:14 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000201,3000201,0,840,0,10,3000222,TO_TIMESTAMP('2013-05-03 15:50:11','YYYY-MM-DD HH24:MI:SS'),100,'Account Number','ECA02','The Account Number indicates the Number assigned to this bank account. ','Y','N','N','N','N','N','N','Account No',10,TO_TIMESTAMP('2013-05-03 15:50:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:14 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:17 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000202,3000201,0,1350,0,10,3000223,TO_TIMESTAMP('2013-05-03 15:50:14','YYYY-MM-DD HH24:MI:SS'),100,'City or the Credit Card or Account Holder','ECA02','The Account City indicates the City of the Credit Card or Account holder','Y','N','N','N','N','N','N','Account City',11,TO_TIMESTAMP('2013-05-03 15:50:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:17 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000202 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000203,3000201,0,1988,0,10,3000224,TO_TIMESTAMP('2013-05-03 15:50:17','YYYY-MM-DD HH24:MI:SS'),100,'Country','ECA02','Account Country Name','Y','N','N','N','N','N','N','Account Country',12,TO_TIMESTAMP('2013-05-03 15:50:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:22 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000204,3000201,0,102,0,19,3000225,TO_TIMESTAMP('2013-05-03 15:50:20','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',13,TO_TIMESTAMP('2013-05-03 15:50:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:22 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:24 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000205,3000201,0,113,0,19,3000226,TO_TIMESTAMP('2013-05-03 15:50:22','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',14,TO_TIMESTAMP('2013-05-03 15:50:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:24 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:25 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000206,3000201,0,112,0,18,130,3000227,TO_TIMESTAMP('2013-05-03 15:50:24','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','N','N','N','N','N','N','Trx Organization',15,TO_TIMESTAMP('2013-05-03 15:50:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:25 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:26 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000207,3000201,0,1351,0,10,3000228,TO_TIMESTAMP('2013-05-03 15:50:25','YYYY-MM-DD HH24:MI:SS'),100,'Email Address','ECA02','The EMail Address indicates the EMail address off the Credit Card or Account holder.','Y','N','N','N','N','N','N','Account EMail',16,TO_TIMESTAMP('2013-05-03 15:50:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:26 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:27 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000208,3000201,0,1352,0,10,3000229,TO_TIMESTAMP('2013-05-03 15:50:26','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Driver License','ECA02','The Driver''s License being used as identification.','Y','N','N','N','N','N','N','Driver License',17,TO_TIMESTAMP('2013-05-03 15:50:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:27 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:29 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000209,3000201,0,1353,0,10,3000230,TO_TIMESTAMP('2013-05-03 15:50:27','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Social Security No','ECA02','The Social Security number being used as identification.','Y','N','N','N','N','N','N','Social Security No',18,TO_TIMESTAMP('2013-05-03 15:50:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:29 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:32 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000210,3000201,0,1354,0,10,3000231,TO_TIMESTAMP('2013-05-03 15:50:29','YYYY-MM-DD HH24:MI:SS'),100,'Name on Credit Card or Account holder','ECA02','The Name of the Credit Card or Account holder.','Y','N','Y','N','N','N','N','Account Name',19,TO_TIMESTAMP('2013-05-03 15:50:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:32 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000210 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000211,3000201,0,1355,0,10,3000232,TO_TIMESTAMP('2013-05-03 15:50:32','YYYY-MM-DD HH24:MI:SS'),100,'State of the Credit Card or Account holder','ECA02','The State of the Credit Card or Account holder','Y','N','N','N','N','N','N','Account State',20,TO_TIMESTAMP('2013-05-03 15:50:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:37 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000212,3000201,0,1356,0,10,3000233,TO_TIMESTAMP('2013-05-03 15:50:35','YYYY-MM-DD HH24:MI:SS'),100,'Street address of the Credit Card or Account holder','ECA02','The Street Address of the Credit Card or Account holder.','Y','N','N','N','N','N','N','Account Street',21,TO_TIMESTAMP('2013-05-03 15:50:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:37 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:44 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000213,3000201,0,1357,0,10,3000234,TO_TIMESTAMP('2013-05-03 15:50:38','YYYY-MM-DD HH24:MI:SS'),100,'Zip Code of the Credit Card or Account Holder','ECA02','The Zip Code of the Credit Card or Account Holder.','Y','N','N','N','N','N','N','Account Zip/Postal',22,TO_TIMESTAMP('2013-05-03 15:50:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:44 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000213 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000214,3000201,0,1005,0,19,3000235,TO_TIMESTAMP('2013-05-03 15:50:44','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity','ECA02','Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','N','N','N','N','N','N','Activity',23,TO_TIMESTAMP('2013-05-03 15:50:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000214 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:46 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000215,3000201,0,836,0,19,3000236,TO_TIMESTAMP('2013-05-03 15:50:45','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','ECA02','The Bank Account identifies an account at this Bank.','Y','N','N','N','N','N','N','Bank Account',24,TO_TIMESTAMP('2013-05-03 15:50:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:46 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000215 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000216,3000201,0,187,0,30,3000237,TO_TIMESTAMP('2013-05-03 15:50:46','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',25,TO_TIMESTAMP('2013-05-03 15:50:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000216 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:49 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000217,3000201,0,837,0,19,3000238,TO_TIMESTAMP('2013-05-03 15:50:48','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner','ECA02','The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','N','N','N','N','N','N','Partner Bank Account',26,TO_TIMESTAMP('2013-05-03 15:50:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:50 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000217 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:51 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000218,3000201,0,550,0,19,3000239,TO_TIMESTAMP('2013-05-03 15:50:50','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign','ECA02','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','Y','N','N','N','N','N','N','Campaign',27,TO_TIMESTAMP('2013-05-03 15:50:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:51 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000218 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:53 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000219,3000201,0,1463,0,19,3000240,TO_TIMESTAMP('2013-05-03 15:50:51','YYYY-MM-DD HH24:MI:SS'),100,'Cash Book for recording petty cash transactions','ECA02','The Cash Book identifies a unique cash book.  The cash book is used to record cash transactions.','Y','N','N','N','N','N','N','Cash Book',28,TO_TIMESTAMP('2013-05-03 15:50:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:53 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000219 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:50:58 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000220,3000201,0,968,0,19,3000241,TO_TIMESTAMP('2013-05-03 15:50:53','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','N','N','N','N','N','N','Charge',29,TO_TIMESTAMP('2013-05-03 15:50:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:50:58 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000220 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000221,3000201,0,2278,0,19,3000242,TO_TIMESTAMP('2013-05-03 15:50:58','YYYY-MM-DD HH24:MI:SS'),100,'Currency Conversion Rate Type','ECA02','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.','Y','N','N','N','N','N','N','Currency Type',30,TO_TIMESTAMP('2013-05-03 15:50:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000221 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:04 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000222,3000201,0,193,0,19,3000243,TO_TIMESTAMP('2013-05-03 15:51:01','YYYY-MM-DD HH24:MI:SS'),100,'The Currency for this record','ECA02','Indicates the Currency to be used when processing or reporting on this record','Y','N','N','N','N','N','N','Currency',31,TO_TIMESTAMP('2013-05-03 15:51:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:04 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000222 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:07 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000223,3000201,0,196,0,19,3000244,TO_TIMESTAMP('2013-05-03 15:51:04','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',32,TO_TIMESTAMP('2013-05-03 15:51:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:07 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000223 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:09 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000224,3000201,0,849,0,12,3000245,TO_TIMESTAMP('2013-05-03 15:51:07','YYYY-MM-DD HH24:MI:SS'),100,'Charge Amount','ECA02','The Charge Amount indicates the amount for an additional charge.','Y','N','N','N','N','N','N','Charge amount',33,TO_TIMESTAMP('2013-05-03 15:51:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:09 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000224 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:10 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000225,3000201,0,1389,0,10,3000246,TO_TIMESTAMP('2013-05-03 15:51:09','YYYY-MM-DD HH24:MI:SS'),100,'Check Number','ECA02','The Check Number indicates the number on the check.','Y','N','N','N','N','N','N','Check No',34,TO_TIMESTAMP('2013-05-03 15:51:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:10 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000225 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:12 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000226,3000201,0,1008,0,30,3000247,TO_TIMESTAMP('2013-05-03 15:51:10','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',35,TO_TIMESTAMP('2013-05-03 15:51:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:12 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000226 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:13 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000227,3000201,0,3000252,0,14,3000248,TO_TIMESTAMP('2013-05-03 15:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Description Confirmation','ECA02','Description Confirmation of Payment','Y','N','N','N','N','N','N','Description Confirmation',36,TO_TIMESTAMP('2013-05-03 15:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:13 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000227 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:15 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000228,3000201,0,558,0,30,3000249,TO_TIMESTAMP('2013-05-03 15:51:13','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',37,TO_TIMESTAMP('2013-05-03 15:51:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:15 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000228 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:18 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000229,3000201,0,1465,0,19,3000250,TO_TIMESTAMP('2013-05-03 15:51:15','YYYY-MM-DD HH24:MI:SS'),100,'Payment batch for EFT','ECA02','Electronic Fund Transfer Payment Batch.','Y','N','N','N','N','N','N','Payment Batch',38,TO_TIMESTAMP('2013-05-03 15:51:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:18 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000229 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000230,3000201,0,1384,0,13,3000251,TO_TIMESTAMP('2013-05-03 15:51:18','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02','The Payment is a unique identifier of this payment.','Y','N','N','N','N','N','N','Payment',39,TO_TIMESTAMP('2013-05-03 15:51:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000230 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:23 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000231,3000201,0,208,0,19,3000252,TO_TIMESTAMP('2013-05-03 15:51:20','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project','ECA02','A Project allows you to track and control internal or external activities.','Y','N','N','N','N','N','N','Project',40,TO_TIMESTAMP('2013-05-03 15:51:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:23 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000231 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000232,3000201,0,245,0,16,3000253,TO_TIMESTAMP('2013-05-03 15:51:23','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',41,TO_TIMESTAMP('2013-05-03 15:51:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000232 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:29 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000233,3000201,0,246,0,18,110,3000254,TO_TIMESTAMP('2013-05-03 15:51:28','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',42,TO_TIMESTAMP('2013-05-03 15:51:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:29 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000233 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:31 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000234,3000201,0,1084,0,11,3000255,TO_TIMESTAMP('2013-05-03 15:51:29','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Month','ECA02','The Expiry Month indicates the expiry month for this credit card.','Y','N','N','N','N','N','N','Exp. Month',43,TO_TIMESTAMP('2013-05-03 15:51:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:31 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000234 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000235,3000201,0,1085,0,11,3000256,TO_TIMESTAMP('2013-05-03 15:51:31','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Year','ECA02','The Expiry Year indicates the expiry year for this credit card.','Y','N','N','N','N','N','N','Exp. Year',44,TO_TIMESTAMP('2013-05-03 15:51:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000235 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000236,3000201,0,249,0,10,3000257,TO_TIMESTAMP('2013-05-03 15:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Number ','ECA02','The Credit Card number indicates the number on the credit card, without blanks or spaces.','Y','N','N','N','N','N','N','Number',45,TO_TIMESTAMP('2013-05-03 15:51:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000236 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000237,3000201,0,1012,0,17,149,3000258,TO_TIMESTAMP('2013-05-03 15:51:35','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card (Visa, MC, AmEx)','ECA02','The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.','Y','N','N','N','N','N','N','Credit Card',46,TO_TIMESTAMP('2013-05-03 15:51:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000237 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:41 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000238,3000201,0,1393,0,10,3000259,TO_TIMESTAMP('2013-05-03 15:51:38','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification code on credit card','ECA02','The Credit Card Verification indicates the verification code on the credit card (AMEX 4 digits on front; MC,Visa 3 digits back)','Y','N','N','N','N','N','N','Verification Code',47,TO_TIMESTAMP('2013-05-03 15:51:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:41 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000238 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000239,3000201,0,263,0,15,3000260,TO_TIMESTAMP('2013-05-03 15:51:41','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','Account Date',48,TO_TIMESTAMP('2013-05-03 15:51:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000239 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:47 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000240,3000201,0,1297,0,15,3000261,TO_TIMESTAMP('2013-05-03 15:51:45','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date','ECA02','The Transaction Date indicates the date of the transaction.','Y','N','Y','N','N','N','N','Transaction Date',49,TO_TIMESTAMP('2013-05-03 15:51:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:47 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000240 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:50 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000241,3000201,0,275,0,10,3000262,TO_TIMESTAMP('2013-05-03 15:51:47','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','N','N','N','N','N','N','Description',50,TO_TIMESTAMP('2013-05-03 15:51:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:50 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000241 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:51 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000242,3000201,0,1395,0,12,3000263,TO_TIMESTAMP('2013-05-03 15:51:50','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount','ECA02','The Discount Amount indicates the discount amount for a document or line.','Y','N','N','N','N','N','N','Discount Amount',51,TO_TIMESTAMP('2013-05-03 15:51:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:51 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000242 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:53 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000243,3000201,0,287,0,28,135,3000264,TO_TIMESTAMP('2013-05-03 15:51:51','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',52,TO_TIMESTAMP('2013-05-03 15:51:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:53 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000243 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:54 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000244,3000201,0,289,0,17,131,3000265,TO_TIMESTAMP('2013-05-03 15:51:53','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',53,TO_TIMESTAMP('2013-05-03 15:51:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:54 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000244 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:56 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000245,3000201,0,290,0,10,3000266,TO_TIMESTAMP('2013-05-03 15:51:54','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','Y','N','N','N','N','Document No',54,TO_TIMESTAMP('2013-05-03 15:51:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:56 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000245 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:51:59 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000246,3000201,0,348,0,20,3000267,TO_TIMESTAMP('2013-05-03 15:51:56','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',55,TO_TIMESTAMP('2013-05-03 15:51:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:51:59 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000246 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:52:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000247,3000201,0,1508,0,20,3000268,TO_TIMESTAMP('2013-05-03 15:51:59','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the payment has been allocated','ECA02','The Allocated checkbox indicates if a payment has been allocated or associated with an invoice or invoices.','Y','N','N','N','N','N','N','Allocated',56,TO_TIMESTAMP('2013-05-03 15:51:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:52:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000247 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:52:03 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000248,3000201,0,351,0,20,3000269,TO_TIMESTAMP('2013-05-03 15:52:01','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','N','N','N','N','N','N','Approved',57,TO_TIMESTAMP('2013-05-03 15:52:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:52:03 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000248 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:52:04 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000249,3000201,0,2107,0,20,3000270,TO_TIMESTAMP('2013-05-03 15:52:03','YYYY-MM-DD HH24:MI:SS'),100,'Charge after Shipment','ECA02','Delayed Capture is required, if you ship products.  The first credit card transaction is the Authorization, the second is the actual transaction after the shipment of the product.','Y','N','N','N','N','N','N','Delayed Capture',58,TO_TIMESTAMP('2013-05-03 15:52:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:52:04 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000249 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:24 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000250,3000201,0,840,0,10,3000222,TO_TIMESTAMP('2013-05-03 15:54:22','YYYY-MM-DD HH24:MI:SS'),100,'Account Number','ECA02','The Account Number indicates the Number assigned to this bank account. ','Y','N','N','N','N','N','N','Account No',10,TO_TIMESTAMP('2013-05-03 15:54:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:24 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000250 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:26 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000251,3000201,0,1350,0,10,3000223,TO_TIMESTAMP('2013-05-03 15:54:24','YYYY-MM-DD HH24:MI:SS'),100,'City or the Credit Card or Account Holder','ECA02','The Account City indicates the City of the Credit Card or Account holder','Y','N','N','N','N','N','N','Account City',11,TO_TIMESTAMP('2013-05-03 15:54:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:26 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000251 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000252,3000201,0,1988,0,10,3000224,TO_TIMESTAMP('2013-05-03 15:54:26','YYYY-MM-DD HH24:MI:SS'),100,'Country','ECA02','Account Country Name','Y','N','N','N','N','N','N','Account Country',12,TO_TIMESTAMP('2013-05-03 15:54:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000252 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:30 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000253,3000201,0,102,0,19,3000225,TO_TIMESTAMP('2013-05-03 15:54:28','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',13,TO_TIMESTAMP('2013-05-03 15:54:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:30 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000253 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:32 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000254,3000201,0,113,0,19,3000226,TO_TIMESTAMP('2013-05-03 15:54:30','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',14,TO_TIMESTAMP('2013-05-03 15:54:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:32 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000254 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000255,3000201,0,112,0,18,130,3000227,TO_TIMESTAMP('2013-05-03 15:54:32','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','N','N','N','N','N','N','Trx Organization',15,TO_TIMESTAMP('2013-05-03 15:54:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000255 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:34 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000256,3000201,0,1351,0,10,3000228,TO_TIMESTAMP('2013-05-03 15:54:33','YYYY-MM-DD HH24:MI:SS'),100,'Email Address','ECA02','The EMail Address indicates the EMail address off the Credit Card or Account holder.','Y','N','N','N','N','N','N','Account EMail',16,TO_TIMESTAMP('2013-05-03 15:54:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:34 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000256 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000257,3000201,0,1352,0,10,3000229,TO_TIMESTAMP('2013-05-03 15:54:34','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Driver License','ECA02','The Driver''s License being used as identification.','Y','N','N','N','N','N','N','Driver License',17,TO_TIMESTAMP('2013-05-03 15:54:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000257 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:37 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000258,3000201,0,1353,0,10,3000230,TO_TIMESTAMP('2013-05-03 15:54:35','YYYY-MM-DD HH24:MI:SS'),100,'Payment Identification - Social Security No','ECA02','The Social Security number being used as identification.','Y','N','N','N','N','N','N','Social Security No',18,TO_TIMESTAMP('2013-05-03 15:54:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:37 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000258 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000259,3000201,0,1354,0,10,3000231,TO_TIMESTAMP('2013-05-03 15:54:37','YYYY-MM-DD HH24:MI:SS'),100,'Name on Credit Card or Account holder','ECA02','The Name of the Credit Card or Account holder.','Y','N','Y','N','N','N','N','Account Name',19,TO_TIMESTAMP('2013-05-03 15:54:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000259 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:40 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000260,3000201,0,1355,0,10,3000232,TO_TIMESTAMP('2013-05-03 15:54:38','YYYY-MM-DD HH24:MI:SS'),100,'State of the Credit Card or Account holder','ECA02','The State of the Credit Card or Account holder','Y','N','N','N','N','N','N','Account State',20,TO_TIMESTAMP('2013-05-03 15:54:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:40 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000260 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:43 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000261,3000201,0,1356,0,10,3000233,TO_TIMESTAMP('2013-05-03 15:54:40','YYYY-MM-DD HH24:MI:SS'),100,'Street address of the Credit Card or Account holder','ECA02','The Street Address of the Credit Card or Account holder.','Y','N','N','N','N','N','N','Account Street',21,TO_TIMESTAMP('2013-05-03 15:54:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:43 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000261 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:44 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000262,3000201,0,1357,0,10,3000234,TO_TIMESTAMP('2013-05-03 15:54:43','YYYY-MM-DD HH24:MI:SS'),100,'Zip Code of the Credit Card or Account Holder','ECA02','The Zip Code of the Credit Card or Account Holder.','Y','N','N','N','N','N','N','Account Zip/Postal',22,TO_TIMESTAMP('2013-05-03 15:54:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000262 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:46 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000263,3000201,0,1005,0,19,3000235,TO_TIMESTAMP('2013-05-03 15:54:45','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity','ECA02','Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','N','N','N','N','N','N','Activity',23,TO_TIMESTAMP('2013-05-03 15:54:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:46 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000263 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000264,3000201,0,836,0,19,3000236,TO_TIMESTAMP('2013-05-03 15:54:46','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','ECA02','The Bank Account identifies an account at this Bank.','Y','N','N','N','N','N','N','Bank Account',24,TO_TIMESTAMP('2013-05-03 15:54:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000264 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:49 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000265,3000201,0,187,0,30,3000237,TO_TIMESTAMP('2013-05-03 15:54:48','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',25,TO_TIMESTAMP('2013-05-03 15:54:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:49 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000265 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:50 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000266,3000201,0,837,0,19,3000238,TO_TIMESTAMP('2013-05-03 15:54:49','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner','ECA02','The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','N','N','N','N','N','N','Partner Bank Account',26,TO_TIMESTAMP('2013-05-03 15:54:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:50 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000266 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:51 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000267,3000201,0,550,0,19,3000239,TO_TIMESTAMP('2013-05-03 15:54:50','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign','ECA02','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','Y','N','N','N','N','N','N','Campaign',27,TO_TIMESTAMP('2013-05-03 15:54:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:52 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000267 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:53 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000268,3000201,0,1463,0,19,3000240,TO_TIMESTAMP('2013-05-03 15:54:52','YYYY-MM-DD HH24:MI:SS'),100,'Cash Book for recording petty cash transactions','ECA02','The Cash Book identifies a unique cash book.  The cash book is used to record cash transactions.','Y','N','N','N','N','N','N','Cash Book',28,TO_TIMESTAMP('2013-05-03 15:54:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:53 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000268 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:56 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000269,3000201,0,968,0,19,3000241,TO_TIMESTAMP('2013-05-03 15:54:53','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02','The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','N','N','N','N','N','N','Charge',29,TO_TIMESTAMP('2013-05-03 15:54:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:56 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000269 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:57 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000270,3000201,0,2278,0,19,3000242,TO_TIMESTAMP('2013-05-03 15:54:56','YYYY-MM-DD HH24:MI:SS'),100,'Currency Conversion Rate Type','ECA02','The Currency Conversion Rate Type lets you define different type of rates, e.g. Spot, Corporate and/or Sell/Buy rates.','Y','N','N','N','N','N','N','Currency Type',30,TO_TIMESTAMP('2013-05-03 15:54:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:57 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000270 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:54:59 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000271,3000201,0,193,0,19,3000243,TO_TIMESTAMP('2013-05-03 15:54:57','YYYY-MM-DD HH24:MI:SS'),100,'The Currency for this record','ECA02','Indicates the Currency to be used when processing or reporting on this record','Y','N','N','N','N','N','N','Currency',31,TO_TIMESTAMP('2013-05-03 15:54:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:54:59 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000271 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:00 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000272,3000201,0,196,0,19,3000244,TO_TIMESTAMP('2013-05-03 15:54:59','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',32,TO_TIMESTAMP('2013-05-03 15:54:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:00 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000272 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000273,3000201,0,849,0,12,3000245,TO_TIMESTAMP('2013-05-03 15:55:00','YYYY-MM-DD HH24:MI:SS'),100,'Charge Amount','ECA02','The Charge Amount indicates the amount for an additional charge.','Y','N','N','N','N','N','N','Charge amount',33,TO_TIMESTAMP('2013-05-03 15:55:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000273 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:02 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000274,3000201,0,1389,0,10,3000246,TO_TIMESTAMP('2013-05-03 15:55:01','YYYY-MM-DD HH24:MI:SS'),100,'Check Number','ECA02','The Check Number indicates the number on the check.','Y','N','N','N','N','N','N','Check No',34,TO_TIMESTAMP('2013-05-03 15:55:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:02 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000274 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:03 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000275,3000201,0,1008,0,30,3000247,TO_TIMESTAMP('2013-05-03 15:55:02','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',35,TO_TIMESTAMP('2013-05-03 15:55:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:03 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000275 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:05 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000276,3000201,0,3000252,0,14,3000248,TO_TIMESTAMP('2013-05-03 15:55:03','YYYY-MM-DD HH24:MI:SS'),100,'Description Confirmation','ECA02','Description Confirmation of Payment','Y','N','N','N','N','N','N','Description Confirmation',36,TO_TIMESTAMP('2013-05-03 15:55:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:05 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000276 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:08 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000277,3000201,0,558,0,30,3000249,TO_TIMESTAMP('2013-05-03 15:55:05','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','Order',37,TO_TIMESTAMP('2013-05-03 15:55:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:08 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000277 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:10 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000278,3000201,0,1465,0,19,3000250,TO_TIMESTAMP('2013-05-03 15:55:08','YYYY-MM-DD HH24:MI:SS'),100,'Payment batch for EFT','ECA02','Electronic Fund Transfer Payment Batch.','Y','N','N','N','N','N','N','Payment Batch',38,TO_TIMESTAMP('2013-05-03 15:55:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:10 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000278 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:13 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000279,3000201,0,1384,0,13,3000251,TO_TIMESTAMP('2013-05-03 15:55:10','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02','The Payment is a unique identifier of this payment.','Y','N','N','N','N','N','N','Payment',39,TO_TIMESTAMP('2013-05-03 15:55:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:13 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000279 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:15 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000280,3000201,0,208,0,19,3000252,TO_TIMESTAMP('2013-05-03 15:55:13','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project','ECA02','A Project allows you to track and control internal or external activities.','Y','N','N','N','N','N','N','Project',40,TO_TIMESTAMP('2013-05-03 15:55:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:15 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000280 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:16 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000281,3000201,0,245,0,16,3000253,TO_TIMESTAMP('2013-05-03 15:55:15','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',41,TO_TIMESTAMP('2013-05-03 15:55:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:17 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000281 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:18 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000282,3000201,0,246,0,18,110,3000254,TO_TIMESTAMP('2013-05-03 15:55:17','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',42,TO_TIMESTAMP('2013-05-03 15:55:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:18 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000282 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000283,3000201,0,1084,0,11,3000255,TO_TIMESTAMP('2013-05-03 15:55:18','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Month','ECA02','The Expiry Month indicates the expiry month for this credit card.','Y','N','N','N','N','N','N','Exp. Month',43,TO_TIMESTAMP('2013-05-03 15:55:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000283 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:21 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000284,3000201,0,1085,0,11,3000256,TO_TIMESTAMP('2013-05-03 15:55:20','YYYY-MM-DD HH24:MI:SS'),100,'Expiry Year','ECA02','The Expiry Year indicates the expiry year for this credit card.','Y','N','N','N','N','N','N','Exp. Year',44,TO_TIMESTAMP('2013-05-03 15:55:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:21 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000284 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:23 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000285,3000201,0,249,0,10,3000257,TO_TIMESTAMP('2013-05-03 15:55:21','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Number ','ECA02','The Credit Card number indicates the number on the credit card, without blanks or spaces.','Y','N','N','N','N','N','N','Number',45,TO_TIMESTAMP('2013-05-03 15:55:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:23 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000285 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:24 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000286,3000201,0,1012,0,17,149,3000258,TO_TIMESTAMP('2013-05-03 15:55:23','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card (Visa, MC, AmEx)','ECA02','The Credit Card drop down list box is used for selecting the type of Credit Card presented for payment.','Y','N','N','N','N','N','N','Credit Card',46,TO_TIMESTAMP('2013-05-03 15:55:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:24 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000286 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:25 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000287,3000201,0,1393,0,10,3000259,TO_TIMESTAMP('2013-05-03 15:55:24','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification code on credit card','ECA02','The Credit Card Verification indicates the verification code on the credit card (AMEX 4 digits on front; MC,Visa 3 digits back)','Y','N','N','N','N','N','N','Verification Code',47,TO_TIMESTAMP('2013-05-03 15:55:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:25 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000287 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:27 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000288,3000201,0,263,0,15,3000260,TO_TIMESTAMP('2013-05-03 15:55:25','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','Account Date',48,TO_TIMESTAMP('2013-05-03 15:55:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:27 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000288 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000289,3000201,0,1297,0,15,3000261,TO_TIMESTAMP('2013-05-03 15:55:27','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date','ECA02','The Transaction Date indicates the date of the transaction.','Y','N','Y','N','N','N','N','Transaction Date',49,TO_TIMESTAMP('2013-05-03 15:55:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000289 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:30 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000290,3000201,0,275,0,10,3000262,TO_TIMESTAMP('2013-05-03 15:55:29','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02','A description is limited to 255 characters.','Y','N','N','N','N','N','N','Description',50,TO_TIMESTAMP('2013-05-03 15:55:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:30 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000290 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:31 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000291,3000201,0,1395,0,12,3000263,TO_TIMESTAMP('2013-05-03 15:55:30','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount','ECA02','The Discount Amount indicates the discount amount for a document or line.','Y','N','N','N','N','N','N','Discount Amount',51,TO_TIMESTAMP('2013-05-03 15:55:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:31 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000291 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000292,3000201,0,287,0,28,135,3000264,TO_TIMESTAMP('2013-05-03 15:55:31','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',52,TO_TIMESTAMP('2013-05-03 15:55:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000292 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:34 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000293,3000201,0,289,0,17,131,3000265,TO_TIMESTAMP('2013-05-03 15:55:33','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',53,TO_TIMESTAMP('2013-05-03 15:55:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:34 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000293 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000294,3000201,0,290,0,10,3000266,TO_TIMESTAMP('2013-05-03 15:55:34','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','Y','N','N','N','N','Document No',54,TO_TIMESTAMP('2013-05-03 15:55:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:35 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000294 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:37 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000295,3000201,0,348,0,20,3000267,TO_TIMESTAMP('2013-05-03 15:55:35','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',55,TO_TIMESTAMP('2013-05-03 15:55:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:37 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000295 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000296,3000201,0,1508,0,20,3000268,TO_TIMESTAMP('2013-05-03 15:55:37','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the payment has been allocated','ECA02','The Allocated checkbox indicates if a payment has been allocated or associated with an invoice or invoices.','Y','N','N','N','N','N','N','Allocated',56,TO_TIMESTAMP('2013-05-03 15:55:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000296 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:40 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000297,3000201,0,351,0,20,3000269,TO_TIMESTAMP('2013-05-03 15:55:38','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','Y','N','N','N','N','N','N','Approved',57,TO_TIMESTAMP('2013-05-03 15:55:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:40 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000297 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:41 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000298,3000201,0,2107,0,20,3000270,TO_TIMESTAMP('2013-05-03 15:55:40','YYYY-MM-DD HH24:MI:SS'),100,'Charge after Shipment','ECA02','Delayed Capture is required, if you ship products.  The first credit card transaction is the Authorization, the second is the actual transaction after the shipment of the product.','Y','N','N','N','N','N','N','Delayed Capture',58,TO_TIMESTAMP('2013-05-03 15:55:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:41 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000298 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:43 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000299,3000201,0,1401,0,20,3000271,TO_TIMESTAMP('2013-05-03 15:55:41','YYYY-MM-DD HH24:MI:SS'),100,'Can be accessed online ','ECA02','The Online Access check box indicates if the application can be accessed via the web. ','Y','N','N','N','N','N','N','Online Access',59,TO_TIMESTAMP('2013-05-03 15:55:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:43 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000299 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:44 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000300,3000201,0,1818,0,20,3000272,TO_TIMESTAMP('2013-05-03 15:55:43','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment)','ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','N','N','N','N','N','N','Over/Under Payment',60,TO_TIMESTAMP('2013-05-03 15:55:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:44 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000300 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000301,3000201,0,2663,0,20,3000273,TO_TIMESTAMP('2013-05-03 15:55:44','YYYY-MM-DD HH24:MI:SS'),100,'The Payment/Receipt is a Prepayment','ECA02','Payments not allocated to an invoice with a charge are posted to Unallocated Payments. When setting this flag, the payment is posted to the Customer or Vendor Prepayment account.','Y','N','N','N','N','N','N','Prepayment',61,TO_TIMESTAMP('2013-05-03 15:55:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000301 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:46 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000302,3000201,0,1634,0,20,3000274,TO_TIMESTAMP('2013-05-03 15:55:45','YYYY-MM-DD HH24:MI:SS'),100,'This is a sales transaction (receipt)','ECA02','Y','N','N','N','N','N','N','Receipt',62,TO_TIMESTAMP('2013-05-03 15:55:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:46 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000302 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000303,3000201,0,1105,0,20,3000275,TO_TIMESTAMP('2013-05-03 15:55:46','YYYY-MM-DD HH24:MI:SS'),100,'Payment is reconciled with bank statement','ECA02','Y','N','N','N','N','N','N','Reconciled',63,TO_TIMESTAMP('2013-05-03 15:55:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000303 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:49 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000304,3000201,0,2063,0,20,3000276,TO_TIMESTAMP('2013-05-03 15:55:48','YYYY-MM-DD HH24:MI:SS'),100,'This is a Self-Service entry or this entry can be changed via Self-Service','ECA02','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.','Y','N','N','N','N','N','N','Self-Service',64,TO_TIMESTAMP('2013-05-03 15:55:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:49 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000304 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:50 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000305,3000201,0,1407,0,10,3000277,TO_TIMESTAMP('2013-05-03 15:55:49','YYYY-MM-DD HH24:MI:SS'),100,'Combination of routing no, account and check no','ECA02','The Micr number is the combination of the bank routing number, account number and check number','Y','N','N','N','N','N','N','Micr',65,TO_TIMESTAMP('2013-05-03 15:55:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:50 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000305 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:52 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000306,3000201,0,1497,0,28,3000278,TO_TIMESTAMP('2013-05-03 15:55:50','YYYY-MM-DD HH24:MI:SS'),100,'This payment can be processed online','ECA02','The Online Processing indicates if the payment can be processed online.','Y','N','N','N','N','N','N','Online Processing',66,TO_TIMESTAMP('2013-05-03 15:55:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:52 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000306 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:57 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000307,3000201,0,1409,0,10,3000279,TO_TIMESTAMP('2013-05-03 15:55:52','YYYY-MM-DD HH24:MI:SS'),100,'Original Transaction ID','ECA02','The Original Transaction ID is used for reversing transactions and indicates the transaction that has been reversed.','Y','N','N','N','N','N','N','Original Transaction ID',67,TO_TIMESTAMP('2013-05-03 15:55:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:57 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000307 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:55:59 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000308,3000201,0,1819,0,12,3000280,TO_TIMESTAMP('2013-05-03 15:55:57','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment) Amount','ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','N','N','N','N','N','N','Over/Under Payment',68,TO_TIMESTAMP('2013-05-03 15:55:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:55:59 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000308 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:00 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000309,3000201,0,1477,0,12,3000281,TO_TIMESTAMP('2013-05-03 15:55:59','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02','Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','N','Y','N','N','N','N','Payment amount',69,TO_TIMESTAMP('2013-05-03 15:55:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:00 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000309 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000310,3000201,0,3000253,0,18,3000206,3000282,TO_TIMESTAMP('2013-05-03 15:56:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Payment Confirm',70,TO_TIMESTAMP('2013-05-03 15:56:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:01 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000310 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:03 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000311,3000201,0,1415,0,10,3000283,TO_TIMESTAMP('2013-05-03 15:56:01','YYYY-MM-DD HH24:MI:SS'),100,'Purchase Order Number','ECA02','The PO Number indicates the number assigned to a purchase order','Y','N','N','N','N','N','N','PO Number',71,TO_TIMESTAMP('2013-05-03 15:56:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:03 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000311 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:04 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000312,3000201,0,1308,0,28,234,3000284,TO_TIMESTAMP('2013-05-03 15:56:03','YYYY-MM-DD HH24:MI:SS'),100,'Posting status','ECA02','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','Y','N','N','N','N','N','N','Posted',72,TO_TIMESTAMP('2013-05-03 15:56:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:04 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000312 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:06 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000313,3000201,0,1047,0,20,3000285,TO_TIMESTAMP('2013-05-03 15:56:04','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02','The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','Processed',73,TO_TIMESTAMP('2013-05-03 15:56:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:06 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000313 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:08 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000314,3000201,0,54128,0,22,3000286,TO_TIMESTAMP('2013-05-03 15:56:06','YYYY-MM-DD HH24:MI:SS'),100,'The date+time (expressed in decimal format) when the document has been processed','ECA02','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Y','N','N','N','N','N','N','Processed On',74,TO_TIMESTAMP('2013-05-03 15:56:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:08 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000314 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:09 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000315,3000201,0,524,0,28,3000287,TO_TIMESTAMP('2013-05-03 15:56:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Process Now',75,TO_TIMESTAMP('2013-05-03 15:56:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:09 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000315 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:11 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000316,3000201,0,1422,0,10,3000288,TO_TIMESTAMP('2013-05-03 15:56:09','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code returned','ECA02','The Authorization Code indicates the code returned from the electronic transmission.','Y','N','N','N','N','N','N','Authorization Code',76,TO_TIMESTAMP('2013-05-03 15:56:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:11 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000316 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:12 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000317,3000201,0,2119,0,10,3000289,TO_TIMESTAMP('2013-05-03 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code Delayed Capture returned','ECA02','The Authorization Code indicates the code returned from the electronic transmission.','Y','N','N','N','N','N','N','Authorization Code (DC)',77,TO_TIMESTAMP('2013-05-03 15:56:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:12 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000317 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:13 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000318,3000201,0,1423,0,17,213,3000290,TO_TIMESTAMP('2013-05-03 15:56:12','YYYY-MM-DD HH24:MI:SS'),100,'This address has been verified','ECA02','The Address Verified indicates if the address has been verified by the Credit Card Company.','Y','N','N','N','N','N','N','Address verified',78,TO_TIMESTAMP('2013-05-03 15:56:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:13 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000318 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:15 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000319,3000201,0,1424,0,17,213,3000291,TO_TIMESTAMP('2013-05-03 15:56:13','YYYY-MM-DD HH24:MI:SS'),100,'The Zip Code has been verified','ECA02','The Zip Verified indicates if the zip code has been verified by the Credit Card Company.','Y','N','N','N','N','N','N','Zip verified',79,TO_TIMESTAMP('2013-05-03 15:56:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:15 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000319 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:16 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000320,3000201,0,2120,0,20,3000292,TO_TIMESTAMP('2013-05-03 15:56:15','YYYY-MM-DD HH24:MI:SS'),100,'Credit Card Verification Code Match','ECA02','The Credit Card Verification Code was matched','Y','N','N','N','N','N','N','CVV Match',80,TO_TIMESTAMP('2013-05-03 15:56:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:16 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000320 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:17 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000321,3000201,0,2753,0,18,343,3000293,TO_TIMESTAMP('2013-05-03 15:56:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Referenced Payment',81,TO_TIMESTAMP('2013-05-03 15:56:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:17 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000321 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:19 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000322,3000201,0,53457,0,18,343,3000294,TO_TIMESTAMP('2013-05-03 15:56:18','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal','ECA02','Y','N','N','N','N','N','N','Reversal ID',82,TO_TIMESTAMP('2013-05-03 15:56:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:19 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000322 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000323,3000201,0,1425,0,10,3000295,TO_TIMESTAMP('2013-05-03 15:56:19','YYYY-MM-DD HH24:MI:SS'),100,'Response info','ECA02','The Info indicates any response information returned from the Credit Card Company.','Y','N','N','N','N','N','N','Info',83,TO_TIMESTAMP('2013-05-03 15:56:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:20 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000323 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:22 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000324,3000201,0,964,0,10,3000296,TO_TIMESTAMP('2013-05-03 15:56:21','YYYY-MM-DD HH24:MI:SS'),100,'Bank Routing Number','ECA02','The Bank Routing Number (ABA Number) identifies a legal Bank.  It is used in routing checks and electronic transactions.','Y','N','N','N','N','N','N','Routing No',84,TO_TIMESTAMP('2013-05-03 15:56:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:22 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000324 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:26 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000325,3000201,0,1426,0,10,3000297,TO_TIMESTAMP('2013-05-03 15:56:22','YYYY-MM-DD HH24:MI:SS'),100,'Payment reference','ECA02','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','Y','N','N','N','N','N','N','Reference',85,TO_TIMESTAMP('2013-05-03 15:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:26 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000325 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:27 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000326,3000201,0,2121,0,10,3000298,TO_TIMESTAMP('2013-05-03 15:56:26','YYYY-MM-DD HH24:MI:SS'),100,'Payment Reference Delayed Capture','ECA02','The Payment Reference indicates the reference returned from the Credit Card Company for a payment','Y','N','N','N','N','N','N','Reference (DC)',86,TO_TIMESTAMP('2013-05-03 15:56:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:27 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000326 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000327,3000201,0,1427,0,10,3000299,TO_TIMESTAMP('2013-05-03 15:56:27','YYYY-MM-DD HH24:MI:SS'),100,'Response message','ECA02','The Response Message indicates the message returned from the Credit Card Company as the result of a transmission','Y','N','N','N','N','N','N','Response Message',87,TO_TIMESTAMP('2013-05-03 15:56:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:28 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000327 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:30 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000328,3000201,0,1428,0,10,3000300,TO_TIMESTAMP('2013-05-03 15:56:28','YYYY-MM-DD HH24:MI:SS'),100,'Result of transmission','ECA02','The Response Result indicates the result of the transmission to the Credit Card Company.','Y','N','N','N','N','N','N','Result',88,TO_TIMESTAMP('2013-05-03 15:56:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:30 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000328 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:31 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000329,3000201,0,2125,0,10,3000301,TO_TIMESTAMP('2013-05-03 15:56:30','YYYY-MM-DD HH24:MI:SS'),100,'Track 1 and 2 of the Credit Card','ECA02','Swiped information for Credit Card Presence Transactions','Y','N','N','N','N','N','N','Swipe',89,TO_TIMESTAMP('2013-05-03 15:56:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:31 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000329 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000330,3000201,0,1133,0,12,3000302,TO_TIMESTAMP('2013-05-03 15:56:31','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document','ECA02','The Tax Amount displays the total tax amount for a document.','Y','N','N','N','N','N','N','Tax Amount',90,TO_TIMESTAMP('2013-05-03 15:56:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:33 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000330 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000331,3000201,0,1441,0,17,214,3000303,TO_TIMESTAMP('2013-05-03 15:56:33','YYYY-MM-DD HH24:MI:SS'),100,'Method of Payment','ECA02','The Tender Type indicates the method of payment (ACH or Direct Deposit, Credit Card, Check, Direct Debit)','Y','N','N','N','N','N','N','Tender type',91,TO_TIMESTAMP('2013-05-03 15:56:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:38 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000331 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:39 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000332,3000201,0,1295,0,17,215,3000304,TO_TIMESTAMP('2013-05-03 15:56:38','YYYY-MM-DD HH24:MI:SS'),100,'Type of credit card transaction','ECA02','The Transaction Type indicates the type of transaction to be submitted to the Credit Card Company.','Y','N','N','N','N','N','N','Transaction Type',92,TO_TIMESTAMP('2013-05-03 15:56:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:39 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000332 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:40 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000333,3000201,0,607,0,16,3000305,TO_TIMESTAMP('2013-05-03 15:56:39','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',93,TO_TIMESTAMP('2013-05-03 15:56:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:40 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000333 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:42 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000334,3000201,0,608,0,18,110,3000306,TO_TIMESTAMP('2013-05-03 15:56:40','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',94,TO_TIMESTAMP('2013-05-03 15:56:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:42 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000334 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:43 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000335,3000201,0,613,0,18,134,3000307,TO_TIMESTAMP('2013-05-03 15:56:42','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1','ECA02','The user defined element displays the optional elements that have been defined for this account combination.','Y','N','N','N','N','N','N','User List 1',95,TO_TIMESTAMP('2013-05-03 15:56:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:43 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000335 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000336,3000201,0,614,0,18,137,3000308,TO_TIMESTAMP('2013-05-03 15:56:43','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #2','ECA02','The user defined element displays the optional elements that have been defined for this account combination.','Y','N','N','N','N','N','N','User List 2',96,TO_TIMESTAMP('2013-05-03 15:56:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:45 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000336 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:47 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000337,3000201,0,1445,0,10,3000309,TO_TIMESTAMP('2013-05-03 15:56:45','YYYY-MM-DD HH24:MI:SS'),100,'Voice Authorization Code from credit card company','ECA02','The Voice Authorization Code indicates the code received from the Credit Card Company.','Y','N','N','N','N','N','N','Voice authorization code',97,TO_TIMESTAMP('2013-05-03 15:56:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:47 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000337 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 3:56:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000338,3000201,0,1450,0,12,3000310,TO_TIMESTAMP('2013-05-03 15:56:47','YYYY-MM-DD HH24:MI:SS'),100,'Amount to write-off','ECA02','The Write Off Amount indicates the amount to be written off as uncollectible.','Y','N','N','N','N','N','N','Write-off Amount',98,TO_TIMESTAMP('2013-05-03 15:56:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 3:56:48 PM VET
-- Retention LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000338 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000253
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000255
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000254
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000251
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000252
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000256
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000257
;

-- May 3, 2013 4:50:18 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000258
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000259
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000260
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000261
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000262
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000250
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000263
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000266
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000267
;

-- May 3, 2013 4:50:19 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000268
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000269
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000270
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000271
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000278
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000280
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000273
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000274
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000276
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000281
;

-- May 3, 2013 4:50:20 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000282
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000283
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000284
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000285
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000286
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000287
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000290
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000291
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000292
;

-- May 3, 2013 4:50:21 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000293
;

-- May 3, 2013 4:50:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000295
;

-- May 3, 2013 4:50:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000296
;

-- May 3, 2013 4:50:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000297
;

-- May 3, 2013 4:50:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000298
;

-- May 3, 2013 4:50:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000299
;

-- May 3, 2013 4:50:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000300
;

-- May 3, 2013 4:50:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000301
;

-- May 3, 2013 4:50:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000302
;

-- May 3, 2013 4:50:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000303
;

-- May 3, 2013 4:50:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000304
;

-- May 3, 2013 4:50:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000305
;

-- May 3, 2013 4:50:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000306
;

-- May 3, 2013 4:50:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000307
;

-- May 3, 2013 4:50:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000308
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000311
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000310
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000312
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000313
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000314
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000315
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000316
;

-- May 3, 2013 4:50:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000317
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000318
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000319
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000320
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000323
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000325
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000326
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000327
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000328
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000321
;

-- May 3, 2013 4:50:25 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000322
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000324
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000329
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000330
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000331
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000332
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000333
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000334
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000335
;

-- May 3, 2013 4:50:26 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000336
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000337
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000338
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000279
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000265
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000272
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000294
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000289
;

-- May 3, 2013 4:50:27 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-05-03 16:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000288
;

-- May 3, 2013 4:50:28 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-05-03 16:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000264
;

-- May 3, 2013 4:50:28 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-05-03 16:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000309
;

-- May 3, 2013 4:50:28 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-05-03 16:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000275
;

-- May 3, 2013 4:50:28 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-05-03 16:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000277
;

-- May 3, 2013 4:51:07 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_TIMESTAMP('2013-05-03 16:51:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000289
;

-- May 3, 2013 4:51:07 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=20,Updated=TO_TIMESTAMP('2013-05-03 16:51:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000288
;

-- May 3, 2013 4:51:07 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=30,Updated=TO_TIMESTAMP('2013-05-03 16:51:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000265
;

-- May 3, 2013 6:32:00 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsKey='Y',Updated=TO_TIMESTAMP('2013-05-03 18:32:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000279
;

-- May 3, 2013 6:32:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-05-03 18:32:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000279
;

-- May 3, 2013 6:32:52 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-05-03 18:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000265
;

-- May 3, 2013 6:33:33 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-05-03 18:33:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000272
;

-- May 3, 2013 6:39:23 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y', IsRange='Y',Updated=TO_TIMESTAMP('2013-05-03 18:39:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000289
;

-- May 3, 2013 6:39:31 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y', IsRange='Y',Updated=TO_TIMESTAMP('2013-05-03 18:39:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000288
;

-- May 3, 2013 6:39:38 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-05-03 18:39:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000264
;

-- May 3, 2013 6:39:56 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-05-03 18:39:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000275
;

-- May 3, 2013 6:40:07 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-05-03 18:40:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000275
;

-- May 3, 2013 6:40:17 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsIdentifier='N', IsReadOnly='N',Updated=TO_TIMESTAMP('2013-05-03 18:40:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000309
;

-- May 3, 2013 6:40:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-05-03 18:40:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000264
;

-- May 3, 2013 6:40:29 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-05-03 18:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000288
;

-- May 3, 2013 6:40:52 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-05-03 18:40:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000288
;

-- May 3, 2013 6:40:56 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-05-03 18:40:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000264
;

-- May 3, 2013 6:40:59 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-05-03 18:40:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000309
;

-- May 3, 2013 6:41:03 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-05-03 18:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000275
;

-- May 3, 2013 6:41:10 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-05-03 18:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000277
;

-- May 3, 2013 6:42:06 PM VET
-- Retention LVE
INSERT INTO AD_Menu ("action",AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',3000201,0,3000207,0,TO_TIMESTAMP('2013-05-03 18:42:06','YYYY-MM-DD HH24:MI:SS'),100,'Check Confirmation','ECA02','Y','Y','N','N','N','Check Confirmation',TO_TIMESTAMP('2013-05-03 18:42:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 6:42:06 PM VET
-- Retention LVE
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- May 3, 2013 6:42:07 PM VET
-- Retention LVE
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-05-03 18:42:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',3000207,0,999,TO_TIMESTAMP('2013-05-03 18:42:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 3, 2013 6:42:51 PM VET
-- Retention LVE
UPDATE AD_Menu_Trl SET Name='Confirmación de Cheque',Description='Confirmación de Cheque',Updated=TO_TIMESTAMP('2013-05-03 18:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000207 AND AD_Language='es_MX'
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000207
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- May 3, 2013 6:43:01 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_TIMESTAMP('2013-05-03 18:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- May 3, 2013 6:43:02 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_TIMESTAMP('2013-05-03 18:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- May 3, 2013 6:43:08 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10,Updated=TO_TIMESTAMP('2013-05-03 18:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000207
;

-- May 3, 2013 6:43:08 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11,Updated=TO_TIMESTAMP('2013-05-03 18:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- May 3, 2013 6:43:09 PM VET
-- Retention LVE
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27,Updated=TO_TIMESTAMP('2013-05-03 18:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- May 3, 2013 6:46:28 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2013-05-03 18:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000279
;

-- May 3, 2013 6:48:04 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_TIMESTAMP('2013-05-03 18:48:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000279
;

-- May 3, 2013 6:48:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 18:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000275
;

-- May 3, 2013 6:48:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-05-03 18:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000277
;

-- May 3, 2013 6:48:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-05-03 18:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000294
;

-- May 3, 2013 6:48:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-05-03 18:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000265
;

-- May 3, 2013 6:48:22 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-05-03 18:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000272
;

-- May 3, 2013 6:48:38 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2013-05-03 18:48:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000294
;

-- May 3, 2013 6:54:13 PM VET
-- Retention LVE
UPDATE AD_Browse SET WhereClause='TenderType = ''K'' And PayConfirm_ID Is Null And DocStatus In (''CO'',''CL'')',Updated=TO_TIMESTAMP('2013-05-03 18:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=3000201
;

-- May 3, 2013 6:59:16 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET SeqNo=100,Updated=TO_TIMESTAMP('2013-05-03 18:59:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000277
;

-- May 3, 2013 6:59:24 PM VET
-- Retention LVE
UPDATE AD_Browse_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2013-05-03 18:59:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000275
;

-- May 2, 2013 10:08:32 AM VET
-- CONFIRM LVE
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,3000252,0,3000204,3000212,14,'ConfirmDescription',TO_TIMESTAMP('2013-05-02 10:08:30','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_User_Name@','Description Confirmation','ECA02',2000,'Description Confirmation of Payment','Y','Y','Y','N','Description Confirmation',20,TO_TIMESTAMP('2013-05-02 10:08:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 2, 2013 10:08:32 AM VET
-- CONFIRM LVE
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 2, 2013 11:48:22 AM VET
-- CONFIRM LVE
UPDATE AD_View SET Description='Check UnConfirmed', Help='Check UnConfirmed', Name='Check UnConfirmed', Value='VW_CheckUnConfirmed',Updated=TO_TIMESTAMP('2013-05-02 11:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=3000200
;

-- May 2, 2013 11:48:22 AM VET
-- CONFIRM LVE
UPDATE AD_View_Trl SET IsTranslated='N' WHERE AD_View_ID=3000200
;

-- May 2, 2013 11:48:40 AM VET
-- CONFIRM LVE
UPDATE AD_View_Trl SET Name='Cheques sin Confirmar',Description='Cheques sin Confirmar',Help='Cheques sin Confirmar',Updated=TO_TIMESTAMP('2013-05-02 11:48:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=3000200
;

-- May 2, 2013 11:56:00 AM VET
-- CONFIRM LVE
UPDATE AD_Process SET Description='Check Confirmation', Help='Check Confirmation', Name='Check Confirmation', Value='prc_CheckConfirmation',Updated=TO_TIMESTAMP('2013-05-02 11:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000204
;

-- May 2, 2013 11:56:00 AM VET
-- CONFIRM LVE
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=3000204
;

-- May 2, 2013 11:56:42 AM VET
-- CONFIRM LVE
UPDATE AD_Process_Trl SET Name='Confirmación de Cheques',Description='Confirmación de Cheques',Help='Confirmación de Cheques',Updated=TO_TIMESTAMP('2013-05-02 11:56:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000204 AND AD_Language='es_MX'
;

-- May 4, 2013 4:55:30 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET Classname='org.erpca.process.CheckConfirmation',Updated=TO_TIMESTAMP('2013-05-04 16:55:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000204
;

-- May 6, 2013 9:23:01 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Browse_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-05-06 09:23:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000264
;

-- May 4, 2013 4:55:30 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET Classname='org.erpca.process.CheckConfirmation',Updated=TO_TIMESTAMP('2013-05-04 16:55:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000204
;

-- May 6, 2013 9:33:50 AM VET
-- Retention LVE
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2013-05-06 09:33:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000211
;

-- May 7, 2013 7:14:39 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsParent='N', IsUpdateable='Y',Updated=TO_TIMESTAMP('2013-05-07 19:14:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000453
;

-- May 7, 2013 7:14:39 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
Alter Table C_Payment Add Constraint FK_C_PaymentConfirmCheck Foreign Key (PayConfirm_ID) References C_PaymentBatch(C_PaymentBatch_ID) On Update Cascade On Delete Set Null;
