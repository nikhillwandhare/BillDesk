package com.billdesk.database;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

public class DBProcess implements DBCall{

	@Autowired
	JdbcTemplate jdbcTemplate;

	public void setjdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public HashMap<String,Object> executeProcedure(String packageName, String procedureName, Map<String,Object> parameters) {
		System.out.println("Parameters>>"+parameters);
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			SimpleJdbcCall dbcall = new SimpleJdbcCall(jdbcTemplate);
			dbcall.withCatalogName(packageName);
			dbcall.withProcedureName(procedureName);
			SqlParameterSource parameter = new MapSqlParameterSource(parameters);
			map = dbcall.execute(parameter);
			System.out.println("Result Impl>>"+map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				jdbcTemplate.getDataSource().getConnection().close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return (HashMap<String,Object>) map;
	}
	
	public HashMap<String,Object> executeFunction(String packageName, String functionName, Map<String,Object> parameters) {
		System.out.println("Parameters>>"+parameters);
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			SimpleJdbcCall dbcall = new SimpleJdbcCall(jdbcTemplate);
			dbcall.withCatalogName(packageName);
			dbcall.withFunctionName(functionName);
			SqlParameterSource parameter = new MapSqlParameterSource(parameters);
			map = dbcall.executeFunction(Map.class,parameter);
			System.out.println("Result Impl>>"+map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				jdbcTemplate.getDataSource().getConnection().close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return (HashMap<String,Object>) map;
	}
}
