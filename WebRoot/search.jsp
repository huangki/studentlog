 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
 
<title>學生資料查詢</title>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 600px;
	height: 980px;
	text-align: center;
	font-weight: bolder;
	color: #FF8C00;
}

#t {
	border-radius: 45px ;
	border: 10px solid #3CB371;
}
</style>
 <div id="t">
  
  <body>
   <%
		 	String conUrl = "jdbc:sqlserver:// 163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
		  Connection con = null;
		    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con = DriverManager.getConnection(conUrl);
		   //SQL語句
		     String SQL = "SELECT  * FROM dbo.Student";
		     Statement stmt = con.createStatement();
		     ResultSet rs = stmt.executeQuery(SQL);
	%><center>	<TABLE bgcolor=DodgerBlue>
		<TR bgcolor=SkyBlue>
			<TD><B>學號</B>
			</TD>
			<TD><B>密碼</B>
			</TD>
			<TD><B>姓名</B>
			</TD>
			<TD><B>班級</B>
			</TD>
			<TD><B>電話</B>
			</TD>
			<TD><B>地址</B>
			</TD>
			<TD><B>email</B>
			</TD>

		</TR>
		<%
		 
			 
			while (rs.next()) 
			{
		%>
		<TR bgcolor=LightGoldenrodYellow>
			<TD><B><%=rs.getString("StudentId")%></B>
			</TD>
			<TD><B><%=rs.getString("Password")%></B>
			</TD>
			<TD><B><%=rs.getString("Name")%></B>
			</TD>
			<TD><B><%=rs.getString("Class")%></B>
			</TD>
			<TD><B><%=rs.getString("Phone")%></B>
			</TD>
			<TD><B><%=rs.getString("Adress")%></B>
			</TD>
			<TD><B><%=rs.getString("Email")%></B>
			</TD>


			<TD><B> <a href=cc.jsp?name=<%=rs.getString("StudentId")%>>修正</a>
					<a href=dd.jsp?StudentId=<%=rs.getString("StudentId")%>>刪除</a> </B>
			</TD></center>
			

			<%
				}

				rs.close(); //關閉ResultSet物件
				stmt.close(); //關閉Statement物件
			  //關閉Connection物件
			%> 
			 <a href=adminindex.jsp > <h2>管理員功能首頁</h2></a>
			 <br>
			 
				 
  </body>
  </div>
</html>
