  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>


<title>職業資料-學生版</title>
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
		 
			<TD><B>職業編號</B></TD>
			<TD><B>名稱</B></TD>
		    <TD><B>工作內容</B></TD>
		 
			
		</TR>
		<%
			//利用while迴圈將資料表中的記錄列出
			String sql = "SELECT * FROM dbo.Career  ";
			rs = stmt.executeQuery(sql);
			while (rs.next()) //next的method,下一筆資料,若有資料則回應"true",否則回應"false"
			{
		%>
		<TR bgcolor=LightGoldenrodYellow>
			<TD><B><%=rs.getString("Cnum")%></B></TD>
			<TD><B><%=rs.getString("Cname")%></B></TD>
			<TD><B><%=rs.getString("Cabout")%></B></TD>
		 
			 
		 

			 

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
			   <input type="button" value="回上一頁" onclick="history.back()">
	</TABLE>
	</center>
	</div>
</body>
</html>
 