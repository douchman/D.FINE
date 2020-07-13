<%-- index.jsp --%>
<%-- D:FINE 메인 페이지 --%>
<%-- 마스터 병합 테스트! --%>
<!--  COKEZERO TEST-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">



<title>WELL COME TO D:FINE</title>
</head>
<body>
<br>
<br>
<br>
<br>
<!-- slideShow -->
<!-- DISPLAY1 -->
<div class="row">
  <div class="column">
    <img src="./imgs/img1.jpg" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="./imgs/img1.jpg" alt="Forest" style="width:100%">
  </div>
</div>
<br>
<br>
<!-- Display2 -->
<div class="display2">
<img src="./imgs/img5.jpg" style="width:1920px; height:400px;">
</div>
<br>
<br>
<br>
<%-- DISPLAY3 --%>
<div class="container">
<div class="row">
     <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="./imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>

   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="./imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  
   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="./imgs/KakaoTalk_20200331_165110561.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
</div>
</div>


<!-- 하단은 footer  -->

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
