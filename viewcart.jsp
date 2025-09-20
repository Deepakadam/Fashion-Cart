<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Fashion Design - Cart</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

    <!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/slick.css"/>
    <link href="css/tooplate-little-fashion.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">

    <style>
      table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0,0,0,0.05);
      }
      th, td {
        text-align: center;
        padding: 15px;
      }
      th {
        background-color: #f8f9fa;
        color: #333;
        font-weight: 600;
      }
      tr:nth-child(even) {
        background-color: #f2f2f2;
      }
      img {
        border-radius: 8px;
      }
      .hero-title {
        font-size: 2.5rem;
        font-weight: 700;
        color: #333;
      }
    </style>
  </head>
  <body>
    <section class="preloader">
      <div class="spinner">
        <span class="sk-inner-circle"></span>
      </div>
    </section>

    <main>
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <a class="navbar-brand" href="index.html">
            <strong><span>Fashion</span> Design</strong>
          </a>

          <div class="d-lg-none">
            <a href="sign-in.html" class="bi-person custom-icon me-3"></a>
            <a href="product-detail.html" class="bi-bag custom-icon"></a>
          </div>

          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
              <li class="nav-item"><a class="nav-link" href="customer_home.jsp">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="customerviewprod.jsp">Products</a></li>
              <li class="nav-item"><a class="nav-link" href="userlogin.html">Logout</a></li>
            </ul>
          </div>
        </div>
      </nav>

      <section class="sign-in-form section-padding">
        <div class="container">
          <div class="row">
            <div class="col-lg-10 mx-auto">
              <h1 class="hero-title text-center mb-5">Your Shopping Cart</h1>
              <div class="table-responsive">
                <table class="table table-bordered">
                  <thead class="table-light">
                    <tr>
                      <th>Product ID</th>
                      <th>Order Date</th>
                      <th>Deliver Date</th>
                      <th>Size</th>
                      <th>Image</th>
                      <th>Price</th>
                      <th>Quantity</th>
                      <th>Total Amount</th>
                    </tr>
                  </thead>
                  <tbody>
                    <%-- Sample dynamic JSP content --%>
                    <%@include file="dbcon.jsp" %>
                    <% 
                      String uname=session.getAttribute("uname").toString();
                      ResultSet rs=stmt.executeQuery("select * from cartdetails where user_id='"+uname+"'");
                      while(rs.next()) {
                    %>
                    <tr>
                      <td><%=rs.getString(2)%></td>
                      <td><%=rs.getString(4)%></td>
                      <td><%=rs.getString(5)%></td>
                      <td><%=rs.getString(6)%></td>
                      <td><img src="./upload/<%=rs.getString(7)%>" width="100" height="100" /></td>
                      <td><%=rs.getString(8)%></td>
                      <td><%=rs.getString(9)%></td>
                      <td><%=rs.getString(10)%></td>
                    </tr>
                    <% } %>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <footer class="site-footer">
        <h5 class="site-footer h5">Copyright &copy; 2025 Fashion Design</h5>
    </footer>

    <!-- JS Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/Headroom.js"></script>
    <script src="js/jQuery.headroom.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>