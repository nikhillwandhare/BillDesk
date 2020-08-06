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
        	<button type="button" class="btn btn-info d-none d-lg-block m-l-15" id="addNewGL"><i class="mdi mdi-plus"></i> Add New GL</button>
       	</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
	    <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">GL List</h4>
                                <h6 class="card-subtitle">Data table example</h6>
                                <div class="table-responsive m-t-40">
                                    <table id="myTable" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                            </tr>
                                        </thead>
                                        <tbody>>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
	</div>
</div>
<script>
$(document).ready(function(){

		$('#myTable').DataTable();
		$("#addNewEntry").click(function(){
		    $.ajax({
				url : "${pageContext.request.contextPath}/finance/master/glgroup/glgroupmaster",
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
		var glList = "";
			 $.each(resp,function(key,val){
				 glList = glList + '<tr><td>'+resp[key].FAGROUP_ID+'</td>'
				 				 +'<td>'+resp[key].FAGROUP_CODE+'</td>'
				 				 +'<td>'+resp[key].FAGROUP_NAME+'</td>'
				 				 +'<td>'+resp[key].TYPE_NAME+'</td>'
				 				 +'<td><i class="ti-pencil-alt" val="'+resp[key].FAGROUP_ID+'"></i></td>'
				 				 +'<td><i class="ti-trash" val="'+resp[key].FAGROUP_ID+'"></i></td></tr>';
		}); 		
			$("#myTable tbody").empty();		 
			$("#myTable tbody").append(glList);	
	}
});
 });

</script>
</body>
</html>