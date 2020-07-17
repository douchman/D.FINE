<%-- signUpForm.jsp --%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String usrID = (String)session.getAttribute("loginId");
	
	
%>

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
<script src="<%=request.getContextPath() %>/js/sellerPage.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/sellerPage.js"></script>
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


<form name="frm" id="frm" action="sellerSignUpProc.jsp" method="post">
<input id="authNum" type="hidden">
<div id="wrapper">
<div class="container">
	<a class="col-md-2 col-md-offset-5" href="<%=request.getContextPath()%>/index.jsp">
		<img src="<%=request.getContextPath()%>/imgs/logo.png">
	</a>
	<h3 class="inputLbl col-md-5 col-md-offset-5" align="center" style="font-weight:bold;">판매자 신청서</h3>
	<h4 class="inputLbl col-md-4 col-md-offset-4">*User ID</h4>

  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="usrID" name="usrID" type="text" class="form-control" value="<%=usrID %>" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>

	<h4 class="inputLbl col-md-4 col-md-offset-4">*Business</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="brandName" name="brandName" type="text" class="form-control" placeholder="Business Name" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Address</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="brandAddress" name="brandAddress" type="text" class="form-control" placeholder="Business Address" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	

	<h4 class="inputLbl col-md-4 col-md-offset-4">*계좌번호</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="sellerAccount" name="sellerAccount" type="text" class="form-control" placeholder="Account Number" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	<input type=button onclick="sendMember()" class="col-md-2 col-md-offset-4 btn btn-info" aria-expanded="false" value="판매자 신청"></input>
	<input type="reset" class="col-md-2 btn btn-info" value="취소"></input>	 
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	</div><!-- wrapper end -->
</div><!-- container end -->
	</form>

</body>
</html>