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
package org.spin.process;

import java.io.File;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.I_C_PaySelectionCheck;
import org.compiere.model.I_C_Payment;
import org.compiere.model.MBankAccount;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentBatch;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.PaymentExport;
import org.spin.util.PaymentVerificationExport;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class ProcessPaymentBatch extends SvrProcess {
	
	/**	Payment Batch	*/
	private int 	p_C_PaymentBatch_ID = 0;
	private String 	p_File_Directory 	= null;
	private StringBuffer err			= null;
	private String	fileName			= null;
	private String	m_PaymentExportOrVerifyClass = null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("C_PaymentBatch_ID"))
				p_C_PaymentBatch_ID = para.getParameterAsInt();
			else if(name.equals("File_Directory"))
				p_File_Directory = (String)para.getParameter();
		}
		
		//	Set RecordID
		if(getRecord_ID() != 0 && p_C_PaymentBatch_ID == 0)
			p_C_PaymentBatch_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		if(p_C_PaymentBatch_ID == 0)
			throw new AdempiereException("Not @C_PaymentBatch_ID@");
		
		err = new StringBuffer();
		
		MPaymentBatch m_batch = new MPaymentBatch(getCtx(), p_C_PaymentBatch_ID, get_TrxName());
		//	Get Payment Processor
		
		Env.setContext(Env.getCtx(), "#CurrentPath", p_File_Directory);
		
		//	File Name
		fileName = p_File_Directory + File.separator + m_batch.getDocumentNo() + ".txt";
		
		//	Export Payment or Payment Verification
		int no = 0;
		
		try {
			List<MPaySelectionCheck> listPSC = new Query(getCtx(), I_C_PaySelectionCheck.Table_Name, 
					"EXISTS(SELECT 1 " +
					"			FROM C_Payment p " +
					"		WHERE p.C_PaymentBatch_ID = " + m_batch.getC_PaymentBatch_ID() +
					"		AND C_PaySelectionCheck.C_Payment_ID = p.C_Payment_ID " +
					"		AND p.DocStatus IN('CO', 'CL'))", get_TrxName())
				.setOnlyActiveRecords(true)
				.<MPaySelectionCheck>list();
			
			//	To Array
			MPaySelectionCheck [] m_checks = listPSC.toArray(new MPaySelectionCheck[listPSC.size()]);
			
			//	verify if this is a Payment Verification
			if(m_checks == null || m_checks.length == 0) {
				List<MPayment> listPay = new Query(getCtx(), I_C_Payment.Table_Name, 
						I_C_Payment.Table_Name + ".PayConfirm_ID = " + m_batch.getC_PaymentBatch_ID()
						, get_TrxName())
					.<MPayment>list();
				
				//	To Array
				MPayment [] m_payments = listPay.toArray(new MPayment[listPay.size()]);
				
				if(m_payments == null || m_payments.length == 0)
					return "@PayConfirm_ID@ = 0";
				
				//	Export Payment Verification
				no = paymentVerificationExport(m_payments);
				
			} else {
				//	Export Payments
				no = paymentExport(m_checks);
			}
		} catch (ClassNotFoundException e) {
			no = -1;
			err.append("No custom PaymentExport class " + m_PaymentExportOrVerifyClass + " - " + e.toString());
			log.log(Level.SEVERE, err.toString(), e);
		}
		catch (Exception e)
		{
			no = -1;
			err.append("Error in " + m_PaymentExportOrVerifyClass + " check log, " + e.toString());
			log.log(Level.SEVERE, err.toString(), e);
		}
		if (no >= 0) {
			//	Process Batch
			m_batch.setProcessed(true);
			m_batch.save();
			return "@Saved@: \n"
					+ fileName + " \n"
					+ Msg.getMsg(Env.getCtx(), "NoOfLines") + "=" + no;
		} else
			return "Error: " +  err.toString();
		
		//	End Yamel Senih
	}
	
	/**
	 * Generate the file to Export for payments
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/05/2013, 01:08:51
	 * @param m_checks
	 * @return
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @return int
	 */
	private int paymentExport(MPaySelectionCheck [] m_checks) 
			throws ClassNotFoundException, InstantiationException, IllegalAccessException{
		//	Get Account File Export
		MPaySelection m_PaySelection = (MPaySelection) m_checks[0].getC_PaySelection();
		MBankAccount m_BankAccount = (MBankAccount) m_PaySelection.getC_BankAccount();
		
		//  Create File
		m_PaymentExportOrVerifyClass = m_BankAccount.getPaymentExportClass();
		
		if (m_PaymentExportOrVerifyClass == null || m_PaymentExportOrVerifyClass.trim().length() == 0) {
			m_PaymentExportOrVerifyClass = "org.compiere.util.GenericPaymentExport";
		}
		//	Get Payment Export Class
		PaymentExport custom = null;
		Class<?> clazz = Class.forName(m_PaymentExportOrVerifyClass);
		custom = (PaymentExport)clazz.newInstance();
		return custom.exportToFile(m_checks, new java.io.File(fileName), err);
	}
	
	/**
	 * Generate the file to Export for payments verification
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/05/2013, 01:31:12
	 * @param m_payments
	 * @return
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @return int
	 */
	private int paymentVerificationExport(MPayment [] m_payments) 
			throws ClassNotFoundException, InstantiationException, IllegalAccessException{
		//	Get Account File Export
		MBankAccount m_BankAccount = (MBankAccount) m_payments[0].getC_BankAccount();
		
		//  Create File
		m_PaymentExportOrVerifyClass = m_BankAccount.get_ValueAsString("PaymentExportVerifyClass");
		
		if (m_PaymentExportOrVerifyClass == null || m_PaymentExportOrVerifyClass.trim().length() == 0) {
			m_PaymentExportOrVerifyClass = "org.spin.util.GenericPaymentVerificationExport";
		}
		//	Get Payment Export Class
		PaymentVerificationExport custom = null;
		Class<?> clazz = Class.forName(m_PaymentExportOrVerifyClass);
		custom = (PaymentVerificationExport)clazz.newInstance();
		return custom.exportToFile(m_payments, new java.io.File(fileName), err);
	}

}
