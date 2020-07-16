<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 
 .result-msg{
 	/*background-color : #FFF8DC;*/
 	width: 50%;
 	height: auto;
 	margin-bottom: 20px;
 }
 
 #signUpResImg{
 	background-color : inherit;
 	width: 800px;
 	
 	
 }
 
 </style>   
    
    <%
    	String imgPath = "";
    	String result = request.getParameter("result");
    	String msg = "";
    	String btnTxt = "";
    	String pagePath = "";
    	
    	//테스트용 코드 지울것.
    	//result = "success";
    	//
    	
    	
    	//회원가입 성공시
    	if(result.contentEquals("success")){
    		imgPath = "/imgs/signUpDone.png";
    		msg = "WoW! 회원가입에 성공 했습니다.";
    		btnTxt = "로그인 하기";
    		pagePath="signInForm.jsp";
    	}
    	// 회원가입 실패시
    	else{
    		imgPath = "/imgs/signUpFail.png";		
    		msg = "Oops! 회원가입에 실패했습니다.";
    		btnTxt = "다시 가입하기";
    		pagePath="signUpForm.jsp";
    	}
    		
   		
    
    %>
    
    <div align="center">
		<a href="<%=request.getContextPath()%>/index.jsp">
			<img src="<%=request.getContextPath()%>/imgs/logo.png">
		</a>
	</div>
    <div align="center">
    	<div align="center" class="result-msg">
    		<img class="signUpResImg" width="50%" height="auto" src="<%=request.getContextPath()+imgPath%>">
    	</div>
    	<div align="center" class="result-msg">
    		<span><%=msg%></span>
    	</div>
    	
    	<button class="btn btn-success" onclick="location.href='<%=pagePath%>'"><%=btnTxt%></button>
    </div>
    
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>