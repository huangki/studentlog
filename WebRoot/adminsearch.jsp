<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>


<title>資料庫搜尋</title>
<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 540px;
	height: 550px;
	text-align: center;
	font-weight: bolder;
	color: #FF8C00;
}

#t {
	border-radius: 30px 60px;
	border: 10px solid #3CB371;
}
</style>

<div id="t">
<body>
  <h2> 管理員資料查詢</h2> 
<br>	<%
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
	<TABLE bgcolor=DodgerBlue>
		<TR bgcolor=SkyBlue>
			<TD><B>管理者編號</B></TD>
			<TD><B>管理者帳號</B></TD>
			<TD><B>管理者姓名</B></TD>
			<TD><B>管理者密碼</B></TD>
			<TD><B>管理者信箱</B></TD>
			
		</TR>
		<%
			//利用while迴圈將資料表中的記錄列出
			String sql = "SELECT * FROM dbo.Admin  ";
			rs = stmt.executeQuery(sql);
			while (rs.next()) //next的method,下一筆資料,若有資料則回應"true",否則回應"false"
			{
		%>
		<TR bgcolor=LightGoldenrodYellow>
			<TD><B><%=rs.getString("AdminID")%></B></TD>
			<TD><B><%=rs.getString("Account")%></B></TD>
			<TD><B><%=rs.getString("AdminName")%></B></TD>
			<TD><B><%=rs.getString("Password")%></B></TD>
			<TD><B><%=rs.getString("Email")%></B></TD>
			

			<TD><B> <a href=adcorrect.jsp?AdminID=<%=rs.getString("AdminID")%>>修正</a> 
					<a href=addelete.jsp?AdminID=<%=rs.getString("AdminID")%>>刪除</a> </B></TD>

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
			 
	</TABLE>
	
	<a href=adminindex.jsp>管理員首頁</a> 
	</div>
</body>
</html>
