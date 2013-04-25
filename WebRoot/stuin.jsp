 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>新增學生資料</title>
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


<body>
	<center>
		<h2>新增</h2>
	</center>
	 	<form method="post" name="f" action="add.jsp">
		 <%
			 request.setCharacterEncoding("utf-8");
			 response.setContentType("text/html; charset=utf-8");
		%>
	
	
		<h2>
		學號 :<input type="text" name="StudentId" size=20><br> 
		密碼 :<input type="text" name="Password" size=20><br>
		姓名:<input type="text" name="Name" size=20><br>
		班級 :<input type="text" name="Class" size=20><br> 
		手機 :<input type="text" name="Phone" size=20><br> 
		住址 :<input type="text" name="Adress" size=20><br> 
		信箱 :<input type="text" name="Email" size=20><br> 
		 
		</h2>

		<input type="submit" value="確定" onclick="datacheck()"> <input
			type="reset" value="清除">
 


	</form>
</body>
</div>
</html>
 