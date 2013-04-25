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
		    
		    
		String  ID = request.getParameter("name");
		 ID = new String(ID.getBytes("8859_1"), "UTF-8");
		out.print(ID);
        String sql="SELECT * FROM dbo.Student WHERE StudentId='"+ID+"'";
        rs = stmt.executeQuery(sql);
        
        while(rs.next()){
        System.out.print(rs.getString("StudentId"));
        
        
	
	%> 
			 
	
<FORM method="POST" name="n" action="stucc_w.jsp">
 學號:<input type="hidden" name="StId" value="<%=ID%>"><br> 
 密碼: <input type="text" name="Pas" size=30 value="<%=rs.getString("Password")%>" ><br> 
姓名:<input type="text" name="Nam" size=30 value="<%=rs.getString("Name")%>"><br> 
班級:<input type="text" name="Cla" size=30 value="<%=rs.getString("Class")%>"><br> 
手機:<input type="text" name="Pho" size=30 value="<%=rs.getString("Phone")%>"><br> 
住址:<input type="text" name="Adr" size=30 value="<%=rs.getString("Adress")%>"><br>
信箱:<input type="text" name="Em" size=30 value="<%=rs.getString("Email")%>"><br>  
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
<input type="button" value="回上一頁" onclick="history.back()">
</body>
</div>
</html>
