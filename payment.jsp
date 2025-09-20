<%@ page import="java.util.*" %>
<%
    // ✅ Do NOT overwrite the session value here
    String amount = session.getAttribute("totalamt").toString();  // rupees
    int finalAmount = Integer.parseInt(amount) * 100;             // Razorpay wants paise
    String uname = session.getAttribute("uname").toString();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Razorpay Payment</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Segoe UI', sans-serif;
            text-align: center;
            padding: 50px;
        }
        .loader {
            margin-top: 50px;
        }

        /* Modal Styles */
        #payment-success {
            display: none;
            position: fixed;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        #payment-success .modal-box {
            background: #fff;
            padding: 30px 50px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            animation: popIn 0.3s ease;
        }
        @keyframes popIn {
            0% { transform: scale(0.8); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }
    </style>
</head>
<body onload="payNow()">

    <h2>Redirecting to secure payment...</h2>
    <p>Amount to be paid: <strong>₹<%= amount %></strong></p>
    <div class="loader">
        <img src="https://i.imgur.com/LLF5iyg.gif" width="50" />
    </div>

    <!-- Custom Modal for Payment Success -->
    <div id="payment-success">
        <div class="modal-box">
            <h2 style="color: #28a745;">Payment Successful!</h2>
            <p>Your Payment ID:</p>
            <code id="payment-id" style="font-size: 16px; font-weight: bold; color: #333;"></code>
            <p style="margin-top: 15px; color: #888;">Redirecting you shortly...</p>
        </div>
    </div>

<script>
    function payNow() {
        var options = {
            "key": "rzp_test_4L0fwYJXENGLGf", // ✅ Replace with your Razorpay Test Key
            "amount": "<%= finalAmount %>", // In paise
            "currency": "INR",
            "name": "Fashion Design",
            "description": "Order Payment",
            "handler": function (response) {
                // Show custom modal
                document.getElementById("payment-success").style.display = "flex";
                document.getElementById("payment-id").textContent = response.razorpay_payment_id;

                // Redirect after 3 seconds
                setTimeout(function () {
                    window.location.href = "payment_success.jsp?pid=" + response.razorpay_payment_id;
                }, 3000);
            },
            "prefill": {
                "name": "<%= uname %>",
                "email": "test@example.com",
                "contact": "9999999999"
            },
            "theme": {
                "color": "#3399cc"
            }
        };
        var rzp1 = new Razorpay(options);
        rzp1.open();
    }
</script>

</body>
</html>
