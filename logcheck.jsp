<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 
String s1, s2;
s1 = request.getParameter("t1");
s2 = request.getParameter("t2");

try {
    ResultSet rs = stmt.executeQuery("select * from userlogin where username='" + s1 + "' ");
    if (!rs.next()) {
%>
        <script>
            alert("User name not found. Try Again!");
            window.location.href = "userlogin.html";
        </script>
<%
    } else {
        String pwd = rs.getString(2);
        if (s2.equals(pwd)) {
            session.setAttribute("uname", s1);

            String type = rs.getString(3);

            if (type.equals("designer")) {
%>
                <jsp:forward page="designer_home.jsp" />
<%
            }
            if (type.equals("customer")) {
%>
                <jsp:forward page="customer_home.jsp" />
<%
            }
        } else {
%>
        <script>
            alert("Invalid password. Try Again!");
            window.location.href = "userlogin.html";
        </script>
<%
        }
    }
} catch (Exception e) {
    out.println(e);
}
%>
