<%-- sellerForm.jsp --%>
<%-- 판매자 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="<%=request.getContextPath()%>/js/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">

<style>
#sideMenu {
	padding: 0px 15px 10px 15px;
	background-color: rgba(173, 216, 230, 0.4);
	line-height: 3em;
}

#sideMenu hr {
	border: 2px solid #000000;
}

#viewWrapper {
	width: 101.3%;
	height: 20%;
	display: flex;
}

#viewWrapper #infoBox, #infoBox2, #infoBox3 {
	margin: 0px 15px 15px 0px;
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
</style>
<title>Seller Page</title>
</head>
<body>

	<!-- 사이드 메뉴  -->
	<div id="sideMenu" style="float: left">
		<h4 class="glyphicon glyphicon-align-justify">SellerMenu</h4>
		<hr />
		<ul>
			<li><a href="#" onclick=""><span class="glyphicon glyphicon-home"
					aria-hidden="true"> Home</span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-file"
					aria-hidden="true"> Orders</span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-user"
					aria-hidden="true"> Customers</span></a></li>
			<li><a href="#"><span
					class="glyphicon glyphicon-shopping-cart" aria-hidden="true">
						Products</span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-pushpin"
					aria-hidden="true"> Qna</span></a></li>

		</ul>


	</div>
	<!-- 뷰 필드 -->
	<div id="sellerPage_view" class="container">
		
		

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

<script src="<%=request.getContextPath()%>/js/sellerPage.js"></script>
</body>
</html>