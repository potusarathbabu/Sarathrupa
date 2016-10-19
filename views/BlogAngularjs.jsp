<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog Page</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>

<script>
var app = angular.module('myApp', []);
 
function MyController($scope, $http) {

	 $scope.sortType = 'name'; // set the default sort type
	  $scope.sortReverse = false;  // set the default sort order
	  $scope.searchBTitle = '';
	  
        $scope.getDataFromServer = function() {
                $http({
                        method : 'GET',
                        url : 'GsonCon'
                }).success(function(data, status, headers, config) {
                        $scope.blog = data;  
                }).error(function(data, status, headers, config) {
                        // called asynchronously if an error occurs
                        // or server returns response with an error status.
                });
        };
};



</script>
</head>
<body>
<style>
div {
    transition: all linear 0.5s;
    background-color: Royalblue;
    height: 100px;
}
.ng-hide {
    height: 0;
}
</style>

<div class="container" ng-app="myApp" ng-controller="MyController" ng-init="getDataFromServer()">
  
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search Blog Name" ng-model="searchBTitle">      
       </div>      
    </div>
  </form>
  
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
      <td>
          <a href="#" ng-click="sortType = 'blogid'; sortReverse = !sortReverse">
            Blog Id 
            <span ng-show="sortType == 'blogid' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'blogid' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        
        <td>
          <a href="#" ng-click="sortType = 'blogname'; sortReverse = !sortReverse">
            Blog Name 
            <span ng-show="sortType == 'blogname' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'blogname' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'content'; sortReverse = !sortReverse">
          Content 
            <span ng-show="sortType == 'content' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'content' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'username'; sortReverse = !sortReverse">
          User Name
            <span ng-show="sortType == 'username' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'username' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'creationDate'; sortReverse = !sortReverse">
          Creation Date
            <span ng-show="sortType == 'creationDate' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'creationDate' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="b1 in blog | orderBy:sortType:sortReverse | filter:searchBTitle">
           		<td>{{b1.blogid}}</td>
           		<td>{{b1.blogname}}</td>
           		<td>{{b1.content}}</td>
           		<td>{{b1.username}}</td>
           		<td>{{b1.creationDate}}</td>
           	
      </tr>
    </tbody>
    
  </table>
  
</div>

</body>
</html>