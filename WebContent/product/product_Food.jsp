<!-- product_Food -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

.sideNav{
height: 100%;
width: 180px;
position: absolute;
z-index: 1;
background-color:orange;
overflow-x:hidden;
padding-top:20px;
}
.sideNav a{
	padding: 10px 8px 6px 16px;
	text-decoration:none;
	font-size:18px;
	color:black;
	display:block;
	text-align:left;
}
.sideNav label{
	padding: 5px 8px 6px 16px;

	text-decoration: none;
	font-size:20px;
	color:black;
	display:block;
	text-align:left;
	border: solid;	
	border-width:0px 0px 3px 0px;
}
.sideNav a:hover {
  color: #f1f1f1;
}
.container2{
width: 80%;
border: solid;
border-width: 1px;
position: absolute  ;
left: 180px;

}

</style>
</head>
<body>
<!-- SLIDESHOW -->
<jsp:include page="product_slideShow.jsp"></jsp:include>

<!-- SIDE NAVIGATION -->
<div class='sideNav'>
	<label>FOOD</label>
	
	<a href="#new">NEW</a>
	<a href="#best">BEST</a>
	<a href="#pants">음료</a>
	<a href="#outer">건강식품</a>
	<a href="#accessory">냉동식품</a>
</div>

<!--product_DisplayForm  -->
<jsp:include page="product_DisplayForm.jsp"></jsp:include>




</body>
</html>