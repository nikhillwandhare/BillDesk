package com.billdesk.finance.master;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/finance/master/gl_group")
public class GL_Group_Master {

	@RequestMapping(value="/gl_group_master")
	public String loadGlMaster()
	{
		return "finance/master/gl_group/gl_group_master";
	}
	
	@RequestMapping(value="/gl_group_list")
	public String loadGlMasterList()
	{
		return "finance/master/gl_group/gl_group_list";
	}
}
