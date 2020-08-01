package com.billdesk.database;

import java.util.HashMap;
import java.util.Map;

public interface DBCall{

	public HashMap executeProcedure(String packageName, String procedureName, Map<String,Object> parameters);
	public HashMap<String,Object> executeFunction(String packageName, String functionName, Map<String,Object> parameters);
}
