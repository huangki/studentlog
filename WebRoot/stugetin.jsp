 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>新增考照紀錄-學生版</title>
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
		<h2>新增證照紀錄</h2>
	</center>
	<form method="post" name="uyuy" action="stugetadd.jsp">
		 <%
			 request.setCharacterEncoding("utf-8");
			 response.setContentType("text/html; charset=utf-8");
		%><h2>		編碼 : <input type="text" name="Num" size=20><br> 
		學號 : <input type="text" name="StudentId" size=20><br> 
		證照編號 : <input type="text" name="LicenseId" size=20><br> 
		考照日期 : <input type="text" name="GetDate" size=20><br>
		 </h2>
		 
		  
		
		

		<input type="submit" value="確定"  > <input
			type="reset" value="清除">


	</form>
	為了方便您的新增順利可參考以下連結 方便新增<br>
	<a href= studentlicensesearch.jsp>證照查詢</a>
</body>
</div>
</html>
 