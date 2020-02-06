<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%
String tid,name;
tid=request.getParameter("tid");
name=request.getParameter("name");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher Home</title>
</head>
<body>
     <style>
    body{background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(teacher.jpeg);}
    </style>

<form name="teacherhome">
    
<center>

<br>
<br><br><br>
<h3>
     
<a href="feed3.jsp?tid=<%=tid%>">GENERATE REPORT</a><br><br>
<a href="avgcoursesearch1.jsp?tid=<%=tid%>">GENERATE AVERAGE COURSE REPORT</a><br><br>
<a href="feedavg.jsp?tid=<%=tid%>">GENERATE AVERAGE FEEDBACK REPORT</a><br><br>
<a href="changeteacherpass.jsp?tid=<%=tid%>">CHANGE PASSWORD</a><br><br>
  <br><a href="home.html" >Exit</a><br><br>
</h3>
</center>

</form>
</body>
</html>