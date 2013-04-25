<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*,java.sql.*,java.lang.*,java.util.Date"%>

<title>學生管理首頁</title>

<html>
<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 500px;
	height: 330px;
	text-align: center;
	font-weight: bolder;
	color: #4682B4;
}

#t {
	border-radius: 30px;
	border: 10px solid #97CEEB;
}
</style>


<body>
	<div id="t">
		<center>
			<TABLE bgcolor=DodgerBlue>
				<TR bgcolor=SkyBlue>
					<TD><B>學號</B></TD>
					<TD><B>密碼</B></TD>
					<TD><B>姓名</B></TD>
					<TD><B>班級</B></TD>
					<TD><B>手機</B></TD>
					<TD><B>住址</B></TD>
					<TD><B>信箱</B></TD>

				</TR>
				<%
					Date uo = new Date();
				%>


				<%
					request.setCharacterEncoding("utf-8");
					response.setContentType("text/html; charset=utf-8");
					String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
					Connection con = null;

					int s = Integer.parseInt(request.getParameter("acc"));
					int x = Integer.parseInt(request.getParameter("min"));

					try {
						Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
						con = DriverManager.getConnection(conUrl);
						Statement stmt = con.createStatement();
						String SQL = "SELECT * FROM dbo.Student";

						ResultSet rs = stmt.executeQuery(SQL);

						while (rs.next()) {
							int ans = Integer.parseInt(rs.getString("StudentId"));
							int ans2 = Integer.parseInt(rs.getString("Password"));
							if (s == ans && x == ans2) {
				%>
				<marquee behavior=alternate>
					<h2>
						<%
							out.print("歡迎你好     " + s);
						%>
					</h2>
				</marquee>
				
<marquee  >  現在時間:<%= uo.toLocaleString()  %> </marquee>

	
		 
			<br>
			
				<TR bgcolor=LightGoldenrodYellow>
					<TD><B><%=rs.getString("StudentId")%><br> </B></TD>

					<TD><B><%=rs.getString("Password")%><br> </B></TD>

					<TD><B><%=rs.getString("Name")%><br> </B></TD>

					<TD><B><%=rs.getString("Class")%><br> </B></TD>

					<TD><B><%=rs.getString("Phone")%><br> </B></TD>

					<TD><B><%=rs.getString("Adress")%><br> </B></TD>

					<TD><B><%=rs.getString("Email")%><br> </B></TD>

					<TD><B> <a href=stucc.jsp?name=<%=rs.getString("StudentId")%>>修正</a> </B></TD>
					</center>
			</TABLE>
			<br>
			<br>
			<TABLE BORDER=1>
<TR><TD COLSPAN=2><center>學生管理功能</center></TD> </TR>
<TR><TD><a href=studentlicensesearch.jsp>查詢證照資料  </a>  </TD>
<TD><a href=studentgetcheck.jsp>查詢我的證照紀錄  </a> </TD></TR>
<TR><TD><a href=stugetin.jsp>新增我的證照紀錄  </a></TD>
<TD><a href=stcareerdata.jsp>查詢職涯規劃資料  </a></TD></TR>
<TR><TD COLSPAN=2><center><a href=index.jsp>登出</a></center></TD> </TR>
</TABLE>
			<%
				int result = stmt.executeUpdate(SQL);
			%>

			<%
				} else { 

						}

					}out.print("該帳號或密碼不存在!!");
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
			%>
		
	</div>

</body>
</html>
