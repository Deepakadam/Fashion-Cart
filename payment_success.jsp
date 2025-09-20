<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String paymentId = request.getParameter("pid");

    // Get user info from session
    String userEmail = (String) session.getAttribute("user_email");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Success</title>
    <style>
        body {
            background: #f0f4f8;
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            text-align: center;
        }
        .card h2 {
            color: #2ecc71;
            font-size: 28px;
            margin-bottom: 10px;
        }
        .card p {
            font-size: 16px;
            margin-bottom: 30px;
        }
        .card b {
            color: #333;
        }
        .home-link {
            display: inline-block;
            padding: 10px 20px;
            background: #3498db;
            color: white;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
        }
        .home-link:hover {
            background: #2980b9;
        }
    </style>
</head>
<body>

<div class="card">
    <h2>✅ Payment Successful 🎉</h2>
    <p>Thank you! Your payment ID is:<br><b><%= paymentId %></b></p>
    <a class="home-link" href="customer_home.jsp">Go Back to Home</a>
</div>

</body>
</html>
