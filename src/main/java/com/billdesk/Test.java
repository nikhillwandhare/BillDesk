package com.billdesk;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.billdesk.database.DBCall;

public class Test {
	
	
	public static void main(String args[])
	{
		   DBCall call;		
			ModelAndView model = new ModelAndView();
			int userid = 79;
			Map<String,Object> map= new HashMap<String,Object>();
			HashMap<String,Object> result = new HashMap<String,Object>();
			map.put("p_user_id", userid);
			//result = DBCall.executeProcedure("BILLDESK", "get_menu_tree", map);
	
	}
}
