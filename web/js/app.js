var app = angular.module("App", ["ngRoute"])
app.config(function($routeProvider) {
  $routeProvider
      .when("/category/:id", {
        templateUrl: "./view/category.jsp",
        controller: "CategoryController",
      })
        .when("/", {
        templateUrl: "./view/Home.jsp",
        controller: "HomeController",
      })
      .when("/detail/:id", {
        templateUrl: "./view/detail.jsp",
        controller: "DetailController",
      })
      
      .otherwise({redierectTo: "/"})
})



app.controller('CategoryController',['$scope','$http','$routeParams',function($scope,$http,$routeParams){
            $scope.mydata = null;
            $scope.wishdata = null;
            $http.get('./getproduct').success(function(data){
            console.log(data);
            console.log($routeParams);

            var data_filter = data.filter(element => element.Categoryid == $routeParams.id);
            console.log(data_filter);
            $scope.mydata = data_filter;
            console.log($scope.mydata);
            });
        }]);       
app.controller('HomeController',['$scope','$http',function($scope,$http){
    $scope.mydata = null;
    $http.get('./getcategory').success(function(data){
    console.log(data);
    var men_filter = data.filter(element=>element.CategoryId == 6);
    $scope.mendata = men_filter;
    var women_filter = data.filter(element=>element.CategoryId==7);
    $scope.womendata = women_filter;
    });
}]);
app.controller('DetailController',['$scope','$http','$routeParams',function($scope,$http,$routeParams){
            $scope.mydata = null;
            $scope.fulldata = null;
            $http.get('./getproduct').success(function(data){
            console.log(data);
            $scope.fulldata = data;
            console.log($scope.fulldata);
            var data_filter = data.filter(element => element.productid == $routeParams.id);
            console.log(data_filter);
            $scope.mydata = data_filter;
            console.log($scope.mydata);
            });
        }]);
//.directive('onFinishRender', function($timeout){
//    return{
//        link:function($scope,element,attr){
//            if($scope.$last ==true)
//            {
//                $timeout(function(){
//                    $scope.$emit('ngRepeatFinished');
//                })
//            }
//        }
//    }
//})