<%@include file="dbcon.jsp" %>
  
<%

  String s1=request.getParameter("order_id");

int k=stmt.executeUpdate("delete from billingdetails where order_id='"+s1+"' ");

out.println("one rec deleted");

%>

<jsp:forward page="viewbilling.jsp" />