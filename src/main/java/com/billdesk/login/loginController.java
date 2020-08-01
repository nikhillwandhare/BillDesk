package com.billdesk.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class loginController {

	@RequestMapping("/")
	public String callLogin()
	{
		return "login/login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public @ResponseBody ModelAndView checkLogin(HttpServletRequest req,HttpServletResponse res)
	{
		ModelAndView model = new ModelAndView();
		model.setViewName("${pageContext.request.contextPath}/dashboard/dashboard.jsp");
		model.addObject("result", "success");
		
		return model;
	}
	
	@RequestMapping("/dashboard")
	public String callDashboard(HttpServletRequest req,HttpServletResponse res)
	{
		return "dashboard/dashboard";
	}
}
