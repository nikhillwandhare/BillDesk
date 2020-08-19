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
			<div class="card-body printableArea">
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
								<button type="button" data-toggle="modal" data-target=".bs-example-modal-lg" class="btn waves-effect waves-light btn-block btn-success" id="newRow">Add Row</button>
							</div>
                        </div>
						<div class="row">
							<div class="table-responsive m-t-40" style="clear: both;">
                                <table class="table table-hover" id="lineTable">
                                    <thead>
                                        <tr>
                                            <th class="text-center">#</th>
                                            <th class="text-center">SrNo</th>
                                            <th>GL Name</th>
                                            <th>Account Name</th>
                                            <th>Cheq/DD</th>
                                            <th>Cheque No</th>
                                            <th>Cheque Date</th>
                                            <th class="text-right">Credit Amt</th>
                                            <th class="text-right">Debit Amt</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
						</div>
                    </div>
                    <div class="form-actions" style="text-align:right;">
                        <button type="submit" class="btn btn-success"> <i class="mdi mdi-check"></i> Save</button>
                        <button type="button" class="btn btn-dark"><i class="mdi mdi-close"></i>Cancel</button>
                        <button id="print" class="btn btn-warning btn-outline" type="button"> <span><i class="mdi mdi-printer"></i> Print</span> </button>
                    </div>
                </form>
                <!-- ------------------------Dialogue-------------------------- -->
                 <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                     <div class="modal-dialog modal-xl">
                         <div class="modal-content">
                             <div class="modal-header">
                                 <h4 class="modal-title" id="myLargeModalLabel">New / Modify Entry</h4>
                                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                             </div>
                             <div class="modal-body">
						          <div class="row">
						          	<div class="col-lg-6">
						          		<div class="form-group">
							          		<label class="control-label">GL Name</label>
							          		<select class="select2 m-b-10 select2-multiple select2-hidden-accessible" id="m_gl_id" style="width: 100%" multiple="" data-placeholder="Choose" data-select2-id="4" tabindex="-1" aria-hidden="true">
							          			<option>Add Ledger</option>
							          		</select>
							          	</div>
						          	</div>
									<div class="col-lg-6"></div>
						          </div>
						          <div class="row">
						          	<div class="col-lg-6">
						          		<div class="form-group">
							          		<label class="control-label">Account Name</label>
							          		<select class="select2 m-b-10 select2-multiple select2-hidden-accessible" id="m_acc_id" style="width: 100%" multiple="" data-placeholder="Choose" data-select2-id="5" tabindex="-1" aria-hidden="true">
							          			<option>Add Account</option>
							          		</select>
							          	</div>	
						          	</div>	
						          	<div class="col-lg-6"></div>					          
						          </div>
						          <div class="row">
						          	<div class="col-lg-4">
						          		<div class="form-group">
						          			<label class="control-label">Cheque / DD</label>
						          			<select id="m_type" class="form-control"> 
						          				<option value="C">Cheque</option>
						          				<option value="D">DD</option>
						          				<option value="T">Transfer</option>
						          				<option value="R">RTGS</option>
						          				<option value="F">FDR</option>
						          				<option value="N">Receipt No</option>
						          				<option value="P">Purchase Sr.No.</option>
						          			</select>
						          		</div>
						          	</div>
						          	<div class="col-lg-4">
						          		<div class="form-group">
						          			<label class="control-label">Cheque No</label>
						          			<input type="text" id="m_chequeNo" class="form-control"/>
						          		</div>
						          	</div>
						          	<div class="col-lg-4">
						          		<div class="form-group">
						          			<label class="control-label">Cheque Date</label>
						          			<input type="date" id="m_chequeDate" class="form-control"/>
						          		</div>
						          	</div>
						          </div>
						          <div class="row">
						          	<div class="col-lg-6">
						          		<div class="form-group">
						          			<label class="control-label">Credit Amount</label>
						          			<input type="text" id="m_cramt" class="form-control"/>
						          		</div>
						          	</div>
						          	<div class="col-lg-6">
						          		<div class="form-group">
						          			<label class="control-label">Debit Amount</label>
						          			<input type="text" id="m_dramt" class="form-control"/>
						          		</div>
						          	</div>
						          </div>
						          
                             </div>
                             <div class="modal-footer">
                                 <button type="button" class="btn btn-danger waves-effect text-left" data-dismiss="modal">Close</button>
                                 <button type="button" class="btn btn-success waves-effect text-left" id="addRow" data-dismiss="modal">Add</button>
                             </div>
                         </div>
                         <!-- /.modal-content -->
                     </div>
                     <!-- /.modal-dialog -->
                 </div>
                <!-- ---------------------------------------------------------- -->
            </div>
	    </div>
	</div>
</div>
<script src="${pageContext.request.contextPath}/assets/dist/js/pages/jquery.PrintArea.js" type="text/JavaScript"></script>
<script>
$(document).ready(function(){
	$("#m_gl_id").select2();
	$("#m_acc_id").select2();
	
	 $("#addRow").click(function(){
		var ln = $("#lineTable tr").length;
		var row =   '<tr>'
		          + '<td><button type="button" class="btn waves-effect waves-light btn-block btn-danger" onClick="deleteRow('+ln+')" id="del'+ln+'">X</button></td>'
		          + '<td><label id="srno'+ln+'">'+ln+'</label></td>'
		          + '<td><label id="gl_id'+ln+'" data-values="'+$("#m_gl_id").val()+'">'+$("#m_gl_id option:selected").text()+'</label></td>'
		          + '<td><label id="acc_id'+ln+'" data-values="'+$("#m_acc_id").val()+'">'+$("#m_acc_id option:selected").text()+'</label></td>'
		          + '<td><label id="type'+ln+'" data-values="'+$("#m_type").val()+'">'+$("#m_type option:selected").text()+'</label></td>'
		          + '<td><label id="chequeNo'+ln+'">'+$("#m_chequeNo").val()+'</label></td>'
		          + '<td class="text-center"><label id="chequeDate'+ln+'">'+$("#m_chequeDate").val()+'</label></td>'
		          + '<td class="text-right"><label id="cramt'+ln+'">'+$("#m_cramt").val()+'</label></td>'
		          + '<td class="text-right"><label id="dramt'+ln+'">'+$("#m_dramt").val()+'</label></td>'
		          + '</tr>';
		$("#lineTable").append(row);	
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
	
	
    /* $.ajax({
		url : "${pageContext.request.contextPath}/getList",
		type : 'post',
		dataType : 'json',
		async: false,
		data : {
			Id : 10,
			param : "${companyId}"+"~"+"${branchId}"+"~Null"
		},
		success : function(resp) {
			var branchList = "";
				 $.each(resp,function(key,val){
					branchList = branchList + '<option value="'+resp[key].FAGM_ID+'" data-select2-id="'+resp[key].FAGM_ID+'">'+resp[key].FAGM_NAME+'</option>';
			}); 		
				$("#branchStr").empty();		 
				$("#branchStr").append(branchList);	
		}
	}); */
    
    $("#print").click(function() {
        var mode = 'iframe'; //popup
        var close = mode == "popup";
        var options = {
            mode: mode,
            popClose: close
        };
        $("div.printableArea").printArea(options);
    });
	
});
function deleteRow(i){
	$("#del"+i).closest("tr").remove();
};
</script>
</body>
</html>