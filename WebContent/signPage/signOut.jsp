<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="<%=request.getContextPath()%>/js/jquery-3.5.1.min.js"></script>
<%-- favicon 설정 --%>
<link href="<%=request.getContextPath()%>/imgs/favicon.ico" rel="shortcut icon"/>
<%-- bootstrap.css load --%>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
<%-- 폰트 : 구글 나눔 명조 --%>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap" rel="stylesheet">

<style>
.singOutChkImg{
 	background-color : inherit;
 	width: 450px;
 	margin-bottom: 25px;
 	
 	
 }
	

</style>
<%

	session.removeAttribute("loginId");
	session.removeAttribute("usrInfo");
	String imgPath = "/imgs/signout.png";
	String msg = "로그아웃 되었습니다.";
	
	
%>

<div align="center">
		<a href="<%=request.getContextPath()%>/index.jsp">
			<img src="<%=request.getContextPath()%>/imgs/logo.png">
		</a>
</div>


<div align="center">
    	<div align="center" class="result-msg">
    		<img class="singOutChkImg" width="50%" height="auto" src="<%=request.getContextPath()+imgPath%>">
    	</div>
    	<div align="center" class="result-msg">
    		<span><%=msg%></span>
    	</div>
    	
    	<button class="btn btn-success" onclick="location.href='<%=request.getContextPath()%>/index.jsp'">홈으로 이동</button>
    </div>












