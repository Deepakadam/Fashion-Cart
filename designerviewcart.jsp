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

                            <h1 class="hero-title text-center mb-5">View Cart </h1>

                            
                            <div class="row">
                                <div class="col-lg-8 col-11 mx-auto">
                                    
                                    <center>
                                        <table border=2 cellpadding="10" cellspacing="4">
                                         <tr>
                                          <td> Cart id </td>
                                          
                                          <td> Product id </td>
                                          <td> User id </td>
                                          <td> Order Date </td>
                                          <td> Deliver Date </td>
                                          
                                          <td> Size</td>
                                          <td>Delete</td>
                                          </tr>
                                      
                                      <%@include file="dbcon.jsp" %>
                                      <%
                                    
                                         ResultSet rs=stmt.executeQuery("select * from cartdetails ");
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
                                            
                                            
                                            <td><a href="delcart.jsp?cart_id=<%=rs.getString(1)%>"> Delete </a> </td>
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
