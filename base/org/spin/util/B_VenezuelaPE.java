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
import java.util.Date;
import java.util.logging.Level;

import org.compiere.model.MBankAccount;
import org.compiere.model.MClient;
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
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 * Export class for Bank of Venezuela
 */
public class B_VenezuelaPE implements PaymentExport {

	/** Logger								*/
	static private CLogger	s_log = CLogger.getCLogger (B_VenezuelaPE.class);

	/** BPartner Info Index for Account    		*/
	private static final int     BPA_A_ACCOUNT 		= 0;
	/** BPartner Info Index for Value       	*/
	private static final int     BPA_A_IDENT_SSN 	= 1;
	/** BPartner Info Index for Name        	*/
	private static final int     BPA_A_NAME 		= 2;
	/** BPartner Info Index for Swift Code	    */
	private static final int     BPA_SWIFTCODE 		= 3;
	
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
		MClient client = MClient.get(orgInfo.getCtx(), orgInfo.getAD_Client_ID());
		//	Process Organization Tax ID
		String orgTaxID = orgInfo.getTaxID().replace("-", "").trim();
		orgTaxID = orgTaxID.substring(0, (orgTaxID.length() >= 10? 10: orgTaxID.length()));
		orgTaxID = String.format("%1$-" + 10 + "s", orgTaxID);
		//	Client Name
		String clientName = client.getName().replace(",", "").replace(".", "");
		clientName = clientName.substring(0, (clientName.length() >= 35? 35: clientName.length()));
		clientName = String.format("%1$-" + 35 + "s", clientName);
		//	Account No
		String bankAccountNo = m_BankAccount.getAccountNo().trim();
		bankAccountNo = bankAccountNo.substring(0, (bankAccountNo.length() >= 20? 20: bankAccountNo.length()));
		bankAccountNo = bankAccountNo.replace(" ", "");
		bankAccountNo = String.format("%1$-" + 20 + "s", bankAccountNo).replace(" ", "0");
		//	Batch Document No
		String batchDocNo = String.format("%1$-" + 8 + "s", m_PaymentBatch.getDocumentNo()).replace(" ", "0");
		
		//	Now
		Date now = new Date(System.currentTimeMillis());
		//	Format Date
		String format = "dd/MM/yyyy";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
			
		int noLines = 0;
		StringBuffer line = null;
		try
		{
			
			FileWriter fw = new FileWriter(file);
			
			//  write header
			line = new StringBuffer();
			//	Header
			line.append("HEADER  ")									//	Constant
				.append(batchDocNo)									//	Document No
				.append(batchDocNo)									//	Document No
				.append(orgTaxID)									//	Organization Tax ID
				.append(sdf.format(now))							//	Current Date
				.append(sdf.format(m_PaySelection.getPayDate()))	//	Payment Date
				//	New Line
				.append(Env.NL);
			//	
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
				
				/*//  Comment - list of invoice document no
				StringBuffer comment = new StringBuffer();
				MPaySelectionLine[] psls = mpp.getPaySelectionLines(false);
				for (int l = 0; l < psls.length; l++)
				{
					if (l > 0)
						comment.append(" - ");
					comment.append(psls[l].getInvoice().getDocumentNo());
				}*/
				
				//	Process Bank Type
				String bpaBankType = "00";
				if(bp[BPA_SWIFTCODE].equals("BSCHVECA"))
					bpaBankType = "10";
				//	Payment Detail
				m_Payment = (MPayment) mpp.getC_Payment();
				//	Process Document No
				String docNo = m_Payment.getDocumentNo();
				docNo = docNo.substring(0, (docNo.length() >= 8? 8: docNo.length()));
				docNo = String.format("%1$" + 8 + "s", docNo).replace(" ", "0");
				//	Payment Amount
				String amt = String.format("%.2f", m_Payment.getPayAmt().abs()).replace(".", ",");
				amt = String.format("%1$" + 18 + "s", amt).replace(" ", "0");
				//	Line
				line = new StringBuffer();
				line
					//	Debit Detail
					.append("DEBITO  ")									//	Constant
					.append(docNo)										//	Document No
					.append(orgTaxID)									//	Tax ID
					.append(clientName)									//	Client Name
					.append(sdf.format(m_PaySelection.getPayDate()))	//	Payment Date
					.append("00")										//	Account Type
					.append(bankAccountNo)								//	Bank Account No
					.append(amt)										//	Amount
					.append("VEB40")									//	Currency
					//	New Line
					.append(Env.NL)			
					//	Credit Detail
					.append("CREDITO ")									//	Constant 
					.append(docNo)										//	Document No
					.append(bp[BPA_A_IDENT_SSN])						//	Business Partner Account Tax ID
					.append(bp[BPA_A_NAME])								//	Business Partner Name for Account
					.append("00")										//	Account Type
					.append(bp[BPA_A_ACCOUNT])							//	Account No
					.append(amt)										//	Payment Amount
					.append(bpaBankType)								//	Bank Type
					.append(bp[BPA_SWIFTCODE])							//	Swift Code
					//	New Line
					.append(Env.NL);
				fw.write(line.toString());
				noLines++;
			}   //  write line
			
			//	Process Total Amount
			//	Payment Amount
			String totalAmt = String.format("%.2f", m_PaySelection.getTotalAmt().abs()).replace(".", ",");
			totalAmt = String.format("%1$" + 18 + "s", totalAmt).replace(" ", "0");
			
			//	Footer Summary
			line = new StringBuffer();
			line.append("TOTAL   ")							//	Constant
				.append(String.format("%0" + 5 + "d", 1))	//	Constant
				.append(String.format("%0" + 5 + "d", 1))	//	Constant
				.append(totalAmt);							//	Total Amount
			//	Add Line No
			noLines++;
			//	Write Line
			fw.write(line.toString());
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
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 16/04/2013, 19:08:40
	 * @param C_BPartner_ID
	 * @return
	 * @return String[]
	 */
	private String[] getBPartnerInfo (int C_BPartner_ID)
	{
		String[] bp = new String[4];
		//	Sql
		String sql = "SELECT MAX(bpa.AccountNo) AccountNo, bpa.A_Ident_SSN, bpa.A_Name, bpb.SwiftCode " +
				"FROM C_BP_BankAccount bpa " +
				"INNER JOIN C_Bank bpb ON(bpb.C_Bank_ID = bpa.C_Bank_ID) " +
				"WHERE bpa.C_BPartner_ID = ? " +
				"AND bpa.IsActive = 'Y' " +
				"AND bpa.IsACH = 'Y' " +
				"GROUP BY bpa.C_BPartner_ID, bpa.A_Ident_SSN, bpa.A_Name, bpb.SwiftCode";
		
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
			} else {
				bp[BPA_A_ACCOUNT] 	= "NO CUENTA";
				bp[BPA_A_IDENT_SSN] = "NO RIF/CI";
				bp[BPA_A_NAME] 		= "NO NOMBRE";
				bp[BPA_SWIFTCODE] 	= "NO SWIFT";
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
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 16/04/2013, 19:08:02
	 * @param bp
	 * @return
	 * @return String[]
	 */
	private String [] processBPartnerInfo(String [] bp){
		//	Process Business Partner Account No
		String bpaAccount = bp[BPA_A_ACCOUNT];
		bpaAccount = bpaAccount.substring(0, bpaAccount.length() >= 20? 20: bpaAccount.length());
		bpaAccount = String.format("%1$-" + 20 + "s", bpaAccount);
		bp[BPA_A_ACCOUNT] = bpaAccount;
		//	Process Tax ID
		String bpaTaxID = bp[BPA_A_IDENT_SSN];
		bpaTaxID = bpaTaxID.replace("-", "").trim();
		bpaTaxID = bpaTaxID.substring(0, bpaTaxID.length() >= 10? 10: bpaTaxID.length());
		bpaTaxID = String.format("%1$-" + 10 + "s", bpaTaxID);
		bp[BPA_A_IDENT_SSN] = bpaTaxID;
		//	Process Account Name
		String bpaName = bp[BPA_A_NAME];
		bpaName = bpaName.substring(0, bpaName.length() >= 30? 30: bpaName.length());
		bpaName = String.format("%1$-" + 30 + "s", bpaName);
		bp[BPA_A_NAME] = bpaName;
		//	Process Swift Code
		String bpaSwiftCode = bp[BPA_SWIFTCODE];
		bpaSwiftCode = bpaSwiftCode.substring(0, bpaSwiftCode.length() >= 12? 12: bpaSwiftCode.length());
		bp[BPA_SWIFTCODE] = bpaSwiftCode;
		return bp;
	}	//	processBPartnerInfo
	
	
}
