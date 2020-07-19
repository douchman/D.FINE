<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/product/productProc.jsp" %>

 
    <%
    	request.setCharacterEncoding("UTF-8");
    	
    	//String str = request.getParameter("editordata");
    	
    	List<Dfineproduct> productLst = getProduct();
    	
    %>
<!DOCTYPE html>
<html>
<head>
<style>

.infospan{
font-size: 40px;
color: #B0C4DE;
}
h3{
	color: #6495ED;
}

span{
	font-size: 20px;
	color: #808080;
	margin-bottom: 30px;
}

img{
	margin-right: 15px;
}

</style>
<meta charset="UTF-8">
<title><%=productLst.get(0).getProductname() %></title>
</head>
<body>

 <%@include file="/common/header.jspf" %>
 
 
<div class="container">
	<div>
		<h3><%=productLst.get(0).getProductname() %></h3>
	</div>
	
	<div style="float: left;">
		<img src="<%=productLst.get(0).getSnapshot()%>">
	</div>
	<div>
		<span class="infospan"> *** 제품 정보 ***</span>
		<br/>
		<br/>
		<br/>
		<span> 제품코드 : <%=productLst.get(0).getProductid() %></span>
		<br/>
		<br/>
		<br/>
		<br/>
		<span> 브랜드 : <%=productLst.get(0).getBrandname() %></span>
		<br/>
		<br/>
		<br/>
		<br/>
		<span> 가격 : <%=productLst.get(0).getProductprice() %>원</span>
		<br/>
		<br/>
		<br/>
		<br/>
		<span> 컬러 : <%=productLst.get(0).getProductcolor() %></span>
		<br/>
		<br/>
		<br/>
		<br/>
	</div>
	
	
	<br/>
		<br/>
		<br/>
		<br/><br/>
		<br/>
		<br/>
		<br/><br/>
		<br/>
		<br/>
		<br/>
	<hr/>
	<div class="container">
		<span class="infospan"> *** 상세 설명 ***</span><br/>
		
		
		<span><%=productLst.get(0).getProductdetail()%></span>
		<br/>
		<br/>
		<br/>
		<br/>
		
		<span>날씨도 점점 더워지는데  시원한 반바지 하나 장만 해보십시오 ...</span>
	
		<br/>
		<br/>
		<br/><br/>
		<br/>
		<br/><br/>
		<br/>
		<br/>
	
	</div>
	



</div>


</body>
 <%@include file="/common/footer.jspf" %>
</html>