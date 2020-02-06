<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%
String str, str1, str2,name,str3, name2, password;
String t2=new String();
String t=request.getParameter("t");
if(t.equals("2"))
{
	name2=request.getParameter("tid");
        name=request.getParameter("tuname");
	password=request.getParameter("PASSWORD");
      //  String name1 = request.getParameter( "tid" );
   session.setAttribute( "theName", name2 );
	//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	//Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
         Class.forName("com.mysql.jdbc.Driver");
    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root");
	Statement s =c.createStatement();
	String sql = "select * from teacher";
	ResultSet rs=s.executeQuery(sql);
	while(rs.next())
	{
		str=rs.getString("tid");
                str3=rs.getString("tuname");
		str1=rs.getString("tpw");
	        str2 = rs.getString("active");
if(name.compareTo(str3)==0 && password.compareTo(str1)==0 && str2.equals("Y"))
		{
                   

                    %>
                      <jsp:forward page="teacherhome.jsp">
                        <jsp:param name="tid" value="<%=str%>" />
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
<title>TEACHER LOGIN FORM</title>
<script language="javascript" >
function fun3()
{
	var name=document.teacherlogin.Name.value;
	var pass=document.teacherlogin.PASSWORD.value;
	if(name =="" || pass =="")
	{
			alert("Enter the Details First");
			document.teacherlogin.Name.focus();
			return false;
	}
}
</script>
</head>
<body>
<form name="teacherlogin" action="teacherlogin.jsp?t=2" onsubmit="return fun3()" method=post>
<center>
<link rel="stylesheet" href="teacherstyle.css">

    <div class ="login-box">
        <h1>Teacher login</h1>
        <div class="textbox">
            <i class="fa fa-user" aria-hidden-"true"></i>
            <input type="text" placeholder="Username" name="tuname" value="">
            
        </div>
        <div class="textbox">
            <i class="fa fa-lock" aria-hidden-"true"></i>
            <input type="password" placeholder="Password" name="PASSWORD" value="">
            
        </div>
        <input type="submit" value="submit">
    </div>

</center>
    
</form>
    <center>  <bottom> <a href="addteacher2.jsp" >Register</a></center></bottom><br><br>
    <center><a href="home.html" >Back To Home Page</a></center><br><br>
</body>
</html>