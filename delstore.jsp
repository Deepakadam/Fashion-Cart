<%@include file="dbcon.jsp" %>
  
<%

  String s1=request.getParameter("storeid");

int k=stmt.executeUpdate("delete from storedetails where storeid='"+s1+"' ");

out.println("one rec deleted");

%>

<jsp:forward page="viewstore.jsp" />