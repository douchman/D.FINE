<%-- index.jsp --%>
<%-- D:FINE 메인 페이지 --%>
<%-- 마스터 병합 테스트! --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<style>
/* 
우선 임시로 설정해둔 나눔명조체 
body 전체에 걸어놨음 반드시 확인
*/

</style>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">



<title>WELL COME TO D:FINE</title>
</head>
<body>

<%-- index 상단 --%>
<%-- 캐러셀이 올 자리긴한데 일단 임시로 마련 --%>
<div id="jumbo" class="container" >
	<jsp:include page="common/info.jsp"></jsp:include>
</div>


<%-- index 중단 --%>
<div class="container">
<hr/>
<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/outer1.png" alt="...">
      <div class="caption">
        <h3>일단 입어봤지만 마음에 들지 않는다</h3>
        <p>입으면 개간지 남</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/hats1.jpg" alt="...">
      <div class="caption">
        <h3>군밤을 잘 구울것 같은 모자</h3>
        <p>이모자 쓰면 
       	너도 군밤장수 쌉가능
        </p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  
   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/tshirt1.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/outer1.png" alt="...">
      <div class="caption">
        <h3>일단 입어봤지만 마음에 들지 않는다</h3>
        <p>입으면 개간지 남</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/hats1.jpg" alt="...">
      <div class="caption">
        <h3>군밤을 잘 구울것 같은 모자</h3>
        <p>이모자 쓰면 
       	너도 군밤장수 쌉가능
        </p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  
   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/tshirt1.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/outer1.png" alt="...">
      <div class="caption">
        <h3>일단 입어봤지만 마음에 들지 않는다</h3>
        <p>입으면 개간지 남</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/hats1.jpg" alt="...">
      <div class="caption">
        <h3>군밤을 잘 구울것 같은 모자</h3>
        <p>이모자 쓰면 
       	너도 군밤장수 쌉가능
        </p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
  
   <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="imgs/tshirt1.jpg" alt="...">
      <div class="caption">
        <h3>왼쪽 겨드랑이에서 냄새가 나는것 같다</h3>
        <p>입으면 눈부심</p>
        <p><a href="#" class="btn btn-primary" role="button">구매하기</a></p>
      </div>
    </div>
  </div>
  
</div>
<hr/>
</div>

<!-- 하단은 footer  -->

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>