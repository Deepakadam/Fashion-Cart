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

                    <a class="navbar-brand" href="index.html">
                        <strong><span>Fashion</span> Design</strong>
                    </a>

                    <div class="d-lg-none">
                        <a href="sign-in.html" class="bi-person custom-icon me-3"></a>

                        <a href="product-detail.html" class="bi-bag custom-icon"></a>
                    </div>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="designer_home.jsp">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="viewuser.jsp">Customers</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Products
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="productdetails.html">Add Products</a></li>
                                    <li><a class="dropdown-item" href="viewproduct.jsp">View Products</a></li>
                                </ul>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link" href="viewcart.jsp">Orders</a>
                            </li>
                        
                                                   
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="viewrating.jsp">Ratings</a>
                            </li> -->

                            <li class="nav-item">
                                <a class="nav-link" href="">Logout</a>
                            </li>
                        </ul>

                        <!-- <div class="d-none d-lg-block">
                            <a href="sign-in.html" class="bi-person custom-icon me-3"></a>

                            <a href="product-detail.html" class="bi-bag custom-icon"></a>
                        </div> -->
                    </div>
                </div>
            </nav>

            <section class="sign-in-form section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 mx-auto col-12">

                            <h1 class="hero-title text-center mb-5">View Billing </h1>

                            <!-- <div class="social-login d-flex flex-column w-50 m-auto">
                                
                                <a href="#" class="btn custom-btn social-btn mb-4">
                                    <i class="bi bi-google me-3"></i>

                                    Continue with Google
                                </a>

                                <a href="#" class="btn custom-btn social-btn">
                                    <i class="bi bi-facebook me-3"></i>

                                    Continue with Facebook
                                </a>
                            </div>

                            <div class="div-separator w-50 m-auto my-5"><span>or</span></div> -->

                            <div class="row">
                                <div class="col-lg-8 col-11 mx-auto">
                                    <!-- <form action="login.html" method="post">

                                         <div class="form-floating">
                                            <input type="text" name="t1" id="user id"  class="form-control" placeholder="user id" required>

                                            <label for="user id">User id</label>
                                        </div>
                                        <br> 

                                        <div class="form-floating">
                                            <input type="email" name="t2" id="email"  class="form-control" placeholder="Email address" required>

                                            <label for="email">Email address</label>
                                        </div>
                                        <br>

                                        <div class="form-floating">
                                            <input type="text" name="t3" id="mobile no" class="form-control" placeholder="Mobile No" required>

                                            <label for="mobile no">Mobile No</label>
                                        </div>
                                        <br>

                                        <div class="form-floating">
                                            <input type="text" name="t4" id="city" class="form-control" placeholder="City" required>

                                            <label for="city">City</label>
                                        </div>
                                        <br>
                                        
                                        <div class="form-floating">
                                            <input type="text" name="t5" id="fname" class="form-control" placeholder="First Name" required>

                                            <label for="First Name">First Name</label>
                                        </div>
                                        <br>

                                        <div class="form-floating">
                                            <input type="text" name="t6" id="lname" class="form-control" placeholder="Last Name" required>

                                            <label for="mobile no">Last Name</label>
                                        </div>
                                        <button type="submit" class="btn custom-btn form-control mt-4 mb-3">
                                            Create account
                                        </button>

                                        <p class="text-center">Already have an account? Please <a href="login.html">Sign In</a></p>
                                        
                                    </form> -->
                                    <center>
                                        <!-- <h2> View Billing Details </h2> -->
                                      <table border=2 cellpadding="10" cellspacing="4">
                                       <tr>
                                        <td> Order id </td>
                                        <td> Billing id </td>
                                        <td> Product id </td>
                                        <td> Quantity </td>
                                        <td> Unit Price </td>
                                        <td> Date </td>
                                        <td> Total Amount </td>
                                        
                                        <td>Delete</td>
                                        </tr>
                                    
                                    <%@include file="dbcon.jsp" %>
                                    <%
                                       ResultSet rs=stmt.executeQuery("select * from billingdetails");
                                       while(rs.next())
                                      {
                                    %>
                                       
                                        <tr>
                                          <td> <%=rs.getString(1) %></td>
                                          <td> <%=rs.getString(2) %></td>
                                          <td> <%=rs.getString(3) %></td>
                                          <td> <%=rs.getString(4) %></td>
                                          <td> <%=rs.getString(5) %></td>
                                          <td> <%=rs.getString(6) %></td>
                                          <td> <%=rs.getString(7) %></td>
                                          
                        
                                          <td><a href="delbilling.jsp?order_id=<%=rs.getString(1)%>"> Delete </a> </td>
                                        </tr>
                                    <%
                                      }
                                    %>
                                    
                                    
                                      </table>
                                      </center>
                                </div>
                            </div>
                            
                        </div>

                    </div>
                </div>
            </section>

        </main>

<footer class="site-footer">
    <h5 class="site-footer h5">Copyright &copy; 2025 Fashion Design.</h5>
</footer>
        <%-- <footer class="site-footer">

            <h5 class="site-footer h5">Copyright © 2025 Fashion Design</h5>
            <!-- <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-10 me-auto mb-4">
                        <h4 class="text-white mb-3"><a href="index.html">Little</a> Fashion</h4>
                        <p class="copyright-text text-muted mt-lg-5 mb-4 mb-lg-0">Copyright © 2022 <strong>Little Fashion</strong></p>
                        <br>
                        <p class="copyright-text">Designed by <a href="https://www.tooplate.com/" target="_blank">Tooplate</a></p>
                    </div>



                </div>
            </div> -->
        </footer> --%>

    

        <!-- JAVASCRIPT FILES -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/Headroom.js"></script>
        <script src="js/jQuery.headroom.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/custom.js"></script>

    </body>
</html>
