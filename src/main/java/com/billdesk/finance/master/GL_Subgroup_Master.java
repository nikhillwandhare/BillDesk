package com.billdesk.finance.master;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/finance/master/gl_subgroup")
public class GL_Subgroup_Master {

	@RequestMapping(value="/gl_subgroup_master")
	public String loadGlGroupMaster()
	{
		return "finance/master/gl_subgroup/gl_subgroup_master";
	}
	
	@RequestMapping(value="/gl_subgroup_list")
	public String loadGlSubgroupList()
	{
		return "finance/master/gl_subgroup/gl_subgroup_list";
	}
}
