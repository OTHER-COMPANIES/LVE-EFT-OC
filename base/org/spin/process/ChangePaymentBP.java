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
 * Copyright (C) 2003-2007 e-Evolution,SC. All Rights Reserved.               *
 * Contributor(s): Victor Perez www.e-evolution.com                           *
 *****************************************************************************/

package org.spin.process;

import java.util.Properties;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.model.MPayment;
import org.compiere.model.MBPartner;


/**
 *	CopyFromBOM Process
 *	Copies BOM Lines from Selected BOM to the Current BOM
 *	The BOM being copied to must have no pre-existing BOM Lines  
 *	
 *  @author Tony Snook 
 *  @version $Id: CopyFromBOM.java,v 1.0 2008/07/04 05:24:03 tspc Exp $
 */
public class ChangePaymentBP extends SvrProcess {
	/**					*/
	private int	p_C_BPartner_ID = 0;
	private int p_C_Payment_ID = 0;
	private int no = 0;
	private Properties ctx = Env.getCtx();

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		System.out.println("Hola");
		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_Payment_ID"))
				p_C_Payment_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		
	} //	prepare

	@SuppressWarnings("unused")
	protected String doIt() throws Exception
	{
		log.info("payer=" + p_C_Payment_ID + " BP " + p_C_BPartner_ID);
		if (p_C_BPartner_ID == 0)
			throw new IllegalArgumentException("BPartner == 0");
		if (p_C_Payment_ID == 0)
			throw new IllegalArgumentException("payer == 0");
		//if (p_Recpay_ID == p_PP_Product_BOM_ID)
		//	return "";

		MPayment pay = new MPayment(ctx, p_C_Payment_ID, get_TrxName());
		MBPartner bp = new MBPartner(ctx, p_C_BPartner_ID, get_TrxName());

		pay.setC_BPartner_ID(p_C_BPartner_ID);
		pay.save();
		
		return "OK";
		
	}
	
	@Override
	protected void postProcess(boolean success)
	{
		this.addLog("@Copied@=" + no);
	}
}
