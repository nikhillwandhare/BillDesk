package com.billdesk.login;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billdesk.database.DBCall;
import com.billdesk.userinfo.UserInformationService;


@Controller
public class loginController {

	@Autowired
	DBCall call;
	
	@RequestMapping("/")
	public String callLogin()
	{
		return "login/login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public @ResponseBody Map<String,Object> checkLogin(HttpServletRequest req,HttpServletResponse res)
	{
		Map<String,Object> map= new HashMap<String,Object>();
		Map<String,Object> resultMap= new HashMap<String,Object>();
		HashMap<String,Object> result = new HashMap<String,Object>();
		
		int companyId = Integer.parseInt(req.getParameter("company_id"));
		int branchId = Integer.parseInt(req.getParameter("branch_id"));
		int finyear = Integer.parseInt(req.getParameter("finyear"));
		
		map.put("p_company_id", companyId);
		map.put("p_branch_id", branchId);
		map.put("p_finyear", finyear);
		map.put("p_user_name", req.getParameter("userName"));
		map.put("p_password", req.getParameter("password"));
		
		result = call.executeProcedure("BILLDESK", "check_user_login", map);
		
		String rest = (String)result.get("RESULT");
		String msg = (String)result.get("MESSAGE");
		
		if(rest.equals("Success"))
		{
			ArrayList<Object> userData = (ArrayList<Object>)result.get("DATA");
			resultMap.put("user_data", userData);
			resultMap.put("result", rest);
			resultMap.put("message", msg);
			resultMap.put("view_name","dashboard/dashboard");
			HttpSession session  = setUserInfo((Map<String,Object>)userData.get(0),req);
			
		}
		else 
		{
			resultMap.put("result", rest);
			resultMap.put("message", msg);
		}
		
		return resultMap;
	}
	
	@RequestMapping("/dashboard")
	public String callDashboard(HttpServletRequest req,HttpServletResponse res)
	{
		return "dashboard/dashboard";
	}
	
	public HttpSession setUserInfo(Map<String,Object> data,HttpServletRequest req)
	{		
			HttpSession session = req.getSession();
			UserInformationService user = new UserInformationService();
			user.setADUM_USER_ID(Integer.valueOf((data.get("ADUM_USER_ID")).toString()));
			user.setADUM_USER_CODE((String)data.get("ADUM_USER_CODE"));
			user.setADUM_USER_NAME((String)data.get("ADUM_USER_NAME"));
			user.setCOMPANY_ID(Integer.valueOf((data.get("ADUM_COMPANY")).toString()));
			user.setBRANCH_ID(Integer.valueOf((data.get("ADUM_BRANCH")).toString()));
			user.setFINYEAR(Integer.valueOf((data.get("FINYEAR")).toString()));
			user.setCOMPANY_NAME((String)data.get("COMPANY_NAME"));
			user.setBRANCH_NAME((String)data.get("BRANCH_NAME"));
			
			session.setAttribute("userId", user.getADUM_USER_ID());
			session.setAttribute("userCode",user.getADUM_USER_CODE());
			session.setAttribute("userName",user.getADUM_USER_NAME());
			session.setAttribute("companyId",user.getCOMPANY_ID());
			session.setAttribute("companyName",user.getCOMPANY_NAME());
			session.setAttribute("branchId",user.getBRANCH_ID());
			session.setAttribute("branchName",user.getBRANCH_NAME());
			session.setAttribute("finyear",user.getFINYEAR());
			
			return session;
	}
}
