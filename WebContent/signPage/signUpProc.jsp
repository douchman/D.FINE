<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../common/dbConn.jspf" %>


<%!

	public boolean Insert(
			Connection conn,
			String usrID,
			String usrPW,
			String usrLastName,
			String usrFirstName,
			String usrAddress,
			String usrPhone,
			String Age,
			String gender
			){
	
	boolean result = true;
	
	PreparedStatement pstmt = null;
	
	String query = "INSERT INTO DfineMember (usrID, usrPW, usrLastName, usrFirstName, usrAddress, usrPhone, Age, gender) "+
				   "VALUES (?, ?, ?, ?, ?, ?, ? ,?)";
	
	try{
		
		pstmt = conn.prepareStatement(query);
		
		pstmt.setString(1, usrID);
		pstmt.setString(2, usrPW);
		pstmt.setString(3, usrLastName);
		pstmt.setString(4, usrFirstName);
		pstmt.setString(5, usrAddress);
		pstmt.setString(6, usrPhone);
		pstmt.setString(7, Age); 
		pstmt.setString(8, gender);
	
		
		pstmt.execute();
		
		
		
	}catch(Exception e){e.printStackTrace();result = false;}
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}		
		}	
	
	
	return result;
	}


	public void prt(String str){
		System.out.println(str);
	}
%>



<%
	
String usrID =  request.getParameter("usrID");
String usrPW =  request.getParameter("usrPW");
String usrLastName =  request.getParameter("usrLastName");
String usrFirstName =  request.getParameter("usrFirstName");
String usrAddress =  request.getParameter("usrAddress");
String usrPhone =  request.getParameter("usrPhone");
String Age =  request.getParameter("Age");
String gender =  request.getParameter("gender");


boolean result  = true;
Connection conn = null;
conn = getConn("localhost", "1521", "xe");

result = Insert(conn, usrID, usrPW, usrLastName, usrFirstName, usrAddress, usrPhone, Age, gender);


if(result == true){
	prt("성공");
	%><jsp:forward page="signUpResult.jsp">
		<jsp:param value="success" name="result"/>
	</jsp:forward>
	<%
}else%>
<%{prt("실패");%>
	<jsp:forward page="signUpResult.jsp">
		<jsp:param value="fail" name="result"/>
	</jsp:forward>
<%}%>