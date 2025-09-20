<%@include file="dbcon.jsp" %>
  
<%

  String s1=request.getParameter("product_id");

int k=stmt.executeUpdate("delete from rating where product_id='"+s1+"' ");

out.println("one rec deleted");

%>

<jsp:forward page="viewrating.jsp" />