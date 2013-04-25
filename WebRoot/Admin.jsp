<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*,java.util.Date;"%>



<html>
<title>管理員登入頁面</title>
<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 490px;
	height: 600px;
	text-align: center;
	font-weight: bolder;
	color: #FF8C00;
}

#t {
	border-radius: 30px;
	border: 10px solid #DAA520;
}
</style>

<div id="t">
	<body>
	
<center> 
		<TABLE bgcolor=DodgerBlue>
			<TR bgcolor=SkyBlue>
				<TD><B>管理者編號</B></TD>
				<TD><B>管理者帳號</B></TD>
				<TD><B>管理者姓名</B></TD>
				<TD><B>管理者密碼</B></TD>
				<TD><B>管理者信箱</B></TD>


			</TR>
			<%  Date x = new Date();
			   
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
				String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
				Connection con = null;

				int one = Integer.parseInt(request.getParameter("Account"));
				int two = Integer.parseInt(request.getParameter("Password"));

				try {
					Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
					con = DriverManager.getConnection(conUrl);
					Statement stmt = con.createStatement();
					String SQL = "SELECT * FROM dbo.Admin";

					Boolean ff = true;
					ResultSet rs = stmt.executeQuery(SQL);

					while (rs.next()) {
						int ans = Integer.parseInt(rs.getString("Account"));
						int ans2 = Integer.parseInt(rs.getString("Password"));

						if (one == ans && two == ans2) {
							ff = true;
			%>
			<TR bgcolor=LightGoldenrodYellow>
				<TD><B><%=rs.getString("AdminID")%></B></TD>
				<TD><B><%=rs.getString("Account")%></B></TD>
				<TD><B><%=rs.getString("AdminName")%></B></TD>
				<TD><B><%=rs.getString("Password")%></B></TD>
				<TD><B><%=rs.getString("Email")%></B></TD>
				<TD><B> <a href=adcorrect.jsp?AdminID=<%=rs.getString("AdminID")%>>修正</a> </B></TD>


			<MARQUEE     
      scrollAmount= 450><h2><% out.print("您的使用者編號 " + rs.getString("AdminID")
										+ " 歡迎您的使用 "); %></h2></MARQUEE><BR><BR>	
										<MARQUEE SCROLLDELAY=200 >現在時間:<%out.print(x.toLocaleString()); %></MARQUEE> 
										<%
					 
								int result = stmt.executeUpdate(SQL);
							}

							else {
								ff = false;
				%>
			
		</TABLE>
		<br>
		<br>
		<%
			}
				}
				if (ff == false) {
		%>
		<input type="button" value="回上一頁" onclick="history.back()">

		<%
			}

				rs.close();
				stmt.close(); //關閉Statement物件
				con.close(); //關閉Connection物件

			}

			catch (Exception ex) {
				ex.printStackTrace();
			}
		%>


		 
		
		 

	<TABLE border=3px  ,bgcolor=#F5F5DC  >
				<TR>
					 
					 
					<br>
					<TD bgcolor=#F5F5DC>系統管理員管理功能</TD>
				</TR>
				<TR>
					<TD><a href=search.jsp>顯示學生資料</a></TD>
				</TR>
				<TR>
					<TD><a href=stuin.jsp>新增學生資料</a></TD>
				</TR>
				<TR>
					<TD><a href=adminin.jsp>新增管理員</a></TD>
				</TR>
				<TR>
					<TD><a href=adminsearch.jsp>顯示管理員資料</a></TD>
				</TR>
				<TR>
					<TD><a href=papersearch.jsp>顯示證照資料</a></TD>
				</TR>
				<TR>
					<TD><a href=paperin.jsp>新增證照資料</a></TD>
				</TR>
				<TR>
					<TD><a href=getpapersearch.jsp>顯示證照考取紀錄</a></TD>
				</TR>
				<TR>
					<TD><a href=getpaperin.jsp>新增證照考取紀錄</a></TD>
				</TR>
					<TR>
				<TD><a href=careersearch.jsp>查詢職業資料</a></TD>
				</TR>
				<TR>
				<TD><a href=careerin.jsp>新增職業資料</a></TD>
				</TR>
				<TR>
				<TD><a href=careerdatasearch.jsp>查詢職涯資料</a></TD>
				</TR>
				
				<TR>
				<TD><a href=careerdatain.jsp>新增職涯資料</a></TD>
				</TR>
				
				
				
				<TR>
					<TD><a href=adminlog.jsp>登出</a></TD>
				</TR>
				<TR>
					<TD></TD>
				</TR>
			</TABLE></center>
			</div>
</body>
</html>
