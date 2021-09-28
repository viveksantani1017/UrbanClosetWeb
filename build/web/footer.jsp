<a name="footer">
    <footer class="main-footer" name="footer">
      <!-- Services block-->
      <div class="bg-gray-100 text-dark-700 py-6">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 service-column">
              <svg class="svg-icon service-icon">
                <use xlink:href="#delivery-time-1"> </use>
              </svg>
              <div class="service-text">
                <h6 class="text-uppercase">Free shipping</h6>
              </div>
            </div>
            <div class="col-lg-4 service-column">
              <svg class="svg-icon service-icon">
                <use xlink:href="#money-1"> </use>
              </svg>
              <div class="service-text">
                <h6 class="text-uppercase">Quality guarantee</h6>
              </div>
            </div>
            <div class="col-lg-4 service-column">
              <svg class="svg-icon service-icon">
                <use xlink:href="#customer-support-1"> </use>
              </svg>
              <div class="service-text">
                <h6 class="text-uppercase">020-800-456-747</h6>
                <p class="text-muted fw-light text-sm mb-0">24/7 Available Support</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Main block - menus, subscribe form-->
      <div class="py-6 bg-gray-300 text-muted"> 
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="fw-bold text-uppercase text-lg text-dark mb-3">Urban Closet<span class="text-primary">.</span></div>
              <p>Urban Closet is one of the largest local fashion companies. The customer is at the heart of our unique business model, which includes design, production and sales through our retail network.</p>
              <ul class="list-inline">
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Shop</h6>
              <ul class="list-unstyled">
                <li> <a class="text-muted" href="#woman">For Women</a></li>
                <li> <a class="text-muted" href="#men">For Men</a></li>
                <li> <a class="text-muted" href="#">Shop</a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">Company</h6>
              <ul class="list-unstyled">
                <li> <a class="text-muted" href="login.jsp">Login</a></li>
                <li> <a class="text-muted" href="signup.jsp">Register</a></li>
                <li> <a class="text-muted" href="#">Wishlist</a></li>
                <li> <a class="text-muted" href="#new">Our Products</a></li>
                <li> <a class="text-muted" href="#">Checkouts</a></li>
              </ul>
            </div>
            <div class="col-lg-4">
              <h6 class="text-uppercase text-dark mb-3">Contact Us Via Mail</h6>
              <p class="mb-3"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. At itaque temporibus.</p>
              <form action="#" id="newsletter-form">
                <div class="input-group mb-3">
                  <input class="form-control bg-transparent border-secondary border-end-0"  type="email" placeholder="Your Email Address" aria-label="Your Email Address">
                  <div class="input-group-append">
                    <button class="btn btn-outline-secondary border-start-0" style="border-color:#868e96;" type="submit"> <i class="fa fa-paper-plane text-lg text-dark"></i></button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright section of the footer-->
      <div class="py-4 fw-light  text-gray-300" style="background-color: #5252ed;">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-start">
              <p class="mb-md-0">&copy; 2020 Your company.  All rights reserved.</p>
            </div>
            
          </div>
        </div>
      </div>
    </footer>
  </a>
<!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }
      // this is set to Bootstrapious website as you cannot 
      // inject local SVG sprite (using only 'icons/orion-svg-sprite.a4dea202.svg' path)
      // while using file:// protocol
      // pls don't forget to change to your domain :)
      injectSvgSprite('https://demo.bootstrapious.com/sell/1-2-0/icons/orion-svg-sprite.svg'); 
      
    </script>
  <!-- jQuery-->
  <script src="./js/jquery.min.js"></script>
<!-- Bootstrap JavaScript Bundle (Popper.js included)-->
<script src="./js/bootstrap.bundle.min.js"></script>
<!-- Owl Carousel-->
<script src="./js/owl.carousel.js"></script>
<script src="./js/owl.carousel2.thumbs.min.js"></script>
<!-- NoUI Slider (price slider)-->
<script src="./js/nouislider.min.js"></script>
<!-- Smooth scrolling-->
<script src="./js/smooth-scroll.polyfills.min.js"></script>
<!-- Lightbox gallery-->
<script src="./js/glightbox.min.js"> </script>
<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
<script src="./js/ofi.min.js"></script>
<script>var basePath = ''</script>
<script src="./js/jquery.zoom.min.js"></script>
<script src="./js/jquery.cookie.js"> </script>
<script src="./js/angular-route.js"></script>
<script src="./js/app.js"></script>

  </body>
  </html>