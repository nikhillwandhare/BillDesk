<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        	<button type="button" class="btn btn-info d-none d-lg-block m-l-15"><i class="fa fa-plus-circle"></i> Create New</button>
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
                        <div class="row p-t-20">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Type</label>
                                    <select class="form-control custom-select" id="balsheet_type">
                                        <option value="A">Asset</option>
                                        <option value="L">Libility</option>
                                        <option value="R">Income</option>
                                        <option value="E">Expenses</option>
                                    </select>
                                    <small class="form-control-feedback"> Balance-Sheet Type </small> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Group</label>
                                    <select class="form-control custom-select" id="group">
                                    </select>
                                    <small class="form-control-feedback"> Group </small> </div>
                            </div>
                         </div>
                         <div class="row p-t-20">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Sub-Group</label>
                                    <select class="form-control custom-select" id="subgroup">
                                    </select>
                                    <small class="form-control-feedback"> Sub-Group </small> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">Sub Sub Group</label>
                                    <select class="form-control custom-select" id="subsubgroup">
                                    </select>
                                    <small class="form-control-feedback"> Sub-Sub-Group </small> </div>
                            </div>
                         </div>
                         <div class="row p-t-20">
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group has-danger">
                                    <label class="control-label">Gl Name</label>
                                    <input type="text" id="lastName" class="form-control form-control-danger" placeholder="12n" id="glname">
                                    <small class="form-control-feedback"> Gl Name </small> </div>
                            </div>
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label">GL Type</label>
                                    <select class="form-control custom-select" id="gltype">
                                    </select>
                                    <small class="form-control-feedback"> Gl Type </small> </div>
                            </div>
                        </div>
                        <!--/row-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group has-success">
                                    <label class="control-label">Status</label>
                                    <select class="form-control custom-select">
                                        <option value="E">Enable</option>
                                        <option value="D">Disable</option>
                                    </select>
                                    <small class="form-control-feedback"> Select GL status</small> </div>
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
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="custom-control custom-checkbox m-b-0">
                                            <input type="checkbox" class="custom-control-input">
                                            <span class="custom-control-label">Account Flag</span>
                                    </label>
                                    <label class="custom-control custom-checkbox m-b-0">
                                            <input type="checkbox" class="custom-control-input">
                                            <span class="custom-control-label">TDS Applicable Flag</span>
                                    </label>
                                </div>
                            </div>
                            <!--/span-->
                            <div class="col-md-6">
                                <div class="form-group">
                                    
                                </div>
                            </div>
                            <!--/span-->
                        </div>

                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>
                        <button type="button" class="btn btn-inverse">Cancel</button>
                    </div>
                </form>
            </div>
	    </div>
	</div>
</div>
</body>
</html>