package com.billdesk.dashboard;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.billdesk.database.DBCall;

@Controller
@RequestMapping(value="/dashboard/data")
public class DashboardController {
	@Autowired
	DBCall call;
	
	@RequestMapping(value="/graphdata", method=RequestMethod.POST)
	public @ResponseBody ModelAndView loadDashboardData(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView();

		return model;
	}

	@RequestMapping(value="/getTreeMenu", method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody Map<String,Object> loadTreeData(HttpServletRequest request,HttpServletResponse response)
	{
		Map<String,Object> map= new HashMap<String,Object>();
		HashMap<String,Object> result = new HashMap<String,Object>();
		Map<String,Object> resultData= new HashMap<String,Object>();
		int userid = Integer.parseInt(request.getParameter("user_id"));
		map.put("p_user_id", userid);
		result = call.executeProcedure("BILLDESK", "get_menu_tree", map);
		ArrayList<Object> module_list = (ArrayList<Object>)result.get("MODULE_LIST");
		ArrayList<Object> menu_list = (ArrayList<Object>)result.get("MENU_LIST");
		ArrayList<Object> form_list = (ArrayList<Object>)result.get("FORM_LIST");
		resultData.put("module_list", module_list);
		resultData.put("menu_list", menu_list);
		resultData.put("form_list", form_list);
		return resultData;
	}
	
	@RequestMapping(value="pageCall", method = RequestMethod.POST)
	public String PageCalling(HttpServletRequest request,HttpServletResponse response)
	{
		return ""+request.getParameter("page_name");
	}
}
