<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<section class="product-details">
      <div class="container">
        <div class="row">
            <div class="col-lg-6 col-xl-7 pt-4 order-2 order-lg-1" ng-repeat="d in mydata">
              <a class="glightbox d-block mb-4" href="img/product/kyle-loftus-596319-unsplash-cropped-2.jpg" data-title="Modern Jacket 1 - Caption text" data-gallery="product-gallery">
                  <div data-bs-toggle="zoom" ><img class="img-fluid" src="./images/{{d.image}}"></div></a><a class="glightbox d-block mb-4" href="img/product/kyle-loftus-596319-unsplash-cropped.jpg" data-title="Modern Jacket 2 - Caption text" data-gallery="product-gallery">
                      <div data-bs-toggle="zoom" ><img class="img-fluid" src="./images/{{d.image2}}" alt="{{d.image2}}"></div></a><a class="glightbox d-block mb-4" href="img/product/kyle-loftus-596319-unsplash-cropped-.jpg" data-title="Modern Jacket 3 - Caption text" data-gallery="product-gallery">
                          <div data-bs-toggle="zoom" ><img class="img-fluid" src="./images/{{d.image3}}" alt="{{d.image3}}"></div></a>
          </div>
          <div class="col-lg-6 col-xl-5 ps-lg-5 pt-4 order-1 order-lg-2 "ng-repeat="d in mydata">
            <ul class="breadcrumb undefined">
              <li class="breadcrumb-item"><a href="/">Home</a></li>
              <li class="breadcrumb-item"><a href="#/category/{{d.id}}">{{d.CategoryName}}</a></li>
              <li class="breadcrumb-item active">{{d.ProductName}}</li>
            </ul>
            <div class="sticky-top" style="top: 100px;">
              <h1 class="h2 mb-4">{{d.ProductName}}</h1>
              <div class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
                <ul class="list-inline mb-2 mb-sm-0">
                  <li class="list-inline-item h4 fw-light mb-0">₹{{d.ProductPrice}}</li>
                  <li class="list-inline-item text-muted fw-light"> 
                  </li>
                </ul>
                
              </div>
              <p class="mb-4 text-muted">{{d.ProductDescription}}</p>
              <form action="">
                <div class="row">
                  <div class="col-sm-6 col-lg-12 detail-option mb-3">
                    <h6 class="detail-option-heading">Size <span>(required)</span></h6>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="size_0"> Small
                      <input class="input-invisible" type="radio" name="size" value="value_0" id="size_0" required>
                    </label>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="size_1"> Medium
                      <input class="input-invisible" type="radio" name="size" value="value_1" id="size_1" required>
                    </label>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="size_2"> Large
                      <input class="input-invisible" type="radio" name="size" value="value_2" id="size_2" required>
                    </label>
                  </div>
                  <div class="col-12 detail-option mb-3">
                   
                  </div>
                  <div class="col-12 col-lg-6 detail-option mb-5">
                    <label class="detail-option-heading fw-bold">Items <span>(required)</span></label>
                    <input class="form-control detail-quantity" name="items" type="number" value="1">
                  </div>
                </div>
                <ul class="list-inline">
                  <li class="list-inline-item">
                    <button class="btn btn-dark btn-lg mb-1" type="submit"> <i class="fa fa-shopping-cart me-2"></i>Add to Cart</button>
                  </li>
                  <li class="list-inline-item"><a class="btn btn-outline-secondary mb-1" > <i class="far fa-heart me-2"></i>Add to wishlist</a></li>
                </ul>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="mt-5">
      <div class="container">
        <ul class="nav nav-tabs flex-column flex-sm-row" role="tablist">
          <li class="nav-item"><a class="nav-link detail-nav-link active" data-bs-toggle="tab" href="#description" role="tab">Description</a></li>
          <li class="nav-item"><a class="nav-link detail-nav-link" data-bs-toggle="tab" href="#reviews" role="tab">Reviews</a></li>
        </ul>
        <div class="tab-content py-4">
          <div class="tab-pane active px-3" id="description" role="tabpanel" ng-repeat="d in mydata">
            <p class="text-muted ">{{d.ProductDescription}}</p>
          </div>
          <div class="tab-pane" id="reviews" role="tabpanel">
            <div class="row mb-5">
              <div class="col-lg-10 col-xl-9">
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/person-1.jpg" alt="Han Solo"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Han Solo</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i>
                    </div>
                    <p class="text-muted">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections     </p>
                  </div>
                </div>
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/person-2.jpg" alt="Luke Skywalker"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Luke Skywalker</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                    </div>
                    <p class="text-muted">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. &quot;What's happened to me?&quot; he thought. It wasn't a dream.     </p>
                  </div>
                </div>
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/person-3.jpg" alt="Princess Leia"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Princess Leia</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-gray-200"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                    </div>
                    <p class="text-muted">His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table.     </p>
                  </div>
                </div>
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/person-4.jpg" alt="Jabba Hut"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Jabba Hut</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i>
                    </div>
                    <p class="text-muted">Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.     </p>
                  </div>
                </div>
                <div class="py-5 px-3">
                  <h5 class="text-uppercase mb-4">Leave a review</h5>
                  <form class="form" id="contact-form" method="post" action="contact.php">
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="mb-4">
                          <label class="form-label" for="name">Your name *</label>
                          <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="mb-4">
                          <label class="form-label" for="rating">Your rating *</label>
                          <select class="custom-select focus-shadow-0" name="rating" id="rating">
                            <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                            <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                            <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                            <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                            <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="mb-4">
                      <label class="form-label" for="email">Your email *</label>
                      <input class="form-control" type="email" name="email" id="email" placeholder="Enter your  email" required="required">
                    </div>
                    <div class="mb-4">
                      <label class="form-label" for="review">Review text *</label>
                      <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
                    </div>
                    <button class="btn btn-outline-dark" type="submit">Post review</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="my-5">
      <div class="container">
        <header class="text-center">
          <h6 class="text-uppercase mb-5">You might also like</h6>
        </header>
        <div class="row">
            <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image">
                  <div class="ribbon ribbon-info">Fresh</div><img class="img-fluid" src="../images/{{d.image}}" alt="{{d.image}}"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="#/detail/{{d.productid}}"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="#/detail/{{d.productid}}"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">{{d.CategoryName}}</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="">{{d.ProductName}}</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
           
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/kyle-loftus-590881-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href=""></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href=""><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Denim</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="">Black blouse</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
           
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image">
                <div class="ribbon ribbon-primary">Sale</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/kyle-loftus-596319-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href=""></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href=""><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Accessories</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="">College jacket</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/ethan-haddox-484912-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href=""></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href=""><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Denim</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="">Carrot-fit jeans</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/serrah-galos-494231-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href=""></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href=""><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Jackets</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="">Striped T-Shirt</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
           
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0/img/product/averie-woodard-319832-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href=""></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href=""><i class="fa-search fa"></i><span class="btn-buy-label ms-2">View</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Shirts</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="">Short top</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
           
        </div>
      </div>
    </section>
