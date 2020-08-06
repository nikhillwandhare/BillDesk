package com.billdesk.finance.master;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/finance/master/glsubgroup")
public class GL_Subgroup_Master {

	@RequestMapping(value="/glsubgroupmaster")
	public String loadGlGroupMaster()
	{
		return "finance/master/gl_subgroup/gl_master";
	}
	
	@RequestMapping(value="/glsubgrouplist")
	public String loadGlSubgroupList()
	{
		return "finance/master/gl_subgroup/gl_master_list";
	}
}
