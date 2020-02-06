<%@page import="java.util.*" %>
<%@page import="college.feedback" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher report Page</title>
    </head>

<body style="background-color: powderblue">
   
   
<center>

<br>
<br><br><br>
<%String roll_no;
roll_no=request.getParameter("roll_no");%>
<%String did_no;
did_no=request.getParameter("did_no");%>

 <%
         
     String rno=request.getParameter("rno");
        String subname=request.getParameter("subname");
                 String dno=request.getParameter("dno");
                  String tname=request.getParameter("tname");
             // String roll=request.getParameter("roll");
            String comm=request.getParameter("comm");
            String ability=request.getParameter("ability");
             String present=request.getParameter("present");
                 String teaching=request.getParameter("teaching");
                  String interest=request.getParameter("interest");
            String regular=request.getParameter("regular");
            String discipline=request.getParameter("discipline");
            String attitude=request.getParameter("attitude");
            feedback c=new feedback();
            c.setrno(rno);
            c.settid(tname);
            c.setdno(dno);
            c.setsubid(subname);
         //   c.setroll(roll);
            c.setcomm(comm);
            c.setability(ability);
            c.setpresent(present);
            c.setteaching(teaching);
            c.setinterest(interest);
            c.setregular(regular);
            c.setdiscipline(discipline);
            c.setattitude(attitude);
            try{
                String query="insert into feedback(roll,tid,did,subid,comm,ability,present,teaching,interest,regular,discipline,attitude) values('"+c.getrno()+"','"+c.gettid()+"','"+c.getdno()+"','"+c.getsubid()+"','"+c.getcomm()+"','"+c.getability()+"','"+c.getpresent()+"','"+c.getteaching()+"','"+c.getinterest()+"','"+c.getregular()+"','"+c.getdiscipline()+"','"+c.getattitude()+"')";
                st.executeUpdate(query);
                out.println("Successfully Added, Please provide course feedback.");
                
            }
            catch(Exception e){
                out.println(e);
            }
            %>
                               <jsp:forward page="course.jsp">
                        <jsp:param name="did_no" value="<%=dno%>" />
                                                <jsp:param name="roll_no" value="<%=rno%>" />
</jsp:forward>   
               
<a href="course.jsp?roll_no=<%=rno%>& did_no=<%=dno%>" >Course Feedback
</table>
</center>
</body>
</html>