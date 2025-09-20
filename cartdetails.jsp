<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Fashion Dessign</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">

        <link rel="stylesheet" href="css/slick.css"/>

        <link href="css/tooplate-little-fashion.css" rel="stylesheet">

        <script type="text/javascript">
            function preventBack() {
                window.history.forward(); 
            }
            
            setTimeout("preventBack()", 0);
            
            window.onunload = function () { null };
        </script>
<!--

Tooplate 2127 Little Fashion

https://www.tooplate.com/view/2127-little-fashion

-->
<%
  String prodid,uname;

 //String username=session.getAttribute("uname").toString();
prodid=request.getParameter("pid");
uname=session.getAttribute("uname").toString();

String price=request.getParameter("price");
%>
<%@page import="java.util.*" %>
<%

String img=request.getParameter("image");
session.setAttribute("img",img);

  int dd,mm,yy;
Date d1=new Date();
 dd=d1.getDate();
 mm=d1.getMonth()+1;
 yy=d1.getYear()+1900;
String ss=dd+"-"+mm+"-"+yy;
%>
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
                                <a class="nav-link" href="customer_home.jsp">Home</a>
                            </li>
                        
                            <li class="nav-item">
                                <a class="nav-link" href="customerviewprod.jsp">Products</a>
                            </li>
                                                
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

                            <h1 class="hero-title text-center mb-5">Cart Details</h1>

                            <div class="row">
                                <div class="col-lg-8 col-11 mx-auto">
                                    <form action="insertcart.jsp" method="post" >

                                        <!-- <div class="form-floating mb-4 p-0">
                                            <input type="text" name="t1" id="pid" class="form-control" placeholder="Cart id" required>

                                            <label for="pid">Cart id</label>
                                        </div> -->

                                        <div class="form-floating p-0"><img src="upload/<%=img %>" width=200 height=200 />
                                            <br><br>
                                            <h6 style="font-size: medium;">Product Id</h6>
                                            <input type="text" name="t2" id="pid" class="form-control" placeholder="Product id" required readonly value=<%=prodid %>>

                                             <label for="sname"></label>

                                        </div>
                                        <br> 
                                        <h6 style="font-size: medium;">User id</h6>
                                        <div class="form-floating p-0">
                                            <input type="text" name="t3" id="size" class="form-control" placeholder="User id" required readonly value=<%=uname %> >

                                            <label for="size">User id</label>
                                        </div>
                                        <br>

                                        <h6 style="font-size: medium;">Order date</h6>
                                        <div class="form-floating p-0">
                                            <input type="text" name="t4" id="fromDate" class="form-control" readonly value=<%=ss%>  >

                                            <label for="price">Order Date</label>
                                        </div>
                                        <br>

                                        <h6 style="font-size: medium;">Deliver date</h6>
                                        <div class="form-floating p-0">
                                            <input type="Date" name="t5" id="todate"  class="form-control" required onchange="calculateDays()" >

                                            <label for="rating">Deliver Date</label>
                                        </div>
                                        <script>
                                            // Set the minimum date to be one day after today's date
                                            var today = new Date();
                                            today.setDate(today.getDate() + 1); // Increment the date by 1
                                            var tomorrow = today.toISOString().split('T')[0]; // Format to YYYY-MM-DD
                                        
                                            document.getElementById('todate').setAttribute('min', tomorrow);
                                        </script>
                                        
                                        <br>

                                        <h6 style="font-size: medium;">Size</h6>
                                        <div class="form-floating p-0">
                                            <select name="t6" id="ss" class="form-control" required>
                                                <option value="" disabled selected></option>
                                                <option value="S">S</option>
                                                <option value="M">M</option>
                                                <option value="L">L</option>
                                                <option value="XL">XL</option>
                                                <option value="XXL">XXL</option>
                                            </select>
                                            <label for="size">Size</label>
                                        </div>
                                        <br>
                                        
                                        <h6 style="font-size: medium;">Price</h6>
                                        <div class="form-floating p-0">
                                            <input type="text" name="t7" id="price" class="form-control" placeholder="Price" readonly value=<%=price %> >

                                            <label for="price">Price</label>
                                        </div><br>

                                        
                                        <h6 style="font-size: medium;">Quantity</h6>
                                        <div class="form-floating p-0">
                                            <input type="number" name="t8" id="qty" class="form-control" min="1" max="10"   placeholder="Enter Quantity" required  onchange="caltotal()">

                                            <label for="add">Qty</label>
                                        </div>
                                        <br>

                                        <h6 style="font-size: medium;">Total Amount</h6>
					                    <div class="form-floating p-0">
                                            <input type="text" name="t9" id="totalamt" class="form-control"  >

                                            <label for="add">Total Amount</label>
                                        </div>

                                        <br> 

                                        <button type="submit" class="btn custom-btn form-control mt-4 mb-3">
                                            Buy
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
    <h5 class="site-footer h5">Copyright &copy; 2025 Fashion Design</h5>
</footer>
        

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/Headroom.js"></script>
        <script src="js/jQuery.headroom.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/custom.js"></script>

    </body>

<script>

  function caltotal()
  {

       const qty = document.getElementById('qty').value;
      const amt = document.getElementById('price').value;

     const total=qty*amt;
document.getElementById('totalamt').value =total;
console.log(total);

  }
    function calculateDays() {
      const fromDate = document.getElementById('fromdate').value;
      const toDate = document.getElementById('todate').value;
    

      if (fromDate && toDate) {
        const from = new Date(fromDate);
        const to = new Date(toDate);

        const differenceInTime = to - from;
        const differenceInDays = differenceInTime / (1000 * 3600 * 24);
          alert("hello");

        document.getElementById('totalday').value = differenceInDays;

        
      }
    }
  </script>


</html>
