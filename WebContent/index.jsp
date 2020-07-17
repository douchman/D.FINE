<%-- index.jsp --%>
<%-- D:FINE 메인 페이지 --%>
<%-- 마스터 병합 테스트! --%>
<!--  COKEZERO TEST-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String usrFirstName = request.getParameter("usrFirstName");
	String usrid = (String)session.getAttribute("loginId");
	Dfinemember usrInfo =(Dfinemember)session.getAttribute("usrInfo");
%>
<!DOCTYPE html>
<html>
<head>


<style>
.column {
  float: left;
  width: 50.00%;
  padding: 0px 40px 0px 40px;
}
/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
}
.display2{
	max-width:80%;
	max-hegiht:500px;
}
input {
	font-size: 14pt;
}


.row {
	margin-bottom: 15px;
}
tr{
	text-align:center;
}
th{
	text-align:center;
}

</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">



<title>D:FINE SHOPPING DIFFERENTLY</title>
</head>
<body>
<br>
<br>
<!-- HERO IMG -->
<jsp:include page="/template/heroImage.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<!-- DISPLAY1 -->
<p class="text-left" style="font-size: 20px;  margin-left: 100px;"><strong>D:FINE Exhibition</strong></p>
<hr/>
<div class="row">
  <div class="column">
    <img src="./imgs/img02_landscape.jpg" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="./imgs/img07_ls.jpg" alt="Forest" style="width:100%">
  </div>
</div>
<br>
<br>
<br>
<br>
<!-- Display2 -->
<p class="text-right" style="font-size: 20px; margin-right: 120px;"><strong>D:FINE your color</strong></p>
<hr/>
<center>
<div class="display2">
<img src="./imgs/img03_l.jpg" style="width:100%; height:500px;">
</div>
</center>
<br>
<br>
<br>
<br>
<%-- DISPLAY3 --%>
<p class="text-center" style="font-size: 20px;"><strong>실시간 추천 :D</strong></p>
<hr/>
<div class="container">
<div class="row">
     <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="./imgs/img06_p.jpg" alt="...">
      <div class="caption">
        <h4 align=center><a href="#">FUNDEE</a></h4>
      </div>
    </div>
  </div>

   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="./imgs/img05_p.jpg" alt="...">
      <div class="caption">
        <h4 align=center><a href="#">D:FINE</a></h4>
      </div>
    </div>
  </div>
  
  
   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="./imgs/img08_p.jpg" alt="...">
      <div class="caption">
        <h4 align=center><a href="#">NEITHERS</a></h4>
      </div>
    </div>
  </div>
  
</div>
</div>

<%-- DISPLAY4 --%>
<p class="text-center" style="font-size: 20px;"><strong> 당신을 위한 추천 :D</strong></p>
<hr/>
<table id="memberTable" class="table table-bordered table-hover">

<tr>
		<td>
				<div class="thumbnail">
					<img src="./imgs/img12_s.jpg" alt="...">
					<div class="caption">
						<h3>NIKE SHOES</h3>
						<p><a href="https://www.nike.com/kr/ko_kr/">NIKE</a></p>
						<p>
							<a href="#" class="btn btn-primary" role="button">장바구니 추가</a>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div></div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="./imgs/img09_s.jpg" alt="...">
					<div class="caption">
						<h3>Rayban Sunglasses</h3>
						<p><a href="#">RAYBAN</a></p>
						<p>
							<a href="#" class="btn btn-primary" role="button">장바구니 추가</a>
							<a href="https://www.ray-ban.com/korea/sunglasses/view-all/plp" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div></div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="./imgs/img10_s.jpg" alt="...">
					<div class="caption">
						<h3>DEFAULT HAT</h3>
						<p><a href="https://www.29cm.co.kr/shop/brand/2102">DEFAULT</a></p>
						<p>
							<a href="#" class="btn btn-primary" role="button">장바구니 추가</a>
							<a href="https://www.29cm.co.kr/shop/brand/2102" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div></div>
			</td>
			<td>
				<div class="thumbnail">
					<img src="./imgs/img11_s.jpg" alt="...">
					<div class="caption">
							<h3>Leather Card Wallet</h3>
						<p><a href="https://egarden.co.kr/">Egarden</a></p>
						<p>
							<a href="#" class="btn btn-primary" role="button">장바구니 추가</a>
							<a href="#" class="btn btn-primary" role="button">구매하기</a>
						</p>
					</div></div>
			</td>			
		</tr>
</table>
<!-- 하단은 footer  -->

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>

