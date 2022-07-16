<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Results</title>
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
	          <a class="nav-link" href="sell.jsp">Create Auction</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="buy.jsp">View Auctions</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<%@ page import="com.cs336.pkg.Auction" %>
	<%@ page import="com.cs336.pkg.User" %>
	<%
	User user = (User)request.getSession().getAttribute("user");
	%>
	
	<div class="card mx-5 my-5">
	  <div class="card-body">
	    <h4 class="card-title"><%=user.getCurAuction().getShoe().getName()%></h4>
	    <hr/>
	    <%if(user.getCurAuction().getMinSellPrice() > user.getCurAuction().getCurPrice()){ %>
	    <p class="card-text">The auction price did not meet the seller's goal. No winners</p>
	    <%} else{%>
	    <p class="card-text">Winner of the Auction: <%=user.getCurAuction().getBuyer().getUsername()%></p>
	    <%} %>
	    <hr/>
	    
	  </div>
	</div>
</body>
</html>