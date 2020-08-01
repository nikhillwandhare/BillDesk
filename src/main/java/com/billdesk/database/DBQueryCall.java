package com.billdesk.database;

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


@Controller
public class DBQueryCall {

	@Autowired
	DBProcess dao;
	
	@RequestMapping(value="getList", method = RequestMethod.POST)
	public @ResponseBody ArrayList<Object> executeDatabaseQuery(HttpServletRequest request,HttpServletResponse response)
	{
		HashMap<String,Object> data;
		Map<String,Object> param=new HashMap<String,Object>();
		
		int id = Integer.parseInt(request.getParameter("Id"));
		param.put("Pi_Sql_Mst_Id", id);
		param.put("Pi_Sql_Param",request.getParameter("param"));
		data = dao.executeProcedure(null, "Pr_Exec_Sql", param);
		
		ArrayList<Object> arr = (ArrayList<Object>) data.get("POC_SQL_RESULT");
		
		return arr;
	}
	
}
