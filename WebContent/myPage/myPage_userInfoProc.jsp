<%@ page language="java" pageEncoding="UTF-8"%>

<%
String usrid= request.getParameter("usrid");

String sql =	"update DFINEMEMBER "+
				"SET usrFirstname='?', usrlastname = '?',  "+  
				"WHERE usrid='?'";

%>