<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@include file="/common/dbConn.jspf"%>


<%!

	public boolean Insert(Connection conn){
		boolean result =  true;
		
		PreparedStatement pstmt = null;
		
		String query = "INSERT INTO DfineCustomerTable( brandName, usrID, purchaseAmount)"+
					   "SELECT brandName, id,  sum(payAmount) "+
					   "FROM DfineOrderHistory "+
					   "WHERE id = ? AND brandName = ? "+
					   "GROUP BY id";
		
		try{
			pstmt = conn.prepareStatement(query);
			//pstmt.setString(1, orderhis.getusrID());
			//pstmt.setString(2, orderhis.getbrandName());
			
			pstmt.execute();
		}
		catch(Exception e ){
			e.printStackTrace();
			result = false;
			
		}
		finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
			}	  
	
		
		return result;
	
	}



public boolean Insert(Connection conn,String  usrId,String productID,int quantity, int price, String brandName){
	boolean result =  true;
	
	PreparedStatement pstmt = null;
	
	String query = "INSERT INTO DfineOrderHistory( usrId, productID, quantity, payAmount, brandName)"+
				   "values( '?', '?', '?', '?', '?' );";
				 
	
	try{
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, usrId);
		pstmt.setString(2, productID);
		pstmt.setInt(3, quantity);
		pstmt.setInt(4, quantity*price);
		pstmt.setString(5, brandName);
		
		pstmt.execute();
	}
	catch(Exception e ){
		e.printStackTrace();
		result = false;
		
	}
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
		}	  

	
	return result;

}




public boolean Update(Connection conn,String customerMemo){
	boolean result =  true;
	
	PreparedStatement pstmt = null;
	
	String query = "UPDATE DfineCustomer SET "+
				   "customerMemo = ? ;";
				 
	
	try{
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, customerMemo);
		
		
		pstmt.execute();
	}
	catch(Exception e ){
		e.printStackTrace();
		result = false;
		
	}
	finally{
		if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
		if(conn !=null)	try{conn.close();}catch(Exception e){}
		}	  

	
	return result;

}
%>