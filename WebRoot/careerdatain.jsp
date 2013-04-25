  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

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
	<center>
		<h2>新增證照資料	</h2>
		
	</center>
	<form method="post" name="uyuy" action="careerdataadd.jsp">
		 <%
			 request.setCharacterEncoding("utf-8");
			 response.setContentType("text/html; charset=utf-8");
		%><h2>
		職業編號 : <input type="text" name="Cnum" size=40><br> 
		證照編號 : <input type="text" name="LicenseId" size=40><br>
	           號碼:    <input type="text" name="NN" size=40><br>
		</h2>
	
		<input type="submit" value="確定"  > <input
			type="reset" value="清除">


	</form>
	</center>
	</div>
</body>
</html>
 