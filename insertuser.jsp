<%@include file="dbcon.jsp"%>

<%
  String s2,s3,s4,s5,s6,s7,s8;

s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");

int k=stmt.executeUpdate("insert into userdetails(email_id,mobileno,city,f_name,l_name,password) values('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
int j=stmt.executeUpdate("insert into userlogin values('"+s2+"','"+s7+"','customer')");

%>
<script>
  alert("Registered Successfully");
  document.location="userlogin.html";
  
  
  </script>