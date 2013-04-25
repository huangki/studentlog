
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
		String ID = request.getParameter("StId");
		String Pass  = request.getParameter("Pas");
		String x = request.getParameter("Nam");
		String ss = request.getParameter("Cla");
		String ph = request.getParameter("Pho");
		String ad = request.getParameter("Adr");
      
		String mail = request.getParameter("Em");

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
		Connection con = null;
		  
		try {
              
		   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con = DriverManager.getConnection(conUrl);
		   Statement stmt = con.createStatement();
		     

			String sql = "update dbo.Student set Password='" +Pass
					+ "',Name='" + x + "', Class='" +  ss
					+  "',Phone='" +ph+"',Adress='" +ad+"',Email='" +mail+ "' where StudentId='" +ID+ "'";

			int result = stmt.executeUpdate(sql);

			stmt.close();
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	%>
	<a href=search.jsp>查詢資料</a>
	<input type="button" value="回上一頁" onclick="history.back()">
</body>
</html>
