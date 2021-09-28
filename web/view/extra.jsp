<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

Object data = session.getAttribute("UserID");
int userId = -1;
    
if (data != null)
    userId = Integer.parseInt(data.toString());
%>
<!DOCTYPE html>
<html ng-app="App">
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.1/angular.min.js"></script>

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
       <script>
        
        var app = angular.module('App',[]);
        app.controller('Controller',function($scope,$http){
            $scope.mydata = null;
            $http.get('./getproduct').success(function(data){
            console.log(data);
            $scope.mydata = data;
            console.log(data);
            });
        });
        
    </script>
<!--<script>
  function PostsCtrlAjax($scope, $http) {
    $http({method: 'GET', url: './getproduct'}).success(function(data) {
      $scope.posts = data.; // response data 
    });
  }
</script>-->
    </head>
    <body ng-controller="Controller">
        <div>
            <%
                if (userId != -1)
                    out.println("<h1>Welcome user</h1>");                
            %>
        </div>
        <a href="./login.jsp" >Login</a>
        <a href="./signup.jsp">signup</a>
        <a href="./Admin">Admin Dashboard</a>
        <a href="./whishlist.html">Whislist</a>
        <a href="#" onclick="logOut()">Log out</a>
         <div>
             <table border="1">
      <tr>
        <th>Name</th>
        <th>Description</th>
      </tr>
      <tr ng-repeat="d in mydata">
        <td>{{ d.ProductName }}</td>
        <td>{{ d.ProductDescription }}</td>
      </tr>
    </table>
        </div>
    </body>
</html>

