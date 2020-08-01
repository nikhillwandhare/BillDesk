package com.billdesk.finance.master;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/finance/master")
public class GL_Master {

	@RequestMapping(value="/glmaster")
	public String loadGlMaster()
	{
		return "finance/master/gl_master";
	}
}
