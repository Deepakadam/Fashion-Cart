<%@ page import="java.util.*" %>
<%
    String prodid, uname, img, qty, totalamt;

    String username = session.getAttribute("uname").toString();
    prodid = session.getAttribute("pid").toString();
    uname = session.getAttribute("uname").toString();
    img = session.getAttribute("img").toString();
    qty = session.getAttribute("qty").toString();
    totalamt = session.getAttribute("totalamt").toString();

    int dd, mm, yy;
    Date d1 = new Date();
    dd = d1.getDate();
    mm = d1.getMonth() + 1;
    yy = d1.getYear() + 1900;
    String ss = dd + "-" + mm + "-" + yy;
%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Fashion Design</title>

    <!-- Google Fonts & CSS Files -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/tooplate-little-fashion.css" rel="stylesheet">
    <link rel="stylesheet" href="css/slick.css" />

    <style>
        .card {
            background: #fff;
            border-radius: 16px;
            transition: all 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        }

        .fw-semibold {
            font-weight: 600;
            color: #333;
        }

        .btn-dark {
            background-color: #000;
            border: none;
        }

        .btn-dark:hover {
            background-color: #444;
        }
    </style>

    <script type="text/javascript">
        function preventBack() {
            window.history.forward();
        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>

<body>
    <!-- Preloader -->
    <section class="preloader">
        <div class="spinner">
            <span class="sk-inner-circle"></span>
        </div>
    </section>

    <!-- Main Content -->
    <main>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="index.html">
                    <strong><span>Fashion</span> Design</strong>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item"><a class="nav-link" href="customer_home.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="customerviewprod.jsp">Products</a></li>
                        <li class="nav-item"><a class="nav-link" href="userlogin.html">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Bill Section -->
        <section class="sign-in-form section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="card shadow-lg p-4 rounded-4 border-0">
                            <h2 class="text-center mb-4 fw-bold">Bill Summary</h2>

                            <div class="text-center mb-3">
                                <img src="upload/<%=img %>" class="img-fluid rounded" alt="Product Image"
                                    style="max-height: 250px;">
                            </div>

                            <div class="mb-3 d-flex justify-content-between">
                                <span class="fw-semibold">Product ID:</span>
                                <span><%=prodid %></span>
                            </div>

                            <div class="mb-3 d-flex justify-content-between">
                                <span class="fw-semibold">Quantity:</span>
                                <span><%=qty %></span>
                            </div>

                            <div class="mb-4 d-flex justify-content-between">
                                <span class="fw-semibold">Total Amount:</span>
                                <span><%=totalamt %></span>
                            </div>

                            <div class="text-center">
                                <a href="payment.jsp" class="btn btn-dark btn-lg px-5 py-2 rounded-pill">Make Payment</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- JS Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/Headroom.js"></script>
    <script src="js/jQuery.headroom.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>
