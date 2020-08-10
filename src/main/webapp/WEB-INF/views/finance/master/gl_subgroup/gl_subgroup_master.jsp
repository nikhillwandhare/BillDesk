<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SubGroup Master</title>
</head>
<body>
<div class="row page-titles">
   <div class="col-md-5 align-self-center">
   	 	<h4 class="text-themecolor">Sub Group</h4>
   </div>
   <div class="col-md-7 align-self-center text-right">
   		<div class="d-flex justify-content-end align-items-center">
            <ol class="breadcrumb">
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Administration</a></li>
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Master</a></li>
                <li class="breadcrumb-item active">Sub Group Master</li>
            </ol>
        	<button type="button" class="btn btn-info d-none d-lg-block m-l-15" id="backToList"><i class="mdi mdi-chevron-double-left"></i> Back To List</button>
       	</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
	    <div class="card">
			<div class="card-body">
                <form action="#">
                    <div class="form-body">
                        <h3 class="card-title">SubGroup</h3>
                        <hr>
                         <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Type</label>
                                    <select class="form-control custom-select" id="balsheet_type">
                                    	<option value="">Select..</option>
                                        <option value="A">Asset</option>
                                        <option value="L">Libility</option>
                                        <option value="R">Income</option>
                                        <option value="X">Expenses</option>
                                    </select>
                                 </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Group</label>
                                    <select class="form-control custom-select" id="groupId">
                                    </select>
                                </div>
                            </div>
                         </div>
                         <div class="row">
							<div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">SubGroup Code</label>
                                    <input type="text" id="subgroupCode" class="form-control form-control-danger" placeholder="Code">
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label class="control-label">SubGroup Name</label>
                                    <input type="text" id="subgroupName" class="form-control form-control-danger" placeholder="Sub Group Name">
                                </div>
                            </div>
                         </div>
                         <div class="row">
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group has-danger">
                                    <label class="control-label">SubGroup Local Name</label>
                                    <input type="text" class="form-control form-control-danger" placeholder="Local Name" id="localName">
                                </div>
                            </div>
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Activity</label>
                                    <select class="form-control custom-select" id="activityId">
                                    </select>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-actions" style="text-align:right;">
                        <button type="submit" class="btn btn-success"> <i class="mdi mdi-check"></i> Save</button>
                        <button type="button" class="btn btn-dark"><i class="mdi mdi-close"></i>Cancel</button>
                    </div>
                </form>
            </div>
	    </div>
	</div>
</div>
<script>
$(document).ready(function(){
	
	$("#backToList").click(function(){
	    $.ajax({
			url : "${pageContext.request.contextPath}/finance/master/gl_subgroup/gl_subgroup_list",
			type : 'post',
			async : false,
			success : function(resp) {
				$(".container-fluid").empty();
				$(".container-fluid").html(resp);
			}
	    });
	});
	
	$.ajax({
		url : "${pageContext.request.contextPath}/getList",
		type : 'post',
		dataType : 'json',
		async: false,
		data : {
			Id : 11,
			param : $("#activityId").val() == null ? "Null" : $("#activityId").val()
		},
		success : function(resp) {
			var groupList = "";
				 $.each(resp,function(key,val){
					 groupList = groupList + '<option value="'+resp[key].ACTIVITY_ID+'" data-select2-id="'+resp[key].ACTIVITY_ID+'">'+resp[key].ACTIVITY_NAME+'</option>';
			}); 		
				$("#activityId").empty();		 
				$("#activityId").append(groupList);	
		}
	});

	$("#balsheet_type").change(function(){
	    $.ajax({
			url : "${pageContext.request.contextPath}/getList",
			type : 'post',
			dataType : 'json',
			async: false,
			data : {
				Id : 6,
				param : "'"+$("#balsheet_type").val()+"'~Null"
			},
			success : function(resp) {
				var groupList = "";
					 $.each(resp,function(key,val){
						 groupList = groupList + '<option value="'+resp[key].FAGROUP_ID+'" data-select2-id="'+resp[key].FAGROUP_ID+'">'+resp[key].FAGROUP_NAME+'</option>';
				}); 		
					$("#groupId").empty();		 
					$("#groupId").append(groupList);	
			}
		});
	});

	
});
</script>
</body>
</html>