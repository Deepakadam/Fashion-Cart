<%@include file="dbcon.jsp" %>
<%
    String s1 = request.getParameter("user_id");

    if (s1 != null && !s1.isEmpty()) {
        int k = stmt.executeUpdate("DELETE FROM userdetails WHERE user_id='" + s1 + "'");
        out.println("<script>alert('User deleted successfully.'); window.location='viewuser.jsp';</script>");
    } else {
        out.println("<script>alert('Invalid user ID.'); window.location='viewuser.jsp';</script>");
    }
%>

<jsp:forward page="viewuser.jsp" />