/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.util;

import java.io.File;
import java.io.FileWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;

import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentBatch;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.PaymentExport;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * Export class for Mercantil Bank
 */
public class B_MercantilPE implements PaymentExport {

	/** Logger								*/
	static private CLogger	s_log = CLogger.getCLogger (B_MercantilPE.class);

	/** BPartner Info Index for Account    		*/
	private static final int     BPA_A_ACCOUNT 		= 0;
	/** BPartner Info Index for Value       	*/
	private static final int     BPA_A_IDENT_SSN 	= 1;
	/** BPartner Info Index for Name        	*/
	private static final int     BPA_A_NAME 		= 2;
	/** BPartner Info Index for Swift Code	    */
	private static final int     BPA_SWIFTCODE 		= 3;
	/** BPartner Info Index for e-mail    		*/
	private static final int     BPA_A_EMAIL 		= 4;
	
	/**************************************************************************
	 *  Export to File
	 *  @param checks array of checks
	 *  @param file file to export checks
	 *  @return number of lines
	 */
	public int exportToFile (MPaySelectionCheck[] checks, File file, StringBuffer err)
	{
		if (checks == null || checks.length == 0)
			return 0;
		//  delete if exists
		try
		{
			if (file.exists())
				file.delete();
		}
		catch (Exception e)
		{
			s_log.log(Level.WARNING, "Could not delete - " + file.getAbsolutePath(), e);
		}
		
		//	
		MPaySelection m_PaySelection = (MPaySelection) checks[0].getC_PaySelection();
		MPayment m_Payment = (MPayment) checks[0].getC_Payment();
		MPaymentBatch m_PaymentBatch = (MPaymentBatch) m_Payment.getC_PaymentBatch();
		MBankAccount m_BankAccount = (MBankAccount) m_PaySelection.getC_BankAccount();
		MOrgInfo orgInfo = MOrgInfo.get(m_PaySelection.getCtx(), m_PaySelection.getAD_Org_ID(), m_PaySelection.get_TrxName());
		MBank mBank = MBank.get(m_BankAccount.getCtx(), m_BankAccount.getC_Bank_ID()); 

		
		//	Payments Generated
		int payGenerated = checks.length;
		
		//	Process Organization Tax ID
		String orgTaxID = orgInfo.getTaxID().replace("-", "").trim();		
		orgTaxID = orgTaxID.substring(1, (orgTaxID.length() >= 15 ? 15: orgTaxID.length()));
		orgTaxID = String.format("%1$" + 15 + "s", orgTaxID).replace(" ", "0");
		
		//	Account No
		String bankAccountNo = m_BankAccount.getAccountNo().trim();
		bankAccountNo = bankAccountNo.substring(0, (bankAccountNo.length() >= 20? 20: bankAccountNo.length()));
		bankAccountNo = bankAccountNo.replace(" ", "");
		bankAccountNo = String.format("%1$-" + 20 + "s", bankAccountNo).replace(" ", "0");
		//	Format Date
		//String format = "ddMMyyyy";
		String format = "yyyyMMdd";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		// Bank Identification
		String bankIdentification = mBank.getSwiftCode().trim();
		bankIdentification = String.format("%1$-" + 12 + "s", bankIdentification);
		
		//Type of identification		
		String iden_Type_Org = orgInfo.getTaxID().substring(0,1);
		
		// Batch Document No
		String batchDocNo = m_PaymentBatch.getDocumentNo();
		batchDocNo = batchDocNo.substring(0, (batchDocNo.length() >= 15 ? 15 : batchDocNo.length()));
		batchDocNo = String.format("%1$-" + 15 + "s", batchDocNo);
		
		
		
		//		Payment Amount
				String totalAmt = String.format("%.2f", m_PaySelection.getTotalAmt().abs()).replace(".", "").replace(",", "");			
				totalAmt = String.format("%1$" + 17 + "s", totalAmt).replace(" ", "0");
				
				// Rreserved Area
				String arResr = "";
				
				// Product Type
				String type_Prod = "PROVE";
				type_Prod = String.format("%1$-" + 5 + "s", type_Prod);

		int noLines = 0;
		StringBuffer line = null;
		try
		{
			
			FileWriter fw = new FileWriter(file);
			
			//  write header
			line = new StringBuffer();
			//	Header
			line.append("1")
				.append(bankIdentification)												//  Type Register
				.append(batchDocNo)														//  Batch No
				.append(type_Prod)														//  Product Type
				.append("0000000062")													//  Payment Type
				.append(iden_Type_Org)													//  Ident Type
				.append(orgTaxID)														//  ID Number
				.append(String.format("%0" + 8 + "d", payGenerated))					//	Payments Generated
				.append(totalAmt)														//	Current Date
				.append(sdf.format(m_PaySelection.getPayDate()))						//	Payment Date
				.append(bankAccountNo)													//	Bank Account No
				.append(String.format("%1$" + 7 + "s", arResr).replace(" ", "0"))		//  Reserved 
				.append(String.format("%1$" + 8 + "s", arResr).replace(" ", "0"))		//  Reserved Note Serial Number Company
				.append(String.format("%1$" + 4 + "s", arResr).replace(" ", "0")) 		//	Reserved Response Code (Data Output)
				.append(String.format("%1$" + 8 + "s", arResr).replace(" ", "0")) 		//	Reserved Date process (Data Output)
				.append(String.format("%1$" + 261 + "s", arResr).replace(" ", "0"));	// 	Reserved
				
			fw.write(line.toString());
			noLines++;

			//  write lines
			for (int i = 0; i < checks.length; i++)
			{
				MPaySelectionCheck mpp = checks[i];
				if (mpp == null)
					continue;
				//  BPartner Info
				String bp[] = getBPartnerInfo(mpp.getC_BPartner_ID());
				
				//	Payment Detail
				m_Payment = (MPayment) mpp.getC_Payment();
				//	Process Document No
				String docNo = m_Payment.getDocumentNo();
				docNo = docNo.substring(0, (docNo.length() >= 8? 8: docNo.length()));
				docNo = String.format("%1$" + 8 + "s", docNo).replace(" ", "0");
				//	Payment Amount
				String amt = String.format("%.2f", m_Payment.getPayAmt().abs()).replace(".", "").replace(",", "");
				amt = String.format("%1$" + 17 + "s", amt).replace(" ", "0");
			
				//	Client ID
				/*String identClientEmpr = bp[BPA_A_IDENT_SSN];
				identClientEmpr = identClientEmpr.substring(0, (batchDocNo.length() >= 16 ? 16 : identClientEmpr.length()));
				identClientEmpr = String.format("%1$-" + 16 + "s", identClientEmpr);
				*/
				String identClientEmpr = orgInfo.getTaxID().replace("-", "").trim();
				identClientEmpr = identClientEmpr.substring(0, (identClientEmpr.length() >= 16 ? 16 : identClientEmpr.length()));
				identClientEmpr = String.format("%1$-" + 16 + "s", identClientEmpr);
				
				
				//	Iden Type 
				 String typIden = bp[BPA_A_IDENT_SSN]; 			
				 typIden = typIden.substring(0,1);
				 
				 //Business PArtner Tax ID
				 String bPartnerTax = bp[BPA_A_IDENT_SSN];
				 bPartnerTax = bPartnerTax.substring(1, (bPartnerTax.length() >= 15 ? 15: bPartnerTax.length()));
				 bPartnerTax = String.format("%1$" + 15 + "s", bPartnerTax).replace(" ", "0");
				
				 String tenderType = bp[BPA_A_ACCOUNT];
				 tenderType = tenderType.substring(0,4);
				 
				 if(tenderType.equals("0105"))
				 {
					 tenderType = "1";
				 }else
				 {
					 tenderType = "3";
				 }
								 
				 //	Line
				line = new StringBuffer();
				line
					.append(Env.NL)															//	New Line	
					.append("2")															//	Constant
					.append(typIden)														// 	Ident Type
					.append(bPartnerTax)													//	Business PArtner Tax ID
					.append(tenderType)																//  Tender Type
					.append(String.format("%1$" + 12 + "s", arResr).replace(" ", "0"))		// 	Reserved
					.append(String.format("%1$" + 15 + "s", arResr))						// 	Reserved
					.append(String.format("%1$" + 15 + "s", arResr).replace(" ", "0"))		// 	Reserved
					.append(bp[BPA_A_ACCOUNT])												//	Account No
					.append(amt)															//	Payment Amount
					.append(identClientEmpr)												//  Client ID
					.append("0000000062")													//  Payment Type
					.append(String.format("%1$" + 3 + "s", arResr).replace(" ", "0"))		// 	Reserved
					.append(bp[BPA_A_NAME])													//	Business Partner Name for Account
					.append(String.format("%1$" + 7 + "s", arResr).replace(" ", "0"))		// 	Reserved
					.append(docNo)															//	Document No
					.append(bp[BPA_A_EMAIL])												//	E-Mail
					.append(String.format("%1$" + 4 + "s", arResr).replace(" ", "0")) 		//	Response Code
					.append(String.format("%1$" + 30 + "s", arResr))						//  Response Message
					.append(String.format("%1$" + 80 + "s", arResr))						//	Payment Concept
					.append(String.format("%1$" +35 + "s", arResr).replace(" ", "0")); 		//	Reserved
				
				fw.write(line.toString());
				noLines++;
			}   //  write line
			//	Close
			 
			fw.flush();
			fw.close();
		}
		catch (Exception e)
		{
			err.append(e.toString());
			s_log.log(Level.SEVERE, "", e);
			return -1;
		}

		return noLines;
	}   //  exportToFile

	/**
	 * Get Business Partner Information
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 16/04/2013, 20:14:38
	 * @param C_BPartner_ID
	 * @return
	 * @return String[]
	 */
	private String[] getBPartnerInfo (int C_BPartner_ID)
	{
		String[] bp = new String[5];
		//	Sql
		String sql = "SELECT MAX(bpa.AccountNo) AccountNo, bpa.A_Ident_SSN, bpa.A_Name, bpb.SwiftCode, bpa.A_Email " +
				"FROM C_BP_BankAccount bpa " +
				"INNER JOIN C_Bank bpb ON(bpb.C_Bank_ID = bpa.C_Bank_ID) " +
				"WHERE bpa.C_BPartner_ID = ? " +
				"AND bpa.IsActive = 'Y' " +
				"AND bpa.IsACH = 'Y' " +
				"GROUP BY bpa.C_BPartner_ID, bpa.A_Ident_SSN, bpa.A_Name, bpb.SwiftCode, bpa.A_Email";
		
		s_log.fine("SQL=" + sql);
		
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			//
			if (rs.next())
			{
				bp[BPA_A_ACCOUNT] = rs.getString(1);
				if (bp[BPA_A_ACCOUNT] == null)
					bp[BPA_A_ACCOUNT] = "NO CUENTA";
				bp[BPA_A_IDENT_SSN] = rs.getString(2);
				if (bp[BPA_A_IDENT_SSN] == null)
					bp[BPA_A_IDENT_SSN] = "NO RIF/CI";
				bp[BPA_A_NAME] = rs.getString(3);
				if (bp[BPA_A_NAME] == null)
					bp[BPA_A_NAME] = "NO NOMBRE";
				bp[BPA_SWIFTCODE] = rs.getString(4);
				if (bp[BPA_SWIFTCODE] == null)
					bp[BPA_SWIFTCODE] = "NO SWIFT";
				bp[BPA_A_EMAIL] = rs.getString(5);
				if (bp[BPA_A_EMAIL] == null)
					bp[BPA_A_EMAIL] = "";
			} else {
				bp[BPA_A_ACCOUNT] 	= "NO CUENTA";
				bp[BPA_A_IDENT_SSN] = "NO RIF/CI";
				bp[BPA_A_NAME] 		= "NO NOMBRE";
				bp[BPA_SWIFTCODE] 	= "NO SWIFT";
				bp[BPA_A_EMAIL] 	= "";
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}
		return processBPartnerInfo(bp);
	}   //  getBPartnerInfo
	
	
	/**
	 * Process Business Partner Information
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 16/04/2013, 20:14:49
	 * @param bp
	 * @return
	 * @return String[]
	 */
	private String [] processBPartnerInfo(String [] bp){
		//	Process Business Partner Account No
		String bpaAccount = bp[BPA_A_ACCOUNT];
		bpaAccount = bpaAccount.substring(0, bpaAccount.length() >= 20? 20: bpaAccount.length());
		bpaAccount = String.format("%1$-" + 20 + "s", bpaAccount).replace(" ","0");
		bp[BPA_A_ACCOUNT] = bpaAccount;
		//	Process Tax ID
		String bpaTaxID = bp[BPA_A_IDENT_SSN];
		bpaTaxID = bpaTaxID.replace("-", "").trim();
		bpaTaxID = bpaTaxID.substring(0, bpaTaxID.length() >= 15? 15: bpaTaxID.length());
		//bpaTaxID = String.format("%1$-" + 15 + "s", bpaTaxID);
		bp[BPA_A_IDENT_SSN] = bpaTaxID;
		//	Process Account Name
		String bpaName = bp[BPA_A_NAME];
		bpaName = bpaName.substring(0, bpaName.length() >= 60? 60: bpaName.length());
		bpaName = String.format("%1$-" + 60 + "s", bpaName);
		bp[BPA_A_NAME] = bpaName;
		//	Process Swift Code
		String bpaSwiftCode = bp[BPA_SWIFTCODE];
		bpaSwiftCode = bpaSwiftCode.substring(0, bpaSwiftCode.length() >= 12? 12: bpaSwiftCode.length());
		
		bp[BPA_SWIFTCODE] = bpaSwiftCode;
		//	Process e-mail
		String bpaEmail = bp[BPA_A_EMAIL];
		bpaName = bpaEmail.substring(0, bpaEmail.length() >= 60? 60: bpaEmail.length());
		bpaEmail = String.format("%1$-" + 50 + "s", bpaEmail);
		bp[BPA_A_EMAIL] = bpaEmail;
		return bp;
	}	//	processBPartnerInfo

	
}
