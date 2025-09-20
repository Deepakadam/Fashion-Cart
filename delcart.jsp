<%@include file="dbcon.jsp" %>
  
<%

  String s1=request.getParameter("cart_id");

int k=stmt.executeUpdate("delete from cartdetails where cart_id='"+s1+"' ");

out.println("one rec deleted");

%>

<jsp:forward page="designerviewcart.jsp" />