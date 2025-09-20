<%@include file="dbcon.jsp"%>

<%
  String s1,s3,s4,s5,s6,s7,s8,s9,s10;

s1=request.getParameter("t1");

s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");


int k=stmt.executeUpdate("insert into billingdetails(order_id,Prouct_id,quantity,unit_price,date,total_amount) values('"+s1+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");

out.println("one rec inserted");


%>3