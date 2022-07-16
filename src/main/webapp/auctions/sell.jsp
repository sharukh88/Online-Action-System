<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Sell Product</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
	    <button
	      class="navbar-toggler"
	      type="button"
	      data-mdb-toggle="collapse"
	      data-mdb-target="#navbarLeftAlignExample"
	      aria-controls="navbarLeftAlignExample"
	      aria-expanded="false"
	      aria-label="Toggle navigation"
	    >
	    <i class="fas fa-bars"></i>
	    </button>
	    <div class="collapse navbar-collapse">
	      <a class="navbar-brand" href="#">BuyMe</a>
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link" aria-current="page" href="../home.jsp">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="#">Create Auction</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="buy.jsp">View Auctions</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	<form action="createauction" method="post" class="mx-5">
	  <div class="form-group">
	    <label for="name">Shoe name:</label>
	    <input type="text" class="form-control" placeholder="" id="name" name="name">
	  </div>
	  <div class="form-group">
	    <label for="brand">Shoe brand:</label>
	    <input type="text" class="form-control" placeholder="" id="brand" name="brand">
	  </div>
	  <div class="form-group">
	    <label for="colors">Shoe colors:</label>
	    <input type="text" class="form-control" placeholder="" id="colors" name="colors">
	  </div>
	  <div class="form-group">
	    <label for="size">Shoe size (US Mens):</label>
	    <input type="number" class="form-control" placeholder="" id="size" name="size">
	  </div>
	  <div class="form-group">
		  <label for="sel1">Shoe type:</label>
		  <select class="form-control" id="sel1" name="type">
		    <option>Sneakers</option>
		    <option>Boots</option>
		    <option>Casual</option>
		    <option>Slippers</option>
		  </select>
	  </div>
	  <div class="form-group">
	    <label for="initPrice">Initial Price:</label>
	    <input type="number" class="form-control" placeholder="" id="initPrice" name = "initPrice">
	  </div>
	  <div class="form-group">
	    <label for="inc">Price Increments:</label>
	    <input type="number" class="form-control" placeholder="" id="inc" name="inc">
	  </div>
	  <div class="form-group">
	    <label for="minSell">Secret Minimum Sell Price:</label>
	    <input type="number" class="form-control" placeholder="" id="minSell" name="minSell">
	  </div>
	  <div class="form-group">
	    <label for="date">Auction End Date and Time:</label>
	    <input type="datetime-local" class="form-control" id="date" name="date">
	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
	</form>
</body>
</html>