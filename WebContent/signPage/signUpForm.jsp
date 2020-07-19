<%-- signUpForm.jsp --%>
<%-- col-md 사용해서 배치했음 근데 웹 브라우저 크기 줄이면 원하는 대로 동작이 잘 안됌 해결 가능하면 해결 바람 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%-- favicon 설정 --%>
<link href="<%=request.getContextPath()%>/imgs/favicon.ico" rel="shortcut icon"/>
<%-- bootstrap.css load --%>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">

<script src="<%=request.getContextPath()%>/js/jquery-3.5.1.min.js"></script>

<title>D:FINE SIGN UP</title>

<style type="text/css">

#wrapper h4{
	color: #228B22;

}
#wrapper .input-group{
	margin-bottom: 30px;
}

.inputLbl{
	width: 300px;
	text-align: left;
}

.space{
	display: block;
}


</style>
</head>
<body>

<% String authNum = (String)session.getAttribute("authNum"); %>

<input id="authNum" type="hidden">
<div id="wrapper">

<div class="container">
	<a class="col-md-2 col-md-offset-5" href="<%=request.getContextPath()%>/index.jsp">
		<img src="<%=request.getContextPath()%>/imgs/logo.png">
	</a>
	<form action="<%=request.getContextPath()%>/signPage/signUpProc.jsp" method="post">
	<div class="row">
	<h4 class="inputLbl col-md-4 col-md-offset-4">*ID(Email)</h4>
	<div class="input-group col-md-12">
  		 <!--  <span class="input-group-addon" id="basic-addon1">ID(email)</span>  -->
  		 <div class="col-md-4 col-md-offset-4">
  			<input id="usrID" name="usrID"  type="text" class="form-control" placeholder="ID(Email)" aria-describedby="basic-addon1">
  			<span id="mailChk"></span>
  		</div>
  		<div class="col-md-1">
  			<button onclick="idVaildChk()" type="button" class="btn btn-default" aria-expanded="false">Send Mail</button>
  		</div>
  	</div>
  	
  	</div>
  	<div class="row">
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Certification Number</h4>
	<div class="input-group col-md-12">
  		 <!--  <span class="input-group-addon" id="basic-addon1">ID(email)</span>  -->
  		 <div class="col-md-4 col-md-offset-4">
  			<input id="certiNum" name="certiNum"  type="text" class="form-control" placeholder="Certi Num" aria-describedby="basic-addon1">
  			<span id="certiChk"></span>
  		</div>
  		<div class="col-md-1">
  			<button type="button" onclick="chkAuth()" class="btn btn-default" aria-expanded="false">Verify</button>
  		</div>
  	</div>
  	
  	</div>
  	
  	<h4 class="inputLbl col-md-4 col-md-offset-4">*PW</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="usrPW" onkeyup="chkPass()" name="usrPW" type="password" class="form-control" placeholder="PW" aria-describedby="basic-addon1">
  				
  			</div>
  	</div>
  	
  	</div>
  	
  	<h4 class="inputLbl col-md-4 col-md-offset-4">*PW Con</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="pwOk" onkeyup="chkPass()" type="password" class="form-control" placeholder="PW confirm" aria-describedby="basic-addon1">
  				<span id="pwChk"></span>
  			</div>
  		</div>
	</div>
	
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Name</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-2 col-md-offset-4">
  				<input id="usrFirstName" name="usrFirstName" type="text" class="form-control" placeholder="FirstName" aria-describedby="basic-addon1">
  			</div>
  			<div class="col-md-2">
  				<input id="usrLastName" name="usrLastName" type="text" class="form-control" placeholder="LastName" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Address</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="usrAddress" name="usrAddress" type="text" class="form-control" placeholder="Address" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>

	<h4 class="inputLbl col-md-4 col-md-offset-4">*Phone</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="usrPhone" name="usrPhone" type="text" class="form-control" placeholder="Phone" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Gender</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="gender" name="gender" type="text" class="form-control" placeholder="Gender" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Age</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="Age" name="Age" type="text" class="form-control" placeholder="Age" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>

	<input type="submit" value="Sing Up" class="col-md-2 col-md-offset-5 btn btn-info" aria-expanded="false">
	</form>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	</div><!-- wrapper end -->
</div><!-- container end -->


<script type="text/javascript" src="<%=request.getContextPath()%>/js/signUpForm.js"></script>
</body>
</html>