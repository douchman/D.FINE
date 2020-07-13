<!-- product_DisplayForm -->
<!-- 사진 디스플레이, 페이징 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<style>

.container ul{
	position: relative  ;
	left: 10px;
}
.container{
position: absolute  ;
left: 200px;
}
.thumbnail img{
border: solid;
border-width: 0px;
position: aboslute;
}
.pageNav{
text-align: center;
}
.container2{
width: 85%;
border: solid;
border-width: 1px;
position: absolute  ;
left: 180px;
color: #0000;
}

</style>
<link href="../css/bootstrap.min.css" rel="stylesheet">

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
<meta charset="EUC-KR">
<title>D:FINE</title>
</head>
<body>
<!-- TAP -->
<div class="container2">
<ul class="nav nav-pills">
  <li role="presentation"><a href="#">전체</a></li>
  <li role="presentation"><a href="#">음료</a></li>
  <li role="presentation"><a href="#">건강식품</a></li>
  <li role="presentation"><a href="#">냉동식품</a></li>

</ul>
</div>

<%-- PRODUCT DISPLAY1_2 --%>
<br><br><br><br>
<div class="container">
<div class="row">
     <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
              <h3>Coca-Cola Zero</h3>
        <p>상큼한 첫 맛과 깔끔한 끝 맛</p>
        
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>

   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
		<h3>Coca-Cola Zero</h3>
        <p>상큼한 첫 맛과 깔끔한 끝 맛</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  
   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
        <h3>Coca-Cola Zero</h3>
        <p>상큼한 첫 맛과 깔끔한 끝 맛</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  
</div>
</div>
<%-- DISPLAY1_2 --%>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="container">
<div class="row">
     <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>

        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>

   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  
   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="../imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
 		<h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>

        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
</div>
<!-- 페이징 -->
<nav class="pageNav">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>
</body>
</html>