<%@page import="Mail.ParkMail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mail" class="Mail.ParkMail" scope="session"></jsp:useBean>
<jsp:useBean id="auth" class="Mail.AuthnumGenerator"></jsp:useBean>
<jsp:useBean id="sha" class="Sha.SHA"></jsp:useBean>

<%
	//request.setCharacterEncoding("UTF-8");
	ParkMail mailSendor = new ParkMail();
	String adress = request.getParameter("email");
	String authNum = auth.getAuthNum();
	//authNum = sha.encryptSHA512(authNum);
	session.setAttribute("authNum", authNum);
	// 세션은 서버쪽 내용이라 암호화해도 사실 의미가없는것
	// 실습상으로 그냥 한것

	
	//mailSendor.sendMail(adress, "인증메일입니다잇","인증번호 : [ "+authNum+" ]" );
	out.print(authNum);
%>
