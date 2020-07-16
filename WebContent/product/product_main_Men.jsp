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
	background-color: orange;
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
</head>
<body>

	<!-- 사이드 메뉴  -->
	<div id="sideMenu" style="float: left; position:fixed;">
		<h4 class="glyphicon glyphicon-align-justify"> MEN </h4>
		<hr />
		<ul>
			<li><a id="Member" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-cloud" aria-hidden="true"> NEW
			</span></a>
			</li>
					
			<li><a id="Seller" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-cloud" aria-hidden="true"> BEST</span></a></li>
					
			<li><a id="top" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-cloud" aria-hidden="true"> 상의</span></a></li>					
			<li><a id="pant" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-cloud" aria-hidden="true"> 하의</span></a></li>					
			<li><a id="outer" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-cloud" aria-hidden="true"> 아우터</span></a></li>					
			<li><a id="accessory" href="#" onclick="getView(this.id)">
			<span class="glyphicon glyphicon-cloud" aria-hidden="true"> 악세사리</span></a></li>					
		</ul>


	</div>
	
	<!-- 뷰 필드 -->
	<div id="product_men_view" class="container">
		
		

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


<script>




</script>
<script src="<%=request.getContextPath()%>/js/productMenPage.js"></script>
</body>
</html>
