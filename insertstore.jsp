<%@include file="dbcon.jsp"%>

<%
  String s2,s3,s4,s5,s6,s7;

s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");


int k=stmt.executeUpdate("insert into storedetails(sname,gst_no,licence_no,start_date,landline_no,address) values('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");

out.println("one rec inserted");


%>