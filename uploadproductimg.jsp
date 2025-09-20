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
        
<!--

Tooplate 2127 Little Fashion

https://www.tooplate.com/view/2127-little-fashion

-->
<script type="text/javascript">
    function preventBack() {
        window.history.forward(); 
    }
    
    setTimeout("preventBack()", 0);
    
    window.onunload = function () { null };
</script>
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
                                <a class="nav-link" href="">Productdetails</a>
                            </li>

                            <!-- <li class="nav-item">
                                <a class="nav-link" href="userlogin.html">Sign in</a>
                            </li> -->

                            <!--<li class="nav-item">
                                <a class="nav-link" href="products.html">Products</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="faq.html">FAQs</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link active" href="contact.html">Contact</a>
                            </li> -->
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

                            <h1 class="hero-title text-center mb-5">Product Details</h1>

                            <div class="row">
                                <div class="col-lg-8 col-11 mx-auto">
                                    <%@include file="dbcon.jsp" %>

<%
ResultSet rs=stmt.executeQuery("select max(product_id) from productdetails" );
rs.next();

String pid=rs.getString(1);

//int p=Integer.parseInt(pid);
//p=p-1;
session.setAttribute("pid",pid);



//int k=stmt.executeUpdate("delete from productdetails where product_id='"+pid+"' ");


%>
                                    <!-- <form action="insertproduct.jsp" method="post"  -->
                                     <form action="uploadimg.jsp" method="post"  enctype="multipart/form-data" > 


                                        <!-- <div class="form-floating mb-4 p-0">
                                            <input type="text" name="t1" id="pid" class="form-control" placeholder="Product id" required>

                                            <label for="pid">Product id</label>
                                        </div> -->

                                        <div class="form-floating p-0">
                                            <input type="text"  name="t1" class="form-control" placeholder="Product id" required value=<%=pid %>>

                                            <label for="sname">Product id</label>
                                        </div>
                                        <br> 

                                        <div class="form-floating p-0">
                                            <input type="file" name="file" class="form-control" placeholder="Select image" required>

                                            <label for="size"></label>
                                        </div>
                                        <br>

                                       
                                        <button type="submit" class="btn custom-btn form-control mt-4 mb-3">
                                            Save
                                        </button>

                                        <!-- <p class="text-center">Don’t have an account? <a href="userdetails.html">Create One</a></p> -->

                                    </form>
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
</html>
