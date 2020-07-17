<%@ page language="java" pageEncoding="UTF-8"%>

<%
	String usrLastName = request.getParameter("usrLastName");
	String usrFirstName = request.getParameter("usrFirstName");
	String usrID = request.getParameter("usrID");
	String usrPW = request.getParameter("usrPW");
	String usrAddress = request.getParameter("usrAddress");
	String usrPhone = request.getParameter("usrPhone");

%>
<style>

</style>
<script src='../lib/jquery-3.5.1.min.js'></script>
<script>

</script>

<!-- viewWrapper end -->
<div class="container" style="padding-left:400px">
<div align="left" id="infoBox3" style="flex: 1; width:500px">
	<form>
	<h2>회원 정보 수정</h2>
	<fieldset>
			<div class="input-group col-md-12">
				<h4>아이디</h4>
				<input type="text" id="usrid" value="<%=usrID %>" disabled>				
			</div>
			<div class="input-group col-md-12">
				<h4> 성 | 이름 </h4> 
				<input type="text" id="lastName" value="<%=usrLastName%>">	
				<input type="text" id="usrFirstName" value="<%=usrFirstName %>">		
			</div>
			<div class="input-group col-md-12">
				<h4>주소</h4>
				<input type="text" value="<%=usrAddress %>">
			</div>
			<div class="input-group col-md-12">
				<h4>연락처</h4>
				<input type="text" value="<%=usrPhone %>">
			</div>
	</fieldset>
	</form>
	<center style="padding-top:10px">
		<button class="btn btn-primary" id="">회원 탈퇴</button>
		<button class="btn btn-primary">정보 수정</button>
	</center>
</div>
</div>
