 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>


<title>管理員修改個資</title>

<style type="text/css">
div {
	margin-top: 20px;
	margin-left: 30px;
	padding: 5px;
	width: 350px;
	height: 270px;
	text-align:left;
	font-weight: bolder;
	color: #000000;
}

#t {
	border-radius: 30px;
	border: 5px solid #6495ED;
}
</style>


<div id="t">
 <html>

	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
        String conUrl = "jdbc:sqlserver://163.14.73.16;databaseName=a04;user=a04;password=17192225;"; //for jdbc 2.0
		  Connection con = null;
		  try {
		  
		   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   con = DriverManager.getConnection(conUrl);
		   
		     Statement stmt = con.createStatement();
		     ResultSet rs;
		    
		    
		String AdminID = request.getParameter("AdminID");
		//AdminID = new String(AdminID.getBytes("8859_1"), "UTF-8");
		
        String sql="SELECT * FROM dbo.Admin WHERE AdminID='"+AdminID+"'";
        rs = stmt.executeQuery(sql);
        
        while(rs.next()){
        System.out.print(rs.getString("AdminName"));
        
        
	
	%> 
			 
	<h2>
<FORM method="POST" name="g" action="adcorrect_w.jsp">
<p>編碼:<font color="red" ><b><u><%=AdminID%></u></b></font> </p>
  <input type="hidden"  name="AdminID" value="<%=AdminID%>"><br> 
  管理者帳號: <input type="text" name="Account" size=20 value="<%=rs.getString("Account")%>" ><br> 
 管理者姓名: <input type="text" name="AdminName" size=20 value="<%=rs.getString("AdminName")%>" ><br> 
 管理者密碼:<input type="text" name="Password" size=20 value="<%=rs.getString("Password")%>"><br> 
  管理者信箱:<input type="text" name="Email" size=30 value="<%=rs.getString("Email")%>"><br> 
<input type="submit" value="確定更改" name="B1" ><br> 
</FORM></h2>

	<% 
	 
	 rs.close();
	 stmt.close();
	 }
	 }
	
	 catch (Exception ex) {
		      ex.printStackTrace();
	 }
	%>

</body>
</html>
 </div>