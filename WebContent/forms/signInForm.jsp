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
<%-- 폰트 : 구글 나눔 명조 --%>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@600&display=swap" rel="stylesheet">


<style type="text/css">

#inputField{
	width: 30%;
}


#inputField input{
	margin-bottom: 15px;
	height : 60px;
	font-size: 20pt;
}
</style>
<title>D:FINE Sign In</title>
</head>
<body>
<div align="center">
	<div align="center">
		<a href="<%=request.getContextPath()%>/index.jsp">
			<img src="<%=request.getContextPath()%>/imgs/logo.png">
		</a>
	</div>
	
	<div id="inputField" align="center">
		<div>
			<input type="text" size="50" class="form-control" placeholder="ID(Email)">
			<input type="password" class="form-control" placeholder="PW">
			
	</div>
	
	<div align="center">
		<div>
			<button type="button" class="btn btn-info" aria-expanded="false" onclick="location.href='<%=request.getContextPath()%>/index.jsp'">Sign In</button>
			<button type="button" class="btn btn-info" aria-expanded="false" onclick="location.href='<%=request.getContextPath()%>/forms/signUpForm.jsp'">Sign Up</button>
		</div>
	</div>
	
	</div>



</div>
</body>
</html>