 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>



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
		
		String StudentId = request.getParameter("StudentId");
	//	AdminID = new String(AdminID.getBytes("8859_1"), "UTF-8");

       
		

		ResultSet rs;
		String sql = "SELECT * FROM dbo.Student where StudentId='" + StudentId + "'";
		rs = stmt.executeQuery(sql);

		String sqldel = "delete from dbo.Student where StudentId='" + StudentId + "'";
		int result = stmt.executeUpdate(sqldel);
		%><h2><%out.print("已刪除該學號為" +StudentId + "的資料");%></h2><%
		rs.close();
		stmt.close();
		con.close();
		}
		 catch (Exception ex) {
		     ex.printStackTrace();
		  }
		
	%> <a href=search.jsp>顯示學生資料</a></div>
	
</body>
</html>