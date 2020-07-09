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
	padding : 10px;
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
<title>Insert title here</title>
</head>
<body>

	<!-- 사이드 메뉴  -->
	<div id="sideMenu" style="float: left">
		<h4 class="glyphicon glyphicon-align-justify">  SellerMenu</h4>
		<hr />
		<ul>
			<li><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"> Home</span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-file" aria-hidden="true"> Orders</span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"> Customers</span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"> Products</span></a></li>
			<li><a href="#"><span class="glyphicon glyphicon-pushpin" aria-hidden="true"> Reports</span></a></li>
			
		</ul>


	</div>
	<!-- 뷰 필드 -->
	<div class="container">
		<div id="viewWrapper">
			<div id="infoBox" style="float: left;">

				<fieldset>
					<legend>Today's Info</legend>
					<label>방문자 : 2,182 명</label> <br /> <label>매출 : 825,301 원</label>
				</fieldset>

			</div>



			<div id="infoBox2" style="float: left;">

				<fieldset>
					<legend class="glyphicon glyphicon-bell" style="padding-bottom: 7px"> Notice</legend>
					<label style="color: red;"> ! 새로운 문의가 있습니다. !</label> <br /> <label>제품
						반품 신청합니다. - 티모 -</label>
				</fieldset>
			</div>

		</div> <!-- viewWrapper end -->
		<div align="center" id="infoBox3" style="flex: 1; width: 100%">
		<fieldset>
			<legend>Mall Theme</legend>
			<p>Current Applied Theme</p>
			<h4>"마른 하늘에 날벼락"</h4>
			<button class="btn btn-primary">Theme Change</button>
		</fieldset>
		</div>


	</div>



<br/>

<br/>

<br/>

<br/>

<br/>

<br/>

<br/>

<br/>

<br/>

<br/>

<br/>

	<!-- wrapper end -->

</body>
</html>