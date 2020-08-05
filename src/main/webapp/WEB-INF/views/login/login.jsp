<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/favicon.png">
    <title>Bill Desk </title>
    <!-- page css -->
    <link href="${pageContext.request.contextPath}/assets/dist/css/pages/login-register-lock.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/assets/dist/css/style.min.css" rel="stylesheet">
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">BillDesk admin</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <section id="wrapper" class="login-register login-sidebar" style="background-image:url(${pageContext.request.contextPath}/assets/images/background/login-register.jpg);">
        <div class="login-box card">
            <div class="card-body">
                <form class="form-horizontal form-material text-center" id="loginform" action="http://eliteadmin.themedesigner.in/demos/bt4/material/index.html">
                    <a href="javascript:void(0)" class="db"><img src="${pageContext.request.contextPath}/assets/images/logo-icon.png" alt="Home" /><br/><img src="${pageContext.request.contextPath}/assets/images/logo-text.png" alt="Home" /></a>
                    <div class="form-group m-t-40">
                        <div class="col-xs-12">
                            <select class="form-control" id="company" required="" placeholder="Company">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <select class="form-control" id="branch" required="" placeholder="Branch">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <select class="form-control" id="finyear" required="" placeholder="FinYear">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <input class="form-control" id="username" type="text" required="" placeholder="Username">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <input class="form-control" id="password" type="password" required="" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-12">
                            <div class="d-flex no-block align-items-center">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">Remember me</label>
                                </div> 
                                <div class="ml-auto">
                                    <a href="javascript:void(0)" id="to-recover" class="text-muted"><i class="mdi mdi-key-remove"></i> Forgot pwd?</a> 
                                </div>
                            </div>   
                        </div>
                    </div>
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <!-- <button class="btn btn-info btn-lg btn-block text-uppercase btn-rounded" >Log In</button> -->
                            <button type="button" class="btn btn-block btn-lg btn-success" id="login">Log In</button>
                        </div>
                    </div>
                    
                    <div class="form-group m-b-0">
                        <div class="col-sm-12 text-center">
                            Don't have an account? <a href="pages-register2.html" class="text-primary m-l-5"><b>Sign Up</b></a>
                        </div>
                    </div>
                    <div class="form-group m-b-0">
                    	<div class="col-sm-12 text-center message-group">
                    	
                    	</div>
                    </div>
                </form>
                <form class="form-horizontal" id="recoverform" action="http://eliteadmin.themedesigner.in/demos/bt4/material/index.html">
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <h3>Recover Password</h3>
                            <p class="text-muted">Enter your Email and instructions will be sent to you! </p>
                        </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            <input class="form-control" type="text" required="" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group text-center m-t-20">
                        <div class="col-xs-12">
                            <button class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Reset</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${pageContext.request.contextPath}/assets/node_modules/jquery/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/node_modules/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <!--Custom JavaScript -->
    <script type="text/javascript">
        $(function() {
            $(".preloader").fadeOut();
        });
        $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        });
        // ============================================================== 
        // Login and Recover Password 
        // ============================================================== 
        $('#to-recover').on("click", function() {
            $("#loginform").slideUp();
            $("#recoverform").fadeIn();
        });
    </script>
    <script>
	$(document).ready(function(){
	var companyList;
	var branchList;
	var finyearList;
	
        $.ajax({
			url : "${pageContext.request.contextPath}/getList",
			type : 'post',
			dataType : 'json',
			async: false,
			data : {
				Id : 1,
				param : "null"
			},
			success : function(resp) {
 				 $.each(resp,function(key,val){
 					companyList = companyList + "<option value='"+resp[key].ADCM_ID+"'>"+resp[key].ADCM_NAME+"</option>";
				}); 				 
 				 $("#company").append(companyList);
			}
		});
	//$("#company").change(function(){
        $.ajax({
			url : "${pageContext.request.contextPath}/getList",
			type : 'post',
			dataType : 'json',
			async: false,
			data : {
				Id : 2,
				param : $("#company").val()
			},
			success : function(resp) {
 				 $.each(resp,function(key,val){
 					branchList = branchList + "<option value='"+resp[key].ADCM_ID+"'>"+resp[key].ADCM_NAME+"</option>";
				}); 		
 				$("#branch").text("");		 
 				 $("#branch").append(branchList);
			}
		});
	//});

	//$("#branch").change(function(){
		
        $.ajax({
			url : "${pageContext.request.contextPath}/getList",
			type : 'post',
			dataType : 'json',
			async: false,
			data : {
				Id : 3,
				param : $("#company").val()+"~"+$("#branch").val()
			},
			success : function(resp) {
				finyearList = "";
 				 $.each(resp,function(key,val){
 					finyearList = finyearList + "<option value='"+resp[key].ADFM_FINYR+"'>"+resp[key].ADFM_FINYR+"</option>";
				}); 			
 				$("#finyear").empty();	 
 				 $("#finyear").append(finyearList);
			}
		});
	//});
	$("#login").click(function(){
		
        $.ajax({
			url : "${pageContext.request.contextPath}/login",
			type : 'post',
			async: false,
			data : {
				company_id : $("#company").val(),
				branch_id : $("#branch").val(),
				finyear : $("#finyear").val(),
				userName : $("#username").val(),
				password : $("#password").val()
			},
			success : function(resp) {
				console.log(resp);
				$(".message-group").empty();
				if(resp.result == "Success")
					{
						$(".message-group").append('<div class="alert alert-success">'+resp.result+'-'+resp.message+'</div>');
						window.location.replace("${pageContext.request.contextPath}/dashboard");
					}
				else{
						$(".message-group").append('<div class="alert alert-danger">'+resp.result+'-'+resp.message+'</div>');
					}
 				 
 				
 				 
			}
		});
		});
	});
    </script>
</body>
</html>