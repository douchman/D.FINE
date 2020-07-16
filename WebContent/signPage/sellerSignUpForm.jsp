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


<input id="authNum" type="hidden">
<div id="wrapper">

<div class="container">
	<a class="col-md-2 col-md-offset-5" href="<%=request.getContextPath()%>/index.jsp">
		<img src="<%=request.getContextPath()%>/imgs/logo.png">
	</a>
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Business</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-2 col-md-offset-4">
  				<input id="businessName" name="businessName" type="text" class="form-control" placeholder="Business Name" aria-describedby="basic-addon1">
  			</div>
  			<div class="col-md-2">
  				<input id="usrLastName" name="usrLastName" type="text" class="form-control" placeholder="Business Type" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	<h4 class="inputLbl col-md-4 col-md-offset-4">*Address</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="businessAddress" name="businessAddress" type="text" class="form-control" placeholder="Business Address" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	

	<h4 class="inputLbl col-md-4 col-md-offset-4">*계좌번호</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-3 col-md-offset-4">
  				<input id="sellerAccount" name="sellerAccount" type="text" class="form-control" placeholder="Account Number" aria-describedby="basic-addon1">
  			</div>
  			<div class="col-md-1">
  				<input id="sellerBank" name="sellerBank" type="text" class="form-control" placeholder="Bank" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	
	
	


	
	<h4 class="inputLbl col-md-4 col-md-offset-4">*연락처</h4>
  	<div class="row">
  		<div class="input-group col-md-12">
  			<div class="col-md-4 col-md-offset-4">
  				<input id="usrPhone" name="usrPhone" type="text" class="form-control" placeholder="Phone" aria-describedby="basic-addon1">
  			</div>
  		</div>
	</div>
	

	<button type="button" onclick="location.href='<%=request.getContextPath()%>/index.jsp'" class="col-md-2 col-md-offset-5 btn btn-info" aria-expanded="false">판매자 신청</button>
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