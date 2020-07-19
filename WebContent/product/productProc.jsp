<%-- productProc.jsp --%>
<%@page import="Dfine.Dfineproduct"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/dbConn.jspf"%>
    
<%!
public List<Dfineproduct> getProduct(){
	
	Connection conn = getConn("localhost", "1521", "xe");
		PreparedStatement pstmt = null;
		String sql ="SELECT * FROM DfineProduct";

		ResultSet rs = null;
		List<Dfineproduct> productLst = new ArrayList<Dfineproduct>();
		try{
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1, start);
			//pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				Dfineproduct product = new Dfineproduct();
				
				product.setProductid(rs.getString(1));
				product.setBrandname(rs.getString(2));
				product.setProductname(rs.getString(3));
				product.setProductdetail(rs.getString(4));
				product.setProductprice(rs.getInt(5));
				product.setProductstock(rs.getInt(6));
				product.setProductcolor(rs.getString(7));
				product.setProductsize(rs.getString(8));
				product.setSnapshot(rs.getString(9));
				
				productLst.add(product);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null)	try{rs.close();}catch(Exception e){}
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
		}
		//System.out.println("productProc 에서 만든 리스트 객체 :"+productLst);
		
		return productLst;
	}
%>
    