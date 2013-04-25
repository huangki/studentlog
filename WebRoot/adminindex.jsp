<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
 
<html>
 <title>管理員功能首頁</title>
<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 450px;
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
 <h2> 管理員功能頁面</h2>
 
  

<center>  
   <TABLE border=3px  ,bgcolor=#F5F5DC  >
				<TR>
					<br>
					<br>
					<br>
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
			</TABLE>
			<a></a>
			      </center>
			       
   	                  </div>
			        	 
  </body>
</html>
