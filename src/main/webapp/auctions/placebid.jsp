<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Place Bid</title>
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
	<%User user = (User)request.getSession().getAttribute("user"); %>
	<script defer>
		<%
		if(user.getMyBids() != null){
			for(Auction a : user.getMyBids()) {
				if(a.getId() == user.getCurAuction().getId() && user.getCurAuction().getBuyer().getUsername() != user.getUsername()) {		
		%>
			alert("Someone has outbid you for the following shoes: <%=user.getCurAuction().getShoe().getName()%>");
		<% break;
				}
			}
		}
		%>
	</script>
	
	<div class="card mx-5 my-5">
	  <div class="card-body">
	    <h4 class="card-title"><%=user.getCurAuction().getShoe().getName()%></h4>
	    <hr/>
	    <p class="card-text">Brand: <%=user.getCurAuction().getShoe().getBrand()%></p>
	    <p class="card-text">Type: <%=user.getCurAuction().getShoe().getType()%></p>
	    <p class="card-text">Colors: <%=user.getCurAuction().getShoe().getColors()%></p>
	    <p class="card-text">Size: <%=user.getCurAuction().getShoe().getSize()%></p>
	    <hr/>
	    <p class="card-text">Current Price: $<%=user.getCurAuction().getCurPrice()%></p>
	    <p class="card-text">Number of Bids: <%=user.getCurAuction().getBidNum()%></p>
	    <%if(user.getCurAuction().getBuyer() != null) {%>
	    <p class="card-text">Highest Bidder: <%=user.getCurAuction().getBuyer().getUsername()%></p>
	    <% } else{  %>
	    <p class="card-text">Highest Bidder: No Bidders Yet</p>
	    <%} %>
	    <hr/>
	    <form action="setlim" method="post">
	    	<label for="lim" class="form-label">Max Bid Limit:</label>
			  <div class="mb-3 mt-3 input-group">
			    <span class="input-group-text">$</span>
			    <input type="number" class="form-control" id="lim" name="lim" min="<%=user.getCurAuction().getCurPrice() + user.getCurAuction().getInc()%>" step="<%=user.getCurAuction().getInc()%>">
			  </div>
			  <button type="submit" class="btn btn-light" id="max" onclick="alert('Limit set');">Set Bid Limit</button>
		</form>
	    <hr/>
	    <form action="placebid" method="post">
	    <label for="bid" class="form-label">Bid:</label>
		  <div class="mb-3 mt-3 input-group">
		    <span class="input-group-text">$</span>
		    <%if(user.getLimit() != -1) { %>
		    <input type="number" class="form-control" id="bid" name="bid" min="<%=user.getCurAuction().getCurPrice() + user.getCurAuction().getInc()%>" step="<%=user.getCurAuction().getInc()%>" value="<%=user.getCurAuction().getCurPrice() + user.getCurAuction().getInc()%>" max="<%=user.getLimit()%>">
		    <%}else{ %>
		    <input type="number" class="form-control" id="bid" name="bid" min="<%=user.getCurAuction().getCurPrice() + user.getCurAuction().getInc()%>" step="<%=user.getCurAuction().getInc()%>" value="<%=user.getCurAuction().getCurPrice() + user.getCurAuction().getInc()%>">
		    <%} %>
		  </div>
		  <button type="submit" class="btn btn-primary">Place Bid</button>
		</form>
	    
	  </div>
	</div>
</body>
</html>