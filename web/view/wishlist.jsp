<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : wishlist
    Created on : 12 Sep, 2021, 1:02:06 PM
    Author     : Vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.urbancloset.servlets.DbConnection"%>
<jsp:include page="header.jsp"/>
<%@ page import="java.sql.*" %>
<script>
        
        var app = angular.module('App',[]);
        app.controller('Controller',function($scope,$http){
            $scope.mydata = null;
            $http.get('./getwishlist').success(function(data){
            console.log(data);
            $scope.mydata = data;
            console.log($scope.mydata);

            });
        });
        
    </script>



        <section class="my-5">

            <div class='container '>
                <div class="row d-flex justify-content-center"  ng-repeat="d in mydata">
                    <div class="col col-lg-2 bg-gray-100">
                        <div style="background-image: url('./images/{{d.image}}');height:30vh; margin:10px ;background-repeat:no-repeat; background-size: contain; background-position: center; "></div>
                    </div>
                    <div class="col col-lg-5 bg-gray-100" style="padding: 0px" >
                        <div class="card" style=" border: none">
                            <div class="card-body bg-gray-100" >
                                <h5 class="card-subtitle text-muted mb-2">{{d.CategoryName}}</h5>
                                <br><h3 class="card-title">{{d.ProductName}}</h3>
                                <h5 class="text-muted">₹{{d.ProductPrice}}</h5>
                                <div class="product-hover-overlay-buttons">
                                <a class="btn btn-dark btn-buy" href="detail.jsp#?pid={{d.productid}}">
                                <i class="fa-search fa"></i>
                                <span class="btn-buy-label ms-2">View</span>
                                </a>
                                </div>
                                <br><a class="card-link" style="cursor:pointer;" >Remove From Wishlist</a>
                            </div>
                        </div>
                    </div>
                    <div class='row'>&nbsp;</div>
                    <div class='row'>&nbsp;</div>
                </div>
            </div>

        </section>
<jsp:include page="footer.jsp"/>
