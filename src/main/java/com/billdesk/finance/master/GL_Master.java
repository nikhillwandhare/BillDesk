package com.billdesk.finance.master;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/finance/master/gl")
public class GL_Master {

	@RequestMapping(value="/gl_master_form")
	public String loadGlMaster()
	{
		return "finance/master/gl_master/gl_master";
	}
	
	@RequestMapping(value="/gl_master_list")
	public String loadGlMasterList()
	{
		return "finance/master/gl_master/gl_master_list";
	}
}
