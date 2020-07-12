<%-- sellerForm.jsp --%>
<%-- 판매자 페이지 --%>

<%-- 이 페이지에서 load 로 각 각의 페이지를 불러온다. --%>
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
	<div id="sideMenu" style="float: left; position:fixed;">
		<h4 class="glyphicon glyphicon-align-justify">  SellerMenu</h4>
		<hr />
		<ul>
			<li><a id="Home" href="#" onclick="getView(this.id)"><span class="glyphicon glyphicon-home"
					aria-hidden="true"> Home</span></a></li>
					
			<li><a id="Orders" href="#" onclick="getView(this.id)"><span class="glyphicon glyphicon-file"
					aria-hidden="true"> Orders</span></a></li>
					
			<li><a id="Customers" href="#" onclick="getView(this.id)"><span class="glyphicon glyphicon-user"
					aria-hidden="true"> Customers</span></a></li>
					
			<li><a id="Products" href="#" onclick="getView(this.id)"><span class="glyphicon glyphicon-shopping-cart" 
					aria-hidden="true"> Products</span></a></li>
					
			<li><a id="Qnas" href="#" onclick="getView(this.id)"><span class="glyphicon glyphicon-pushpin"
					aria-hidden="true"> QnA</span></a></li>

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