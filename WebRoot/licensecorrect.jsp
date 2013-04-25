  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.sql.*,java.lang.*"%>


<title>更改頁面</title>

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
<h2>證照資料修改</h2>
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
		    
		    
		String A  = request.getParameter("L");
		//AdminID = new String(AdminID.getBytes("8859_1"), "UTF-8");
		
        String sql="SELECT * FROM dbo.License WHERE LicenseId='"+A+"'";
        rs = stmt.executeQuery(sql);
        
        while(rs.next()){
        
        
        
	
	%> 
			 
<h2>	
<FORM method="POST" name="ju" action="licensecorrect_w.jsp">
 <input type="hidden" name="LicenseID"   value="<%=A%>"><br> 
 證照名稱:<input type="text" name="LicenseName" size=40 value="<%=rs.getString("LicenseName")%>" ><br> 
 證照內容:<input type="text" name="LicenseAbout" size=40 value="<%=rs.getString("LicenseAbout")%>" ><br> 
 證照類別:<input type="text" name="LicenseClass" size=40 value="<%=rs.getString("LicenseClass")%>"><br> 
 
<input type="submit" value="確定更改" name="B1" ><br> 
</FORM>
</h2>
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