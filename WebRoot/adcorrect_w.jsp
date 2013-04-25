 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

 <style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 350px;
	height: 270px;
	text-align:center;
	font-weight: bolder;
	color: #000000;
}

#t {
	border-radius: 30px;
	border: 5px solid #6495ED;
}
</style>
 
<html>
<head>
<base href="<%=basePath%>">

<title>更新</title>


</head>
<div id="t">
<body><h3>已更新完成管理者個人資料</h3>
 <br>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
	%>
	
	

	<%
	    String AdminID = request.getParameter("AdminID");
	    String Account = request.getParameter("Account");
		String AdminName = request.getParameter("AdminName");
		String Password = request.getParameter("Password");
		String Email = request.getParameter("Email");
		
		
		%><%out.print("編碼:"+AdminID); %><br>
		<%out.print(" 管理者帳號:"+Account); %><br>
		<% out.print("管理者姓名:"+AdminName);%><br>
		<% out.print("管理者密碼:"+Password);%><br>
		<% out.print("管理者信箱:"+Email);%><br>
		 <%
	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
        String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
		  Connection con = null;
		  try {
		  
		   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con = DriverManager.getConnection(conUrl);
		   Statement stmt = con.createStatement();
		     
		
	      String sql = "update dbo.Admin set Account='" + Account +   "',AdminName='" + AdminName +"',Password='"
				+ Password + "', Email='" + Email +"' where AdminID='"+ AdminID + "'";

		int result = stmt.executeUpdate(sql);
		
		
	    stmt.close();
	    con.close();
	 }
		catch (Exception ex) {
		      ex.printStackTrace();
	 }
		
		
	%> <a href=adminsearch.jsp>查詢資料</a>
	<input type="button" value="回上一頁" onclick="history.back()">
	</div>
</body>
</html>
 