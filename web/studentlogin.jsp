<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%@page import="javax.servlet.*"%>

<%
String str, str1,str2,str3,str4, name,name1,name2, password;
String t2=new String();
String t=request.getParameter("t");
if(t.equals("1"))
{
	name=request.getParameter("ROLLNO");
        name2=request.getParameter("didn");
        name1=request.getParameter("suname");
	password=request.getParameter("PASSWORD");
	//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	//Connection c=DriverManager.getConnection("jdbc:odbc:college","root","root");
         Class.forName("com.mysql.jdbc.Driver");
         Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
	Statement s =c.createStatement();
	String sql = "select * from student";
	ResultSet rs=s.executeQuery(sql);
	while(rs.next())
	{
		str=rs.getString("roll");
                str4=rs.getString("did");
                str2=rs.getString("suname");
		str1=rs.getString("spw");
                str3 = rs.getString("active");
		if(name1.compareTo(str2)==0 && password.compareTo(str1)==0 && str3.equals("Y"))
		{
                    //session.setAttribute("roll_no",str);

                    %>
                    
                    <jsp:forward page="frame1.jsp">
                        <jsp:param name="roll_no" value="<%=str%>" />
                        <jsp:param name="did_no" value="<%=str4%>" />
</jsp:forward>
                    
                    
                    <%
		}
		else
		{
			t2="Either User Name and password is incorrect or Your account is not activated. Please contact admin.";
		}
	}
}
%>

      
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>STUDENT LOGIN FORM</title>
<script language="javascript" >
function fun3()
{
	var roll=document.studentlogin.suname.value;
	var pass=document.studentlogin.PASSWORD.value;
	if(roll==="")
	{
		alert("First username must be filled");
		return false;
	}
	
	
	else if(pass==="")
	{
		alert("First Password must be filled");
		return false;
	}
}
</script>
<link rel="stylesheet" href="style.css">
</head>
<body>
<form name="studentlogin" action="studentlogin.jsp?t=1" onsubmit="return fun3()" method="post">
<center>

<br><br><br>
<table border="0" cellspacing=0 cellpadding=5 >
<caption align=bottom>

</caption>
<h1>Student Login</h1>
<div class="textbox">
            <input type="text" name="suname" placeholder="UserName">
</div>
<div class="textbox">
            <input type="password" name="PASSWORD" placeholder="Password"><%=t2%>
            </div>
            <div class="textbox">
            <input type="submit" name="" value="submit">
</div>
</table>
<br><br><br>
<a href="addstudent1.jsp" >Register</a><br><br>
<a href="home.html" >Back To Home Page</a><br><br>
</center>
</form>
</body>
</html>