<%@page import="java.sql.ResultSet"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 
<%@ page import="java.sql.*"%> 
<%!int i;%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Teacher Page</title> 
</head> 
<body> 
    <form name="getstate" action="teacherreport.jsp" method="post">
<br><br><b>2.Teacher :</b> 
<select> 
<% 
   
   String tid=new String(); 
String str=request.getParameter("q"); 
i=Integer.parseInt(str); 
try { 
Class.forName("com.mysql.jdbc.Driver"); 
} catch (ClassNotFoundException e) { 
e.printStackTrace(); 
return; 
} 
Connection connection = null;
try { 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root"); 
} 
catch (SQLException e) { 
e.printStackTrace(); 
return; 
} 
 
PreparedStatement stmt=null; 
stmt=connection.prepareStatement("select * from teacher where did='"+i+"' and active='Y'"); 
ResultSet rs=null; 
rs= stmt.executeQuery(); 
while(rs.next()){ 
%> 
<option value="<%=rs.getString("tid")%>"><%=rs.getString("tname")%></option> 
 <a href="teacherreport2.jsp?tid=<%=str%>">
<%    
} 
%> 
  
</select> 
    </form>

</body> 
</html>