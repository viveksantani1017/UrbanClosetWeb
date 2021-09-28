<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Object data = session.getAttribute("UserID");
int userId = -1;
    
if (data != null)
    userId = Integer.parseInt(data.toString());
%>
<!DOCTYPE html>
<html lang="en" ng-app="App">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Price Slider Stylesheets -->
<link rel="stylesheet" href="./css/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet" href="./css/css.css">
<!-- owl carousel-->
<link rel="stylesheet" href="./css/owl.carousel.css">
<!-- Lightbox -->
<link rel="stylesheet" href="./css/glightbox.min.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="./css/theme.css">
<!-- Custom stylesheet - for your changes-->

<link rel="stylesheet" href="./css/bootstrap-grid.min.css">
<!-- Favicon-->
<script src="./js/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css" integrity="sha512-xnP2tOaCJnzp2d2IqKFcxuOiVCbuessxM6wuiolT9eeEJCyy0Vhcwa4zQvdrZNVqlqaxXhHqsSV1Ww7T2jSCUQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/solid.css" integrity="sha384-TbilV5Lbhlwdyc4RuIV/JhD8NR+BfMrvz4BL5QFa2we1hQu6wvREr3v6XSRfCTRp" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/regular.css" integrity="sha384-avJt9MoJH2rB4PKRsJRHZv7yiFZn8LrnXuzvmZoD3fh1aL6aM6s0BBcnCvBe6XSD" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/brands.css" integrity="sha384-7xAnn7Zm3QC1jFjVc1A6v/toepoG3JXboQYzbM0jrPzou9OFXm/fY6Z/XiIebl/k" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/fontawesome.css" integrity="sha384-ozJwkrqb90Oa3ZNb+yKFW2lToAWYdTiF1vt8JiH5ptTGHTGcN7qdoR1F95e0kYyG" crossorigin="anonymous">
<script type="text/javascript">
            
            function logOut()
            {
                $.ajax({
                    url: './users',
                    method: 'get',
                    accepts: 'application/json;charset=utf8',
                    success: function (res)
                    {
                        console.log(res);
                        
                        if (res.status)
                            window.location.href = './index.jsp';
                    }
                });
            }
            
        </script>
<!--        <script>
            window.onload=function(){
            const fav = document.querySelector("#fav");
            let flag=0;
            fav.addEventListener("click",(e)=>
            {   
            console.log(fav);
            var dataId = fav.getAttribute('data-id');
            console.log(dataId);
            
                if(flag==0)
                {
                    fav.children[0].classList.add("bi-heart-fill");
                fav.children[0].classList.remove("bi-heart");
                
                console.log(fav.children[0].getAttribute("style"));
                flag=1;
                }
                else
                {
                    fav.children[0].classList.add("bi-heart");
                fav.children[0].classList.remove("bi-heart-fill");
                flag=0;
                }
            });
            }

        </script>-->
</head>
<body ng-controller="Controller">
    <header class="header">
        <!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-sticky navbar-airy navbar-light bg-white bg-fixed-white">
          <div class="container-fluid">  
              <!-- Navbar Header  --><a class="navbar-brand" href="#/!"><h4 class="d-flex align-items-center">Urban Closet</h4></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
            <!-- Navbar Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
              <ul class="navbar-nav mx-auto">
                  
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle active" id="categoryDropdownMenuLink" href="" data-bs-target="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
                  <div class="dropdown-menu dropdown-menu-animated" aria-labelledby="categoryDropdownMenuLink">
                      <a class="dropdown-item" href="#men">Mens</a>
                      <a class="dropdown-item" href="#woman">Womans</a>
                  </div>
                </li>
                <!-- Megamenu-->
                <!-- /Megamenu end-->
                <!-- Multi level dropdown    -->
                <li class="nav-item dropdown"><a class="nav-link " href="#new" >New</a>
                </li>
                <!-- Multi level dropdown end-->
                <li class="nav-item"><a class="nav-link" href="#footer">Contact</a>
                </li>
                
              </ul>
              <div class="d-flex align-items-center justify-content-between justify-content-lg-end mt-1 mb-2 my-lg-0">
                <!-- Search Button-->
                <div class="nav-item navbar-icon-link" data-bs-toggle="search">
                  <svg class="svg-icon">
                    <use xlink:href="#search-1"> </use>
                  </svg>
                </div>
                
                <!-- User Dropdown-->
                <div class="nav-item dropdown"><a class="navbar-icon-link d-lg-none"href="./login.jsp" > 
                    <svg class="svg-icon">
                      <use xlink:href="#male-user-1"> </use>
                    </svg></a>
                  <div class="d-none d-lg-block"><a class="navbar-icon-link" id="cartdetails"   data-bs-target="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <svg class="svg-icon">
                        <use xlink:href="#male-user-1"> </use>
                      </svg>
                      </a>
                    <div class="dropdown-menu dropdown-menu-animated dropdown-menu-end p-4">
                      <!-- Login-->
                      
                      <%
                          if (userId != -1){

                      %>
                        <div class="dropdown-item"><a href="./login.jsp" style="text-decoration: none; color: black" ><strong class="text-uppercase">User</strong></a></div>
                        <div class="dropdown-item"><a href="./wishlist.jsp" style="text-decoration: none; color: black" ><strong class="text-uppercase">wishlist</strong></a></div>
                      <!--profile-->
                      <div class="dropdown-item"><a href="#" style="text-decoration: none; color: black" ><strong class="text-uppercase">profile</strong></a></div>
                          <%}      
                          else
                          {%>
                          <div class="dropdown-item"><a href="./login.jsp" style="text-decoration: none; color: black" ><strong class="text-uppercase">Login</strong></a></div>
                          <%
                          }
                       %>
                              
                              <!--wishlist-->
                      
                              <!--Logout-->
                              <%
                          if (userId != -1){
                          %>
                          <div class="dropdown-item"><a onclick="logOut();" style="text-decoration: none; color: black; cursor: pointer" ><strong class="text-uppercase">
                      
                              Logout</strong></a></div>
                          <%}%>      
                              
                      
                    </div>
                      
                  </div>
                </div>
                <div class="nav-item dropdown"><a class="navbar-icon-link d-lg-none" href="cart.html"> 
                    <svg class="svg-icon">
                      <use xlink:href="#cart-1"> </use>
                    </svg><span class="text-sm ms-2 ms-lg-0 text-uppercase text-sm fw-bold d-none d-sm-inline d-lg-none">View cart</span></a>
                  <div class="d-none d-lg-block"><a class="navbar-icon-link" id="cartdetails" href="cart.html" data-bs-target="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <svg class="svg-icon">
                        <use xlink:href="#cart-1"> </use>
                      </svg>
                      <div class="navbar-icon-link-badge">0                     </div></a>
                    <div class="dropdown-menu dropdown-menu-animated dropdown-menu-end p-4" aria-labelledby="cartdetails">
                      <div class="navbar-cart-product-wrapper">
                        <!-- cart item-->
                        <div class="navbar-cart-product"> 
                          <div class="d-flex align-items-center"><a href=""><img class="img-fluid navbar-cart-product-image" src="" alt="..."></a>
                            <div class="w-100"><a class="navbar-cart-product-close" ><i class="fa fa-times">                                                   </i></a>
                              <div class="ps-3"> <a class="navbar-cart-product-link">Skull Tee</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                            </div>
                          </div>
                        </div>
                        <!-- cart item-->
                        <div class="navbar-cart-product"> 
                          <div class="d-flex align-items-center"><a href=""><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/product-square-kyle-loftus-596319-unsplash.jpg" alt="..."></a>
                            <div class="w-100"><a class="navbar-cart-product-close" ><i class="fa fa-times">                                                   </i></a>
                              <div class="ps-3"> <a class="navbar-cart-product-link" >Transparent Blouse</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                            </div>
                          </div>
                        </div>
                        <!-- cart item-->
                        <div class="navbar-cart-product"> 
                          <div class="d-flex align-items-center"><a href=""><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/product-square-serrah-galos-494312-unsplash.jpg" alt="..."></a>
                            <div class="w-100"><a class="navbar-cart-product-close" ><i class="fa fa-times">                                                   </i></a>
                              <div class="ps-3"> <a class="navbar-cart-product-link" >White Tee</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- total price-->
                      <div class="navbar-cart-total"><span class="text-uppercase text-muted">Total</span><strong class="text-uppercase">$75.00</strong></div>
                      <!-- buttons-->
                      <div class="d-flex justify-content-between"><a class="btn btn-link text-dark me-3" href="cart.html">View Cart <i class="fa-arrow-right fa"></i></a><a class="btn btn-outline-dark" href="checkout1.html">Checkout</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </nav>
        <!-- /Navbar -->
        <!-- Fullscreen search area-->
        <div class="search-area-wrapper">
          <div class="search-area d-flex align-items-center justify-content-center">
            <div class="close-btn">
              <svg class="svg-icon svg-icon-light w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
            </div>
            <form class="search-area-form" action="#">
              <div class="mb-4 position-relative">
                <input class="search-area-input" type="search" name="search" id="search" placeholder="What are you looking for?">
                <button class="search-area-button" type="submit">
                  <svg class="svg-icon">
                    <use xlink:href="#search-1"> </use>
                  </svg>
                </button>
              </div>
            </form>
          </div>
        </div>
        <!-- /Fullscreen search area-->
      </header>
