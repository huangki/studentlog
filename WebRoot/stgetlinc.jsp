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
		    
		    
		String AdminID = request.getParameter("LId");
		//AdminID = new String(AdminID.getBytes("8859_1"), "UTF-8");
		
        String sql="SELECT * FROM dbo.StuLicense WHERE Num='"+AdminID+"'";
        rs = stmt.executeQuery(sql);
        
        while(rs.next()){
        
        
        
	
	%> 
			 
	
<FORM method="POST" name="juju" action="stgetlicensecorrect_w.jsp">
<p>編碼:<font color="red" ><b><u><%=AdminID%></u></b></font> </p>
<p>學號:<font color="red"><b><u><%=rs.getString("StudentId")%></u></b></font> </p>
 <input type="hidden" name="Num"size=40 value="<%=AdminID%>" ><br>
 <input type="hidden"  name="StudentId" size=40 value="<%=rs.getString("StudentId")%>" ><br>
 證照編號:<input type="text" name="LicenseId" size=40 value="<%=rs.getString("LicenseID")%>" ><br> 
 考照日期:<input type="text" name="GetDate" size=40 value="<%=rs.getString("GetDate")%>" ><br> 
 
 
<input type="submit" value="確定更改" name="B1" ><br> 
</FORM>

	<% 
	 
	 rs.close();
	 stmt.close();
	 }
	 }
	
	 catch (Exception ex) {
		      ex.printStackTrace();
	 }
	%>

</body></div>
</html>
 