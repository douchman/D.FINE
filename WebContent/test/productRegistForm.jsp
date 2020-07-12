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


<%-- favicon 설정 --%>
<link href="<%=request.getContextPath()%>/imgs/favicon.ico"
	rel="shortcut icon" />
<%-- bootstrap.css load --%>
<link href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	rel="stylesheet">


<style type="text/css">
#snapShot {
	width: 350px;
	height: auto;
}

#snapShot #product_snapShot{
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
</style>

<title>물품 등록하기</title>
</head>
<body>

	<div class="container">
		<div class="row">

			<div id="snapShot" class="col-md-2">
				<img id="product_snapShot"
					src="<%=request.getContextPath()%>/imgs/noimage.jpg" alt="..."
					class="img-thumbnail">
			</div>


			<div>
				<label class="col-md-1"> hello</label>

			</div>
			
			<div>
				<label class="col-md-1"> hello</label>

			</div>
		</div> <!-- row div end -->


	</div>
	<%@ include file="/common/footer.jspf"%>


</body>
</html>