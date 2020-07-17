<%-- template_default.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("imgs/img01_hero.jpg");
  height: 75%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>

<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:50px">스스로 만드는 쇼핑몰</h1>
    <p>쇼핑을 새롭게 정의하다.</p> 
    <p>D:FINE</p>
	<button class="btn btn-lg btn-primary my-2 my-sm-0" type="submit"
                onclick="location.href='<%=request.getContextPath()%>/sellerPage/sellerSignUpForm.jsp'">D:FINE 판매자 등록하기 &raquo;</button>
  </div>
</div>

</body>
</html>

