<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>

<title>學生登入首頁</title>

<html>
 
<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 300px;
	height: 170px;
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


	<br> <br>
	<body>
		<form method="post" name="f" action="checklog.jsp">
			<%
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html; charset=utf-8");
			%>
			帳號: <input type="text" name="acc" size=20><br> 密碼:<input
				type="text" name="min" size=20><br> <input
				type="submit" value="確定"  > <input
				type="reset" value="清除">



		</form>



		<a href=adminlog.jsp>管理員登入</a>
</div>

</body>
</html>
