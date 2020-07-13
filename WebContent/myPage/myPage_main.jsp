<%-- sellerForm.jsp --%>
<%-- 판매자 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">

<style>
#sideMenu {
	padding: 0px 15px 10px 15px;
	background-color: rgba(173, 216, 230, 0.2);
	line-height: 3em;
}

#sideMenu hr {
	border: 2px solid #000000;
}

#viewWrapper {
	width: 100%;
	height: 20%;
	display: flex;
}

#viewWrapper #infoBox, #infoBox2, #infoBox3 {
	margin: 0px 10px 10px 0px;
	padding: 10px;
	width: 100%;
	height: auto;
	border: 2px solid #000000;
	border-radius: 10px;
	flex: 1;
}

fieldset {
	margin: 10px;
}
ul{

  list-style-type: none;
}
</style>
<title>My Page</title>
</head>
<body>

	<!-- 사이드 메뉴  -->
	<div id="sideMenu" style="float: left; position:fixed;">
		<h4 class="glyphicon glyphicon-align-justify">  My Page</h4>
		<hr />
		<ul>
			<li><a id="orders" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-user" aria-hidden="true"> Your Orders
			</span></a>
			</li>
					
			<li><a id="Seller" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-user" aria-hidden="true"> 판매자 회원 관리</span></a></li>
					
			<li><a id="Qna" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-pushpin" aria-hidden="true"> 문의 내역</span></a></li>					
		</ul>


	</div>
	
	<!-- 뷰 필드 -->
	<div id="myPage_view" class="container">
		
		

	</div>



	<br />

	<br />

	<br />

	<br />

	<br />

	<br />

	<br />

	<br />

	<br />

	<br />

	<br />
	<br />

	<br />

	<br />


	<!-- wrapper end -->

<script src="<%=request.getContextPath()%>/js/myPage.js"></script>
</body>
</html>
