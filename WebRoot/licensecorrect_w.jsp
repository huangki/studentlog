  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>資料庫更新</title>


</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
	%>
	
	

	<%
	    String AdminID = request.getParameter("LicenseID");
	    
		String AdminName = request.getParameter("LicenseName");
		String Password = request.getParameter("LicenseAbout");
		String Email = request.getParameter("LicenseClass");
		%>
		 
		 <%
	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
        String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
		  Connection con = null;
		  try {
		  
		   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con = DriverManager.getConnection(conUrl);
		   Statement stmt = con.createStatement();
		     
		
	      String sql = "update dbo.License set LicenseName='" + AdminName +   "',LicenseAbout='" +Password+"',LicenseClass='"
				+ Email +   "' where LicenseId='"+ AdminID + "'";

		int result = stmt.executeUpdate(sql);
		
		
	    stmt.close();
	    con.close();
	 }
		catch (Exception ex) {
		      ex.printStackTrace();
	 }
		
		
	%> <a href=papersearch.jsp>查詢資料</a>
</body>
</html>
 