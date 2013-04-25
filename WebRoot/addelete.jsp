<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>



<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 300px;
	height: 85px;
	text-align: center;
	font-weight: bolder;
	color: #FF8C00;
}

#t {
	border-radius: 30px 60px ;
	border: 5px solid #3CB371;
}
</style>

<div id="t">


<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
		  Connection con = null;
		  try {
		  
		   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con = DriverManager.getConnection(conUrl);
		   Statement stmt = con.createStatement();
		
		String AdminID = request.getParameter("AdminID");
		AdminID = new String(AdminID.getBytes("8859_1"), "UTF-8");

       
		

		ResultSet rs;
		String sql = "SELECT * FROM dbo.Admin where AdminID='" + AdminID + "'";
		rs = stmt.executeQuery(sql);

		String sqldel = "delete from dbo.Admin where AdminID='" + AdminID + "'";
		int result = stmt.executeUpdate(sqldel);
		out.print("已刪除該管理者編號為" + AdminID + "的資料");
		rs.close();
		stmt.close();
		con.close();
		}
		 catch (Exception ex) {
		     ex.printStackTrace();
		  }
		
	%>
	<input type="button" value="回上一頁資料查詢" onclick="history.back()">
</body></div>
</html>