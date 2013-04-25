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

<title>新增處理</title>



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
		  
		String s = request.getParameter("AdminID");
		String r = request.getParameter("Account");
		String x = request.getParameter("AdminName");
		String m = request.getParameter("Password");
		String d = request.getParameter("Email");
		
		

		
		String sql = "insert into dbo.Admin(AdminID,Account,AdminName,Password,Email)"
		+"values('"+s+"','"+r+"','"+x+"','"+m+"','"+d+"')";
				
				
		
		 ResultSet rs = stmt.executeQuery(sql);
				
		int result = stmt.executeUpdate(sql);
		rs.close();
		stmt.close(); //關閉Statement物件
		con.close(); //關閉Connection物件
		
		  
		     
		   
		  }
		  catch (Exception ex) {
		      ex.printStackTrace();
		  }

	

		
	%><input type="button" value="回上一頁" onclick="history.back()">
	<a href=adminsearch.jsp>查詢資料表</a>
</body>
</html>
