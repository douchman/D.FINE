<%-- sellerForm.jsp --%>
<%-- 판매자 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%-- favicon 설정 --%>
<link href="<%=request.getContextPath()%>/imgs/favicon.ico" rel="shortcut icon"/>
<%-- bootstrap.css load --%>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
<%-- 폰트 : 구글 나눔 명조 --%>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@600&display=swap" rel="stylesheet">

<meta charset="UTF-8">

<style>
#orders, #wishlist, #userInfo{
	width: 300px;
	height: 150px;
	padding: 20px 20px 20px 20px;
	margin: 10px;
	
}
p{
text-align:center;
padding: 100px;
}
</style>
<title>My Page</title>
</head>
<body>

	<!-- 버튼 메뉴  -->
	
	<p>
	  <button type="button" id="orders" class="btn btn-default btn-lg" onClick="location.href='myPage_main.jsp'">
	  	<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
	  		Your Orders
	  </button>
	  <button type="button" id="wishlist" class="btn btn-default btn-lg" onClick="location.href='myPage_main.jsp'">
	  	<span class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span>
	  		Wish List
	  </button>
	  <button type="button" id="userInfo" class="btn btn-default btn-lg" onClick="location.href='myPage_main.jsp'" >
	  	<span class="glyphicon glyphicon-cog" aria-hidden="true"></span> 
	  		회원 정보 수정
	  </button>
	  
	</p>


</body>
</html>