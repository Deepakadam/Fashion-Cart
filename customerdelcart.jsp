<%@include file="dbcon.jsp" %>
  
<%

  String s1=request.getParameter("cart_id");

int k=stmt.executeUpdate("delete from cartdetails where cart_id='"+s1+"' ");

out.println("one rec deleted");

%>

<script>
    // Show a confirmation dialog
    if (confirm("Are you sure you want to cancel your order?")) {
        // If the user clicks "OK", proceed with the cancellation
        alert("Your order has been cancelled.");
        document.location = "customer_home.jsp";
    } else {
        // If the user clicks "Cancel", take no action
        alert("Order cancellation aborted.");
    }
</script>