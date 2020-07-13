<%@ page language="java" pageEncoding="EUC-KR"%>

<%

	String optCnt = request.getParameter("optCnt");
%>



<div class="stepSubTitle">
		<span>*의류 옵션 설정</span>
</div>
			
			
<div>
	<h3 class="optTag">옵션 <%=optCnt%></h3>
</div>
<div class="input-group">
	<label>물품 사이즈</label> <input type="text" class="form-control"
		placeholder="물품이름">
</div>

<div class="input-group">
	<label>물품 색상</label> <input type="text" class="form-control"
		placeholder="물품이름">
</div>
<hr/>