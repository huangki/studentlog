<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>新增管理員</title>

<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 400px;
	height: 550px;
	text-align: center;
	font-weight: bolder;
	color: #000000;
}

#t {
	border-radius: 30px 60px;
	border: 10px solid #F08080;
}
</style>
<div id="t">
<body>
	<center>
		<h2>新增管理員</h2>
	</center>
	<form method="post" name="y" action="adminadd.jsp">
		 <%
			 request.setCharacterEncoding("utf-8");
			 response.setContentType("text/html; charset=utf-8");
		%><h2>
		管理者編號 : <input type="text" name="AdminID" size=20><br> 
		管理者帳號 : <input type="text" name="Account" size=20><br>
		管理者姓名 : <input type="text" name="AdminName" size=20><br>
		管理者密碼:<input type="text" name="Password" size=20><br>
		管理者信箱:<input type="text" name="Email" size=20><br> 
		</h2>
		

		<input type="submit" value="確定"  > <input
			type="reset" value="清除">


	</form>
</body>
</div>
</html>
