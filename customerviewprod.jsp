<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Fashion Design</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link rel="stylesheet" href="css/slick.css"/>

        <link href="css/tooplate-little-fashion.css" rel="stylesheet">

        <link rel="stylesheet" href="css/styles.css">  

         <link rel="stylesheet" href="css/styles2.css">


        
<!--

Tooplate 2127 Little Fashion

https://www.tooplate.com/view/2127-little-fashion

-->
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

                    <a class="navbar-brand" href="designer_home.jsp">
                        <strong><span>Fashion</span> Design</strong>
                    </a>

                    <div class="d-lg-none">
                        <a href="sign-in.html" class="bi-person custom-icon me-3"></a>

                        <a href="product-detail.html" class="bi-bag custom-icon"></a>
                    </div>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="customer_home.jsp">Home</a>
                            </li>

                            <!-- <li class="nav-item">
                                <a class="nav-link" href="viewuser.jsp">Customers</a>
                            </li> -->

                            <li class="nav-item">
                                <a class="nav-link" href="viewcart.jsp">Orders</a>
                            </li>
                        
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="viewbilling.jsp">Billings</a>
                            </li> -->
                        
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="viewrating.jsp">Ratings</a>
                            </li> -->

                            <li class="nav-item">
                                <a class="nav-link" href="userlogin.html">Logout</a>
                            </li>

                        </ul>

                        
                    </div>
                </div>
            </nav>

            <section class="sign-in-form section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 mx-auto col-12">

                            <h1 class="hero-title text-center mb-5">All Products</h1>

                            
                            <div class="row">
                                <!-- <div class="col-lg-8 col-11 mx-auto"> -->
                                    
                                    <center>
                                        <style>
                                          table {
                                            width: 100%;
                                            border-collapse: collapse;
                                            margin-top: 30px;
                                            font-family: 'Inter', sans-serif;
                                            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                                          }
                                      
                                          th, td {
                                            padding: 16px;
                                            text-align: center;
                                            border-bottom: 1px solid #e0e0e0;
                                          }
                                      
                                          th {
                                            background-color: #f9f9f9;
                                            font-weight: 700;
                                            font-size: 18px;
                                          }
                                      
                                          tr:hover {
                                            background-color: #f1f1f1;
                                            transition: 0.3s;
                                          }
                                      
                                          img {
                                            max-width: 120px;
                                            height: auto;
                                            border-radius: 8px;
                                          }
                                      
                                          a {
                                            color: red;
                                            font-weight: bold;
                                            text-decoration: none;
                                          }
                                      
                                          a:hover {
                                            color: #ff5500;
                                            text-decoration: underline;
                                          }
                                        </style>
                                      
                                        <table>
                                          <thead>
                                            <tr>
                                              <th>Description</th>
                                              <th>Size</th>
                                              <th>Price</th>
                                              <th>Image</th>
                                              <th>Order</th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                            <%@include file="dbcon.jsp" %>
                                            <%
                                              ResultSet rs = stmt.executeQuery("select * from productdetails");
                                              while (rs.next()) {
                                            %>
                                              <tr>
                                                <td><%= rs.getString(2) %></td>
                                                <td><%= rs.getString(3) %></td>
                                                <td><%= rs.getString(4) %></td>
                                                <td><img src="./upload/<%= rs.getString(5) %>" alt="Product Image" /></td>
                                                <td>
                                                  <a href="cartdetails.jsp?pid=<%= rs.getString(1) %>&price=<%= rs.getString(4) %>&image=<%= rs.getString(5) %>">
                                                    Order
                                                  </a>
                                                </td>
                                              </tr>
                                            <%
                                              }
                                            %>
                                          </tbody>
                                        </table>
                                      </center>
                                      
                                <!-- </div> -->
                            </div>
                            
                        </div>

                    </div>
                </div>
            </section>

        </main>
        <footer class="site-footer">
    <h5 class="site-footer h5">Copyright &copy; 2025 Fashion Design.</h5>
</footer>

        <!-- <%-- <footer class="site-footer">

            <h5 class="site-footer h5">Copyright © 2025 Fashion Design</h5>
             <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-10 me-auto mb-4">
                        <h4 class="text-white mb-3"><a href="index.html">Little</a> Fashion</h4>
                        <p class="copyright-text text-muted mt-lg-5 mb-4 mb-lg-0">Copyright © 2022 <strong>Little Fashion</strong></p>
                        <br>
                        <p class="copyright-text">Designed by <a href="https://www.tooplate.com/" target="_blank">Tooplate</a></p>
                    </div>



                </div>
            </div> 
        </footer>
 --%>
     -->

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/Headroom.js"></script>
        <script src="js/jQuery.headroom.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/custom.js"></script>

    </body>

<script type="text/javascript">
    function preventBack() {
        window.history.forward(); 
    }
    
    setTimeout("preventBack()", 0);
    
    window.onunload = function () { null };
</script>
</html>