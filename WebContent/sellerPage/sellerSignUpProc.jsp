<%-- sellerSignUpProc.jsp --%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dfine.DfineMall"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="seller" class="Dfine.DfineMall"/>
<jsp:setProperty property="*" name="seller"/>

<%@ include file="../common/dbConn.jspf" %>

<%!


public boolean Insert(Connection conn, DfineMall seller){
			PreparedStatement psmt = null;
			boolean result = true;
			String sql = "INSERT INTO DfineMall "+
						 "(usrid, brandname, brandaddress, selleraccount) "+
						 "VALUES(?,?,?,?)";
			try{
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, seller.getUsrid());
				psmt.setString(2, seller.getBrandname());
				psmt.setString(3, seller.getBrandaddress());
				psmt.setString(4, seller.getSelleraccount());
				
				psmt.execute();
			}catch (Exception e){
				e.printStackTrace();
				result = false;
			}finally{
				if(psmt!=null) try{psmt.close();}catch(Exception e){}
				if(conn!=null) try{conn.close();}catch(Exception e){}
			}
			
			return result;
}%>
<%	
	out.print(seller.getUsrid());
	out.print(seller.getBrandname());
	out.print(seller.getBrandaddress());
	out.print(seller.getSelleraccount());

	Connection conn = getConn("localhost", "1521", "xe");
	Insert(conn, seller);
	
%>
<jsp:forward page="/index.jsp"></jsp:forward>