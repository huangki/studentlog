<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>






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
		
		String L  = request.getParameter("LId");
		L  = new String(L.getBytes("8859_1"), "UTF-8");

       
		

		ResultSet rs;
		String sql = "SELECT * FROM dbo.StuLicense where Num='" + L  + "'";
		rs = stmt.executeQuery(sql);

		String sqldel = "delete from dbo.StuLicense  where Num='" + L  + "'";
		int result = stmt.executeUpdate(sqldel);
		out.print("已刪除該筆資料標號為" + L  + "的資料");
		rs.close();
		stmt.close();
		con.close();
		}
		 catch (Exception ex) {
		     ex.printStackTrace();
		  }
		
	%>
	
<a href= getpapersearch.jsp>考照紀錄查詢</a>
</body>
</html>