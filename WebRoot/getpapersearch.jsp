 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>


<title>資料庫搜尋</title>
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
<center>
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
		     ResultSet rs;
	%>
	<h2><TABLE bgcolor=DodgerBlue>
		<TR bgcolor=SkyBlue>
			<TD><B>編號</B></TD>
			<TD><B>學號</B></TD>
			<TD><B>證照編號</B></TD>
			<TD><B>考照日期</B></TD>
		 
		 
			
		</TR>
		<%
			//利用while迴圈將資料表中的記錄列出
			String sql = "SELECT * FROM dbo.StuLicense  ";
			rs = stmt.executeQuery(sql);
			while (rs.next()) //next的method,下一筆資料,若有資料則回應"true",否則回應"false"
			{
		%>
		<TR bgcolor=LightGoldenrodYellow>
			<TD><B><%=rs.getString("Num")%></B></TD>
			<TD><B><%=rs.getString("StudentId")%></B></TD>
			<TD><B><%=rs.getString("LicenseId")%></B></TD>
			<TD><B><%=rs.getString("GetDate")%></B></TD>
			 
		 

			<TD><B> <a href=getlinc.jsp?LId=<%=rs.getString("Num")%>>修正</a> 
					<a href=getlicensedelete.jsp?LId=<%=rs.getString("Num")%>>刪除</a> </B></TD>

			<%
			}

				rs.close(); //關閉ResultSet物件
				stmt.close(); //關閉Statement物件
				con.close(); //關閉Connection物件
			}	
				 catch (Exception ex) {
		      ex.printStackTrace();
		    }
			%>
			 <a href=adminindex.jsp>管理員首頁</a> </h2><br>
	</TABLE>
	</center>
	</div>
</body>
</html>
 