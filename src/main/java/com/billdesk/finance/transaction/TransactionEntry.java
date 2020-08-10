package com.billdesk.finance.transaction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/finance/transaction/transaction_entry")
public class TransactionEntry {

	@RequestMapping(value="/transaction_entry_form")
	public String loadGlMaster()
	{
		return "finance/transaction/transaction_entry/transaction_entry_form";
	}
	
	@RequestMapping(value="/transaction_entry_list")
	public String loadGlMasterList()
	{
		return "finance/transaction/transaction_entry/transaction_entry_list";
	}
	
}
