<%@include file="Header1.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
    background-image: url("resources/images/pic107.jpg");
}
</style></head>
<center>

<body >
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FriutCart1</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">SpecialOffer</a></li>
          <li><a href="#">Prices</a></li>
          <li><a href="#">Fruithub</a></li>
        </ul>
      </li>
      <li><a href="#">Vegetableshub</a></li>
   <li><a href="#">Drinkshub</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="FruitCart1"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<form action="index"method="post">

<br>
<br>
<br>
<br>
<br>
<br>
<br>

<h1 style=color:white;">Enter login ID:</h1><h3><input type="text"name="txtlogin"></h3>
<h1 style=color:white;">Enter password:</h1><h3><input type="password"name="txtpass"></h3>
<h3><input type="submit"value="login">
<input type="reset"value="cancel"></h3>

</form>
</body>
</center>
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     