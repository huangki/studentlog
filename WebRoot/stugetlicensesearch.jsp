<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>

<title>學生考照查詢</title>

<html>
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


<body><center>	<TABLE bgcolor=DodgerBlue>
		<TR bgcolor=SkyBlue>
			<TD><B>編號</B></TD>
			<TD><B>學號</B></TD>
			<TD><B>證照編號</B></TD>
			<TD><B>考照日期</B></TD>

		</TR>
		<%
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
			Connection con = null;

			int s = Integer.parseInt(request.getParameter("StudentId"));
			 
			

			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				con = DriverManager.getConnection(conUrl);
				Statement stmt = con.createStatement();
				String SQL = "SELECT * FROM dbo.StuLicense";

				ResultSet rs = stmt.executeQuery(SQL);

				while (rs.next()) {
					 int ans = Integer.parseInt(rs.getString("StudentId"));
					 
				if(s==ans){	 
						 
		%>
	
		
		<TR bgcolor=LightGoldenrodYellow>
				<TD><B><%=rs.getString("Num")%></B></TD>
			<TD><B><%=rs.getString("StudentId")%></B></TD>
			<TD><B><%=rs.getString("LicenseId")%></B></TD>
			<TD><B><%=rs.getString("GetDate")%></B></TD>
			 
		 

			<TD><B> <a href=stgetlinc.jsp?LId=<%=rs.getString("Num")%>>修正</a> 
					<a href=stgetlicensedelete.jsp?LId=<%=rs.getString("Num")%>>刪除</a> </B></TD></center>
				

			<%
			}else{
			}
				
						  } 
					 
			%>
		<input type="button" value="回上一頁" onclick="history.back()">

			<% 
				rs.close();
					stmt.close(); //關閉Statement物件
					con.close(); //關閉Connection物件

				}

				catch (Exception ex) {
					ex.printStackTrace();
				}
			%><a href=studentlicensesearch.jsp>查詢證照資料</a>
		<a href=index.jsp>登出</a>	
		
</body></div>
</html>
