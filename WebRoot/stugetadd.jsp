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

<title>更新介面</title>



</head>

<body>

	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		 String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
		  Connection con = null;
		  try {
		   //註冊JODBC類
		   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con = DriverManager.getConnection(conUrl);
		   Statement stmt = con.createStatement();
		String f = request.getParameter("Num");  
		String s = request.getParameter("StudentId");
		String r = request.getParameter("LicenseId");
		String x = request.getParameter("GetDate");
	 
		
		

		
		String sql = "insert into dbo.StuLicense(Num,StudentId,LicenseId,GetDate)"
		+"values('"+f+"','"+s+"','"+r+"','"+x+"' )";
				
				
		
		 ResultSet rs = stmt.executeQuery(sql);
				
		int result = stmt.executeUpdate(sql);
		rs.close();
		stmt.close(); //關閉Statement物件
		con.close(); //關閉Connection物件
		
		  
		     
		   
		  }
		  catch (Exception ex) {
		      ex.printStackTrace();
		  }

	

		
	%> 
	<a href=studentgetcheck.jsp>查詢考照資料表</a>
</body>
</html>
