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

<title>陳霖 李芷婷 黃楷鈞 楊舒茵</title>



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
		  
		String s = request.getParameter("StudentId");
		String x = request.getParameter("Password");
		String m = request.getParameter("Name");
		String d = request.getParameter("Class");
	    String e = request.getParameter("Phone");
		String q = request.getParameter("Adress");
		String h = request.getParameter("Email");
		

		
		String sql = "insert into dbo.Student(StudentId,Password,Name,Class,Phone,Adress,Email)"
		+"values('"+s+"','"+x+"','"+m+"','"+d+"','"+e+"','"+q+"','"+h+"')";
				
				
		
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
	<a href=search.jsp>查詢資料表</a>
</body>
</html>
