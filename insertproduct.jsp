<%@include file="dbcon.jsp"%>

<%
  String s2,s3,s4,s5,s6;


s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");

int k=stmt.executeUpdate("insert into productdetails(description,size,price,image) values ('"+s2+"','"+s3+"','"+s4+"','img')");
%>

<jsp:forward page="uploadproductimg.jsp" />