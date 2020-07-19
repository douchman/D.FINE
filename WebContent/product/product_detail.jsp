<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Dfine.Dfineproduct"%>
<%@ page language="java" pageEncoding="UTF-8"%>



<%
	request.setCharacterEncoding("UTF-8");
	List<Dfineproduct> prodLst = (ArrayList<Dfineproduct>) session.getAttribute("prodLst");

	int idx = Integer.parseInt(request.getParameter("idx"));
%>
<style type="text/css">
#snapShot {
	width: 350px;
}

#snapShot #product_snapShot {
	border: 2px solid #6495ED;
	width: inherit;
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

.tagArea {
	width: 200px;
	height: auto;
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

.optTag {
	color: #1E90FF;
}
</style>
<title><%=prodLst.get(idx).getProductname()%></title>


<div class="container">

	<jsp:include page="../common/productsDetail_Top.jspf">
	<jsp:param value="<%=idx%>" name="idx"/>
	</jsp:include>


	<div class="input-group" style="margin-bottom: 15px;">
		<label>물품 상세 정보</label>
	</div>
	<div>
		<%=prodLst.get(idx).getProductdetail()%>

	</div>

</div>
