<%@include file="dbcon.jsp"%>

<%
  String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;


s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");
s6=request.getParameter("t6");
s7=request.getParameter("t7");
s8=request.getParameter("t8");
s9=request.getParameter("t9");
String img=session.getAttribute("img").toString();


int k=stmt.executeUpdate("insert into cartdetails(product_id,user_id,order_date,deliver_date,size,image,price,qty,total_amt) values('"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+img+"','"+s7+"','"+s8+"','"+s9+"')");

session.setAttribute("pid",s2);
session.setAttribute("qty",s8 );
session.setAttribute("totalamt",s9 );


%>

<script>
  // alert("Ordered Successfully");
  document.location="bill.jsp";
  
  
  </script>