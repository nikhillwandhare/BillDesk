<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GL Master</title>
</head>
<body>
<div class="row page-titles">
   <div class="col-md-5 align-self-center">
   	 	<h4 class="text-themecolor">GL Master</h4>
   </div>
   <div class="col-md-7 align-self-center text-right">
   		<div class="d-flex justify-content-end align-items-center">
            <ol class="breadcrumb">
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Administration</a></li>
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Master</a></li>
                <li class="breadcrumb-item active">GL Master</li>
            </ol>
        	<button type="button" class="btn btn-info d-none d-lg-block m-l-15"><i class="mdi mdi-plus"></i> Create New</button>
       	</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
	    <div class="card">
			<div class="card-body">
                <form action="#">
                    <div class="form-body">
                        <h3 class="card-title">GL Master</h3>
                        <hr>
                         <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Sub-Group</label>
                                    <select class="form-control custom-select" id="subgroup">
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Prefix</label>
                                    <input type="text" id="prefix" class="form-control form-control-danger" placeholder="Prefix">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Default</label>
                                    <input type="text" id="prefix2" class="form-control form-control-danger" placeholder="Default">
                                </div>
                            </div>
                         </div>
                         <div class="row">
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group has-danger">
                                    <label class="control-label">GL Name</label>
                                    <input type="text" class="form-control form-control-danger" placeholder="GL Name" id="glname">
                                </div>
                            </div>
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">GL Type</label>
                                    <select class="form-control custom-select" id="gltype">
                                    </select>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group has-success">
                                    <label class="control-label">Status</label>
                                    <select class="form-control custom-select">
                                        <option value="E">Enable</option>
                                        <option value="D">Disable</option>
                                    </select>
                                </div>
                            </div>
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Opening Date</label>
                                    <input type="date" class="form-control" placeholder="dd/mm/yyyy">
                                </div>
                            </div>
                            <!--/span-->
                        </div>
                        <!--/row-->
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="custom-control custom-checkbox m-b-0" id="accountFlagDiv">
                                            <input type="checkbox" class="custom-control-input" id="accountFlag">
                                            <span class="custom-control-label">Account Flag</span>
                                    </label>
                                </div>
                            </div>
                            <!--/span-->
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
	$("#branchStr").select2();
	
    $.ajax({
		url : "${pageContext.request.contextPath}/getList",
		type : 'post',
		dataType : 'json',
		async: false,
		data : {
			Id : 2,
			param : "${companyId}"
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
</script>
</body>
</html>