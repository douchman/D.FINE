<%@ page language="java" pageEncoding="UTF-8"%>

<%
	String usrFirstName = request.getParameter("usrFirstName");
	String usrLastName = request.getParameter("usrLastName");
	String usrID = request.getParameter("usrID");
	String usrPW = request.getParameter("usrPW");
	String usrAddress = request.getParameter("usrAddress");
	String usrEmail = request.getParameter("usrEmail");
	String usrPhone = request.getParameter("usrPhone");

%>
<script src='../lib/jquery-3.5.1.min.js'></script>
<script>
$(document).ready(function() {
	var tag = "<font color='red' size='7'>박정수</font>";
	$('#btnText').click(function() {
		$('#result').text(tag);
		$('#id').val('.text()함수가 실행됨');
	});
	$('#btnHtml').click(function() {
		$('#result').html(tag);
		$('#id').val('.html()함수가 실행됨');
	});
	
})

</script>

<!-- viewWrapper end -->
<div class="container" style="padding-left:400px">
<div align="left" id="infoBox3" style="flex: 1; width:500px">
	<fieldset>
		<legend>회원 정보 수정</legend>
		<table>
			<tr>
				<th> 성: </th>
				<td><input type="text" value="<%=usrFirstName %>" height="30px"><button type="button" id="btnId">수정</button></p> </td>
				<th> 이름: </th>
				<td><input type="text" value="<%=usrLastName %>"><button type="button" id="btnId">수정</button></p> </td>
			</tr>
		</table>
	</fieldset>
		<button class="btn btn-primary">회원 탈퇴</button>
		
		<p>이메일:<input type="text" value="<%=usrEmail %>"><button type="button" id="btnEmail">수정</button></p>
		<p>연락처:<input type="text" value="<%=usrPhone %>"> <button type="button" id="btnPhone">수정</button></p>
		<p>비밀번호:<input type="password" value="<%=usrPW %>"> <button type="button" id="btnPw">수정</button></p>
		
</div>
</div>
