<%@ page language="java" import="java.util.*" pageEncoding="BIG5"%>
 <title>管理者登入介面</title>
<html>
 <style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 300px;
	height: 220px;
	text-align: center;
	font-weight: bolder;
	color: #4682B4;
}

#t {
	border-radius: 60px 120px;
	border: 5px solid #3CB371;
}
</style>
  <div id="t">
  <body>
    	<form method="post" name="f" action="Admin.jsp">
		<%
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
		%>
		<center><h3>管理員介面</h3></center>
		<br>  
		帳號: <input type="text" name="Account" size=20><br> 
		密碼: <input type="text" name="Password" size=20><br> 
	 
		<input type="submit" value="確定"> 
		<input type="reset" value="清除">
        
       
	</form> <a href= index.jsp>學生登入</a>
  </body>
  </div>
</html>
