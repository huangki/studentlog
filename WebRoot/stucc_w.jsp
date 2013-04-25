
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

<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 550px;
	height: 550px;
	text-align: center;
	font-weight: bolder;
	color: #FF8C00;
}

#t {
	border-radius: 80px ;
	border: 10px solid #3CB371;
}
</style>
 <div id="t">

	<%
		String ID = request.getParameter("StId");
		String Pass  = request.getParameter("Pas");
		String x = request.getParameter("Nam");
		String ss = request.getParameter("Cla");
		String ph = request.getParameter("Pho");
		String ad = request.getParameter("Adr");
      
		String mail = request.getParameter("Em");
        out.print("更改後的結果");
        %><% out.println(ID );%><br>
       <%  out.println("密碼: "+Pass );%><br>
       <%  out.println("姓名: "+x);%><br>
       <% out.println("班級: "+ss);%><br>
      <%  out.println("行動電話: "+ph);%><br>
       <% out.println("住址: "+ad);%><br>
         <% out.println("電子郵件: "+mail);%><br>
		<%request.setCharacterEncoding("UTF-8");
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
	<input type="button" value="回上一頁" onclick="history.back()">
	<a href=index.jsp>修改以正確重新登入</a>
</body></div>
</html>
