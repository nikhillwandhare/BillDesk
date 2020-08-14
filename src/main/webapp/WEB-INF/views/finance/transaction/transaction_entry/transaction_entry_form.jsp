<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Entry</title>
</head>
<body>
<div class="row page-titles">
   <div class="col-md-5 align-self-center">
   	 	<h4 class="text-themecolor">Transaction Entry</h4>
   </div>
   <div class="col-md-7 align-self-center text-right">
   		<div class="d-flex justify-content-end align-items-center">
            <ol class="breadcrumb">
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Finance</a></li>
            	<li class="breadcrumb-item"><a href="javascript:void(0)">Transaction</a></li>
                <li class="breadcrumb-item active">Transaction Entry</li>
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
                        <h3 class="card-title">Transaction Entry</h3>
                        <hr>
                         <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Pay Mode</label>
                                    <select class="form-control custom-select" id="payMode">
                                    	<option value="CP">Cash Payment</option>
                                    	<option value="BP">Bank Payment</option>
                                    	<option value="CR">Cash Receipt</option>
                                    	<option value="BR">Bank Receipt</option>
                                    	<option value="JV">Journal Voucher</option>
                                    	<option value="CT">Contra Voucher</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3"></div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Voucher Date</label>
                                    <input type="date" id="voucherDate" class="form-control" placeholder="Voucher Date">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Voucher Number</label>
                                    <input type="text" id="voucherNumber" class="form-control" placeholder="Voucher Number">
                                </div>
                            </div>
                         </div>
                         <div class="row">
                          <div class="col-md-6"></div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Token Date</label>
                                    <input type="text" id="tokenDate" class="form-control" placeholder="Token Date">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label class="control-label">Token Number</label>
                                    <input type="text" id="tokenNumber" class="form-control" placeholder="Token Number">
                                </div>
                            </div>
                         </div>
                         <div class="row">
                            <!--/span-->
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label">Narration</label>
                                    <input type="text" class="form-control" placeholder="Narration" id="narration">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        	<div class="col-md-10"></div>
                        	<div class="col-md-2">
                        		<div class="form-group">
									<div style="text-align:right">
										<button type="button" class="btn waves-effect waves-light btn-block btn-success" id="addRow">Add Row</button>
									</div>
								</div>
							</div>
						</div>
						
						<div class="row">
                            <div class="col-md-12">
                            	<div class="form-group">
	                                <!-- <h4 class="card-title">Bootstrap Simple Table</h4>
	                                <h6 class="card-subtitle">Simple table example</h6> -->
                                    <table id="lineTable">
                                        <thead>
                                            <tr>
                                                <th style="text-align:center;">DEL</th>
	                                            <th style="text-align:center;">Sr.No.</th>
	                                            <th>GL Name</th>
	                                            <th>Account Name</th>
	                                            <th style="text-align:center;">Cheq/DD</th>
	                                            <th style="text-align:center;">Cheque No</th>
	                                            <th style="text-align:center;">Cheque Date</th>
	                                            <th style="text-align:right;">Credit Amt</th>
	                                            <th style="text-align:right;">Debit Amt</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="width:1%"><button type="button" class="btn waves-effect waves-light btn-block btn-danger">X</button></td>
                                                <td style="width:1%"><input type="text" id="srno" class="form-control" value="1"/></td>
                                                <td style="width:13%"><select id="gl_id" class="form-control"><option>GL Name</option></select></td>
                                                <td style="width:13%"><select id="acc_id" class="form-control"><option>Account Name</option></select></td>
                                                <td>
                                                    <select id="type" class="form-control">
                                                    	<option>Cheque</option>
                                                    	<option>DD</option>
                                                    	<option>Transfer</option>
                                                    	<option>RTGS</option>
                                                    </select>
                                                </td>
                                                <td><input type="text" id="chequeNo" class="form-control"/></td>
                                                <td><input type="date" id="chequeDate" class="form-control"/></td>
	                                            <td style="width:13%"><input type="text" id="cramt" class="form-control"/></td>
	                                            <td style="width:13%"><input type="text" id="dramt" class="form-control"/></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                
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
	$("#addRow").click(function(){
		var ln = $("#lineTable tr").length;
		ln = ln + 1;
		var row =   '<tr>'
		          + '<td style="width:1%"><button type="button" class="btn waves-effect waves-light btn-block btn-danger" id="del'+ln+'">X</button></td>'
		          + '<td style="width:1%"><input type="text" id="srno" class="form-control" value="'+ln+'"/></td>'
		          + '<td style="width:13%"><select id="gl_id'+ln+'" class="form-control"><option>GL Name</option></select></td>'
		          + '<td style="width:13%"><select id="acc_id'+ln+'" class="form-control"><option>Account Name</option></select></td>'
		          + '<td> <select id="type'+ln+'" class="form-control"> <option>Cheque</option><option>DD</option><option>Transfer</option><option>RTGS</option></select></td>'
		          + '<td><input type="text" id="chequeNo'+ln+'" class="form-control"/></td>'
		          + '<td><input type="date" id="chequeDate'+ln+'" class="form-control"/></td>'
		          + '<td style="width:13%"><input type="text" id="cramt'+ln+'" class="form-control"/></td>'
		          + '<td style="width:13%"><input type="text" id="dramt'+ln+'" class="form-control"/></td>'
		          + '</tr>';
		$("#lineTable").append(row);	
	});
	
	$("#del").click(function(){
		
	});
	$("#backToList").click(function(){
		$.ajax({
			url : "${pageContext.request.contextPath}/finance/transaction/transaction_entry/transaction_entry_list",
			type : 'post',
			async : false,
			success : function(resp) {
				$(".container-fluid").empty();
				$(".container-fluid").html(resp);
				}
	    	});
		});
	
	/*
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
	});*/
    

	
});
</script>
</body>
</html>