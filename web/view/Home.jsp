<!--Slider-->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="./images/womenBanner.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="./images/menBanner.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- Categories section -->
<a name="men">
<section class="my-5" >
    <div class="container">
      <header class="text-center">
        <h3 class="text-uppercase mb-5">Shop for Mens</h3>
      </header>
      <div class="row">
        <!-- product-->
        <div class="col-lg-3 offset-lg-2 col-md-4 col-6"  ng-repeat="d in mendata">
            <div class="product">
              <div class="product-image">
                  <div class="ribbon ribbon-info">{{d.CategoryName}}</div><img class="img-fluid" src="./images/fifthproduct1.jpg"product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="#category/{{d.id}}"></a>
                    <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="#category/{{d.id}}"><i class="fa-search fa"></i><span class="btn-buy-label ms-2" >View</span></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
    </div>
  </section>
    </a>
<a name="woman">
    <div class="row">&nbsp;</div>
  <section class="my-5">
    <div class="container">
      <header class="text-center">
        <h3 class="text-uppercase mb-5">Shop For Woman</h3>
      </header>
      <div class="row">
        <!-- product-->
        <div class="col-lg-3 offset-lg-2 col-md-4 col-6" ng-repeat="d in womendata">
          <div class="product">
            <div class="product-image">
                <div class="ribbon ribbon-info">{{d.CategoryName}}</div><img class="img-fluid" src="./images/sixthproduct1.jpg" alt="product"/>
              <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="#!category/{{d.id}}"></a>
                <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="#!category/{{d.id}}"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /product-->
      </div>
    </div>
  </section>
    </a>

  <!-- New Section -->
  <a name="new">
              <div class="row">&nbsp;</div>

  <section class="my-5">
    <div class="container">
      <header class="text-center">
        <h3 class="text-uppercase mb-5">Newest Collection</h3>
      </header>
      <div class="row">
        <!-- product-->
        <div class="col-lg-3 col-md-4 col-6">
          <div class="product">
            <div class="product-image">
              <div class="ribbon ribbon-info">Fresh</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/serrah-galos-494312-unsplash.jpg" alt="product"/>
              <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.jsp"></a>
                <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.jsp"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                </div>
              </div>
            </div>
            <div class="py-2">
              <p class="text-muted text-sm mb-1">Jackets</p>
              <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.jsp">White Tee</a></h3><span class="text-muted">$40.00</span>
            </div>
          </div>
        </div>
        <!-- /product-->
        <!-- product-->
        <div class="col-lg-3 col-md-4 col-6">
          <div class="product">
            <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/kyle-loftus-590881-unsplash.jpg" alt="product"/>
              <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.jsp"></a>
                <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.jsp"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                </div>
              </div>
            </div>
            <div class="py-2">
              <p class="text-muted text-sm mb-1">Denim</p>
              <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.jsp">Black blouse</a></h3><span class="text-muted">$40.00</span>
            </div>
          </div>
        </div>
        <!-- /product-->
        <!-- product-->
        <div class="col-lg-3 col-md-4 col-6">
          <div class="product">
            <div class="product-image">
              <div class="ribbon ribbon-primary">Sale</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/kyle-loftus-596319-unsplash.jpg" alt="product"/>
              <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.jsp"></a>
                <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.jsp"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                </div>
              </div>
            </div>
            <div class="py-2">
              <p class="text-muted text-sm mb-1">Accessories</p>
              <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.jsp">College jacket</a></h3><span class="text-muted">$40.00</span>
            </div>
          </div>
        </div>
        <!-- /product-->
        <!-- product-->
        <div class="col-lg-3 col-md-4 col-6">
          <div class="product">
            <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/ethan-haddox-484912-unsplash.jpg" alt="product"/>
              <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.jsp"></a>
                <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.jsp"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                </div>
              </div>
            </div>
            <div class="py-2">
              <p class="text-muted text-sm mb-1">Denim</p>
              <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.jsp">Carrot-fit jeans</a></h3><span class="text-muted">$40.00</span>
            </div>
          </div>
        </div>
        <!-- /product-->
        
      </div>
    </div>
  </section>
  </a>
