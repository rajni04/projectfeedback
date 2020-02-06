<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<h2><center>Welcome to Feedback System</center><h2>
</head>
<body>
    <style>
    body{background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(teacher.jpeg);}
    </style>
<%
String roll_no;
roll_no=request.getParameter("roll_no");


%>

<%
String did_no;
did_no=request.getParameter("did_no");


%>

    

  <div style="position:relative;left:1000px;top:-12px;">
         
    
   

  </div>



  <div class="centered">
    
    <br><br><h2><center>To Submit Feedback, Click below</h2>
  <center>  <a href="teacherreport.jsp?roll_no=<%=roll_no%>&did_no=<%=did_no%>">SUBMIT REPORT</a><br><br>
 <center><a href="viewfeed1.jsp?roll_no=<%=roll_no%>&did_no=<%=did_no%>">VIEW FEEDBACK</a><br><br>
 
</div>
  <br><br><center><a href="home.html" >Exit</a><br><br></center>

</body>
</html>