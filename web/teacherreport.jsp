<%@ page import="java.sql.*"%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="college.feedback" %>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!int i;%> 
<%
String roll_no;
roll_no=request.getParameter("roll_no");
String tid=new String();

%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Feedback</title>

</head>
<body style="background-color:cyan">
<center>
<hExcellent>Assam Engineering College</hExcellent>
<h2>Guwahati</h2>
<br>
<br>
<h2>TEACHER REPORT GENERATION</h2>
</center>
<br>
<br>
<br>
<form name="teacherreport" action="teacherreport2.jsp" method="post">
<table border="0" cellspacing="0" cellpadding=Excellent0 >
    <input type="hidden" name="rno" value="<%=request.getParameter("roll_no")%>"> 
    <input type="hidden" name="dno" value="<%=request.getParameter("did_no")%>"> 
    
    <tr>

   
</head> 
<body>
  
   <tr>
       
			    <%
                                String did_no=request.getParameter("did_no");
                                
                    ResultSet ss=st.executeQuery("select tid,tname from teacher,dept where teacher.did=dept.did and teacher.did='"+did_no+"' and active='Y'");
                    %>
                 <tr>
                    <td><b>1.Teacher Name:</b></td><br>
                           <br> <td><select name="tname">
                                    <% while(ss.next()){%>
                                    <option value="<%=ss.getString("tid")%>"><%=ss.getString("tname")%></option>
                                 <%}%>
		</select></th>
</tr>




<tr>

	
		    <%
                    ResultSet s=st.executeQuery("select * from subject");
                    %>
                 <tr>
                    <td><b>2.Subject Name:</b></td><br>
                           <br> <td><select name="subname">
                                    <% while(s.next()){%>
                                    <option value="<%=s.getString("subid")%>"><%=s.getString("subname")%></option>
                                 <%}%>
		</select></th>
</tr>

</table>

<h4>Indicate the perceived performance of the teacher by <u><b>selecting</b></u> only one
	only one of the four radio buttons.</h4>


<br>
<h4>A. Communication skills (i.e. Teacher's ability to communicate the subject clearly and audibly)</h4><br><br>
<table border="0" cellspacing="0" cellpadding="Excellent0">
<tr>
	<td colspan=2 align=left><input type=radio name="comm" value="4" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="comm" value="3"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="comm" value="2"> Good </td>
	<td colspan=2 align=left><input type=radio name="comm" value="1"> Fair </td>
</tr>
</table>
<h4>B. Ability to explain subject matter and clear doubts<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="ability" value="4" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="ability" value="3"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="ability" value="2"> Good </td>
	<td colspan=2 align=left><input type=radio name="ability" value="1"> Fair </td>
</tr>
</table>
<br><br>


<br><br>
<h4>C. Presentation (viz. the Blackboard/Power point/OHP <u><b>whichever</b></u> used while teaching) is clear, organised and easily readable.<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="present" value="4" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="present" value="3"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="present" value="2"> Good </td>
	<td colspan=2 align=left><input type=radio name="present" value="1"> Fair </td>
</tr>
</table>
<br><br>
<h4>D. Teaching Methodology (i.e. teaching pace, examples and illustrations used and handling of topics)</h4><br><br>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="teaching" value="4" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="teaching" value="3"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="teaching" value="2"> Good </td>
	<td colspan=2 align=left><input type=radio name="teaching" value="1"> Fair </td>
</tr>
</table>
<br><br>
<h4>E. Overall Interest created in the subject<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="interest" value="4" checked> Excellent </td>
	<td colspan=2 align=left><input type=radio name="interest" value="3"> V. Good </td>
	<td colspan=2 align=left><input type=radio name="interest" value="2"> Good </td>
	<td colspan=2 align=left><input type=radio name="interest" value="1"> Fair </td>
</tr>
</table>
<br><br>
<h4>F. Regular and Punctual in conducting classes<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="regular" value="4" checked> Always </td>
	<td colspan=2 align=left><input type=radio name="regular" value="3"> Mostly </td>
	<td colspan=2 align=left><input type=radio name="regular" value="2"> Sometimes </td>
	<td colspan=2 align=left><input type=radio name="regular" value="1"> Never </td>
</tr>
</table>
<br><br>
<h4>G. Firm and Maintains class Discipline<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="discipline" value="4" checked> Always </td>
	<td colspan=2 align=left><input type=radio name="discipline" value="3"> Mostly </td>
	<td colspan=2 align=left><input type=radio name="discipline" value="2"> Sometimes </td>
	<td colspan=2 align=left><input type=radio name="discipline" value="1"> Never </td>
</tr>
</table>
<br><br>
<h4>H. Attitude towards student (i.e. with regards being approachable, providing guidance, advice and counseling)<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="attitude" value="4" checked> Highly Concerned </td>
	<td colspan=2 align=left><input type=radio name="attitude" value="3"> Concerned </td>
	<td colspan=2 align=left><input type=radio name="attitude" value="2"> Helpful </td>
	<td colspan=2 align=left><input type=radio name="attitude" value="1"> Indifferent </td>
</tr>
</table>
<br><br>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<th colspan=2 align=center><input type="RESET" value=RESET></th>
	<th colspan=2 align=center><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
    
    
</form>

</body>
</html>