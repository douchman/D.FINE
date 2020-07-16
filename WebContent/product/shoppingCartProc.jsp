<%-- shoppingCartProc.jsp --%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Dfine.shoppingCart"  %>
<%@ include file="../common/dbConn.jspf" %>

<%!//장바구니 추가
public boolean addToCart(Connection conn, Dfine.shoppingCart cart){
	PreparedStatement psmt = null;
	boolean result = true;
	String sql = "INSERT INTO DFINESHOPCART "+
			"(usrid, brandname, productname, quantity, productprice, productphoto) "+
			"Values (?, ?, ?, ?, ?, ?)";

	
	try{
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, cart.getUsrid());
		psmt.setString(2, cart.getBrandname());
		psmt.setString(3, cart.getProductname());
		psmt.setInt(4, cart.getQuantity());
		psmt.setInt(5, cart.getProductprice());
		psmt.setString(6, cart.getProductphoto());
		
		psmt.execute();
	}catch (Exception e){
		e.printStackTrace();
		result = false;
	}finally{
		if(psmt!=null) try{psmt.close();}catch(Exception e){}
		if(conn!=null) try{conn.close();}catch(Exception e){}
	}
	
	return result;
}
//아이디 별 장바구니 보기
public List<Dfine.shoppingCart> getBoard(Connection conn, String usrid, String conditional){
	PreparedStatement psmt = null;
	String sql = 	"SELECT ROWNUM, "+
					"A.* FROM "+
					"(SELECT usrid, brandname, productname, quantity, productprice, productphoto "+
					"FROM dfineshopcart WHERE usrid='?') A";
	ResultSet rs = null;
	List<Dfine.shoppingCart> cartLst = new ArrayList<>();	
	try{
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, usrid);
		rs = psmt.executeQuery();
		
		 while(rs.next()){
			 Dfine.shoppingCart cart = new Dfine.shoppingCart();
        	 
			 cart.setUsrid(rs.getString(1));
			 cart.setBrandname(rs.getString(2));
			 cart.setProductname(rs.getString(3));
			 cart.setQuantity(rs.getInt(4));
			 cart.setProductprice(rs.getInt(5));
			 cart.setProductphoto(rs.getString(6));        	 
        	 cartLst.add(cart);
         }
	}catch (Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null) try{rs.close();}catch(Exception e){}
		if(psmt!=null) try{psmt.close();}catch(Exception e){}
		if(conn!=null) try{conn.close();}catch(Exception e){}
	}
	
	return cartLst;
}%>