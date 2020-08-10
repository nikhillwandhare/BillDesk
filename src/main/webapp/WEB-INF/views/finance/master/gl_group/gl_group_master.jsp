<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GL Group</title>
</head>
<body>
<input type="hidden" id="groupId">
<input type="hidden" id="flag">

<div class="row page-titles">
   <div class="col-md-5 align-self-center">
   	 	<h4 class="text-themecolor">GL Group</h4>
   </div>
   <div class="col-md-7 align-self-center text-right">
   		<div class="d-flex justify-content-end align-items-center">
            <ol class="breadcrumb">
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Administration</a></li>
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Master</a></li>
                <li class="breadcrumb-item active">GL Group</li>
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
                        <h3 class="card-title">GL Group</h3>
                        <hr>
                         <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Type</label>
                                    <select class="form-control custom-select" id="balsheet_type">
                                        <option value="A">Asset</option>
                                        <option value="L">Libility</option>
                                        <option value="R">Income</option>
                                        <option value="X">Expenses</option>
                                    </select>
                                 </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Group Code</label>
                                    <input type="text" id="groupCode" class="form-control form-control-danger" placeholder="Group Code">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Group Name</label>
                                    <input type="text" id="groupName" class="form-control form-control-danger" placeholder="Group Name">
                                </div>
                            </div>
                         </div>
                         <div class="row">
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group has-danger">
                                    <label class="control-label">Group Name Local</label>
                                    <input type="text" class="form-control form-control-danger" placeholder="Local Group Name " id="groupNameLocal">
                                </div>
                            </div>
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Display Serial Number</label>
                                    <input type="text" class="form-control form-control-danger" placeholder="Serial Number " id="srno">
                                </div>
                            </div>
                        </div>
                        

                    </div>
                    <div class="form-actions" style="text-align:right;">
                        <button type="button" class="btn btn-success"> <i class="mdi mdi-check"></i> Save</button>
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
			url : "${pageContext.request.contextPath}/finance/master/gl_group/gl_group_list",
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
			Id : 6,
			param : "Null"+"~"+"Null"
		},
		success : function(resp) {
			var branchList = "";
				 $.each(resp,function(key,val){
					branchList = branchList + '<option value="'+resp[key].ADCM_ID+'" data-select2-id="'+resp[key].ADCM_ID+'">'+resp[key].ADCM_NAME+'</option>';
			}); 		
				$("#branchStr").empty();		 
				$("#branchStr").append(branchList);	
		}
	});
    
});

function save_data()
{
	let param = {
	groupId : $("#groupId").val(),
	flag : $("#flag").val(),
	group_code : $("#groupCode").val(),
	group_name : $("#groupName").val(),
	group_name_local : $("#groupNameLocal").val(),
	srno : $("#srno").val()
	};
}
</script>
</body>
</html>