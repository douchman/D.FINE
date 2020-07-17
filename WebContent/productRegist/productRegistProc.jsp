
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dfineproduct.Dfineproduct"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="../common/dbConn.jspf"%>

    
    
    <%!public MultipartRequest getMultiReq(HttpServletRequest request, String uploadFilePath, int maxSz){
    	//서버의 실제 경로
       //String uploadFilePath = request.getServletContext().getRealPath(uploadFile);
    	//System.out.print(uploadFilePath);
       int maxSize = 1024*1024*maxSz;   //10MB
      
       MultipartRequest multiReq = null;
       try{
    	   multiReq = new MultipartRequest(
    	      request, uploadFilePath, maxSize, "utf-8", 
    	      new DefaultFileRenamePolicy());
  				
  				
  				
       }catch(Exception e){e.printStackTrace();}
       //System.out.println(multiReq);
       return multiReq;
    }
    
    
    public List<Dfineproduct> setProduct(MultipartRequest multiReq, String snapshotPath){
    		
    	String [] colors = ((String)multiReq.getParameter("colors")).split(",");
    	String [] size = ((String)multiReq.getParameter("size")).split(",");
    	
    	
    
    	int idx = colors.length * size.length;
    	String productId = multiReq.getParameter("productCode1")+
    					   multiReq.getParameter("productCode2")+
    					   multiReq.getParameter("productCode3")+
    					   multiReq.getParameter("brandName");
    	List<Dfineproduct> productLst = new ArrayList<Dfineproduct>();
    	
    	
    	for(int i=0; i<colors.length; i++){
    		for(int j=0; j<size.length; j++){
    			try{
    				Dfineproduct product = new Dfineproduct();
    				
            		product.setProductid(productId+colors[i]+size[j]);
            		product.setBrandname("TEST");
            		product.setProductdetail(multiReq.getParameter("productDetails"));
            		product.setProductname(multiReq.getParameter("productName"));
            		product.setProductprice(Integer.parseInt(multiReq.getParameter("productPrice")));
            		product.setProductstock(Integer.parseInt(multiReq.getParameter("productStock")));
            		product.setSnapshot(snapshotPath);
            		product.setProductcolor(colors[i]);
            		product.setProductsize(size[j]);
            		
            		productLst.add(product);
            		
            	}
            	catch(Exception e){ e.printStackTrace();}
    		}
    		
    	}
    	
    	
    	return productLst;
    	
    }
    
    
    
    public boolean Insert(Connection conn, List<Dfineproduct> productLst){
    	
    	boolean result = true;

		PreparedStatement pstmt = null;

		String query = "INSERT INTO DfineProduct(productID, brandName, productName, productDetail, productPrice, productStock, productColor, productSize, snapshot) " +
					   "VALUES(?, ?, ?, ?, ?, ? ,?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(query);
			for (Dfineproduct dp : productLst) {
				pstmt.setString(1, dp.getProductid());
				pstmt.setString(2, dp.getBrandname());
				pstmt.setString(3, dp.getProductname());
				pstmt.setString(4, dp.getProductdetail());
				pstmt.setInt(5, dp.getProductprice());
				pstmt.setInt(6, dp.getProductstock());
				pstmt.setString(7, dp.getProductcolor());
				pstmt.setString(8, dp.getProductsize());
				pstmt.setString(9, dp.getSnapshot());
				
				pstmt.execute();
				
			}
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		}
		finally{
			if(pstmt != null)	try{pstmt.close();}catch(Exception e){}
			if(conn !=null)	try{conn.close();}catch(Exception e){}
			}

		return result;

	}%>
   
    <%!
    	public void prt(Object obj){
    		System.out.println("OBJ:"+obj);
    	
    }
    %>
    
    <%
    String uploadFilePath = request.getServletContext().getRealPath("uploadFile");
    
    MultipartRequest multiReq = getMultiReq(request, uploadFilePath, 10);
    File file = multiReq.getFile("uploadFile");
    
    String snapshotPath= "http://localhost:8080/D.FINE/uploadFile/"+file.getName();
    
	Connection conn = null;
	
	conn = getConn("localhost", "1521", "xe");
	
	List<Dfineproduct> productLst = setProduct(multiReq, snapshotPath);
	

	
		/*
		for(Dfineproduct dp : productLst){
    		out.println("물품명 "+dp.getProductname()+"<br/>");
    		out.println("물품 ID "+dp.getProductid()+"<br/>");
    		out.println("물품 재고 "+dp.getProductstock()+"<br/>");
    		out.println("물품가격 "+dp.getProductprice()+"<br/>");
    		out.println("물품사이즈 "+dp.getProductsize()+"<br/>");
    		out.println("물품색상  "+dp.getProductcolor()+"<br/>");
    		out.print("<br/><br/>");
		}
		*/
		
		String name = productLst.get(0).getProductname();
		String id = productLst.get(0).getProductname();
		int price = productLst.get(0).getProductprice();
		String contents = productLst.get(0).getProductdetail();
		String imgPath = productLst.get(0).getSnapshot();
		prt(imgPath);
	
		
    	
	
	Insert(conn, productLst);
    	
    
    %>
 
<%=name %>
<%=id %>
<%=price %>
<%=contents %>
<img src="<%=imgPath%>">

 	
 	
 	 
 	
 	
