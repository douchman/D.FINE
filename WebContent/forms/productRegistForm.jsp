<%-- productRegistForm.jsp --%>


<%-- 물품 등록 페이지 이다.  --%>

<%@ page language="java" pageEncoding="UTF-8"%>

<%--Summernote 사용을 위해서 DOCTYPE 태그 반드시 있어야함  --%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<style type="text/css">
#snapShot {
	width: 350px;
	height: auto;
}

#snapShot #product_snapShot {
	border: 2px solid #6495ED;
	width: inherit;
	height: auto;
}

body {
	height: 100%;
	margin: 0;
}

body .container {
	min-height: 100%;
}

footer {
	height: 100px;
	margin-top: -100px;
	background-color: #000;
}

.stepTitle {
	font-size: 20pt;
	color: #1E90FF;
	margin-bottom: 20pt;
}

.stepSubTitle {
	font-size: 12pt;
	color: #87CEFA;
	margin-bottom: 10px;
}

.registProduct-group {
	padding: 15px 15px 15px 15px;
	border: 2px solid #6495ED;
}

.tagArea{
	width : 200px;
	height : auto;
	margin-bottom: 10px;
}
[data-tooltip-text]:hover {
	position: relative;
}

[data-tooltip-text]:hover:after {
	background-color: #000000;
	background-color: rgba(0, 0, 0, 0.8);
	-webkit-box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
	-moz-box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
	box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	color: #FFFFFF;
	font-size: 12px;
	content: attr(data-tooltip-text);
	margin-bottom: 10px;
	top: 130%;
	left: 0;
	padding: 7px 12px;
	position: absolute;
	width: auto;
	min-width: 50px;
	max-width: 300px;
	word-wrap: break-word;
	z-index: 9999;
}

.optTag{
	color: #1E90FF;
}
</style>

<title>물품 등록하기</title>
</head>
<body>	

	<input id="optCnt" type="hidden" value="1">
	
	<div class="container">
		<div class="stepTitle">
			<span data-tooltip-text="물품 스냅샷은 물품을 대표하는 이미지가 될 것 입니다.">*물품
				사진 등록하기</span>
		</div>

		<div class="row">
			<div id="snapShot" class="col-md-2">
				<img id="product_snapShot"
					src="<%=request.getContextPath()%>/imgs/noimage.jpg" alt="..."
					class="img-thumbnail">
			</div>

			<div>
				<input id="imgSelector" style="margin-bottom: 20px;" type="file">

				<div class="input-group" style="margin-bottom: 15px;">
					<label>물품 이름</label> <input id="productName" type="text" class="form-control"
						placeholder="물품이름">
				</div>
				
				<div class="input-group" style="margin-bottom: 15px;">
					<label>가격 설정</label> <input id="price" type="text" class="form-control"
						placeholder="가격 (원)">
				</div>
				
				<div>
					<label>물품 분류</label>
				</div>
				<div class="btn-group">
					<button id="btnCategory" type="button" class="btn btn-default dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false">
						카테고리 선택 <span class="caret"></span>
					</button>
					<ul id="product_category" class="dropdown-menu" role="menu">
						<li><a href="#">의류</a></li>
						<li class="divider"></li>
						<li><a href="#">식품</a></li>
					</ul>
				</div>



			</div>
		</div>



		<hr />
		
		<!-- SummerNote Editor -->
		<div class="container">
			<div class="stepTitle">
				<span
					data-tooltip-text="물품에 대한 상세 정보(글내용과 사진)를 입력합니다. 사진과 글내용을 자유롭게 입력해보세요.">*물품
					상세 정보입력</span>
			</div>

			<form method="post"
				action="<%=request.getContextPath()%>/test/testRes.jsp">
				<textarea id="summernote" name="editordata"></textarea>
				<input type="submit" value="전송 테스트">
			</form>
		</div>

		<!-- SummerNote Editor -->



		<%-- 이 하단 옵션 설정 부분은 상단에서 물품의 분류가 어떻게 설정되느냐에 따라 옵션을 다르게 설정 할 것임 --%>
		<hr />
		<div class="container">
			<div class="stepTitle">
				<span data-tooltip-text="물품의  옵션을 설정합니다. (ex 사이즈, 색상 ..) 상단 카테고리를  먼저 설정 해주세요.">*물품
					옵션 설정</span><button id="tagTest" class="btn btn-default">전송 테스트</button>
			</div>


			<div class="registProduct-group">
				
			</div>


		</div>


		<div class="result_area">
		
		
		</div>
		
		
		<div class="container" align="center" style="margin: 25px 0px 25px 0px; ">
				<button class="btn btn-info">등록하기</button>
		
		</div>
		

		<!-- row div end -->
	</div>

	<script src="<%=request.getContextPath()%>/js/product_regist.js"></script>

</body>
</html>