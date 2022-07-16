<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Auctions</title>
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
	          <a class="nav-link active" href="#">View Auctions</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<%@ page import="com.cs336.pkg.Auction" %>
	<%@ page import="com.cs336.pkg.Server" %>
	<%if(Server.auctions.isEmpty()){%>
	<h1 class="display-6 mx-5">No Auctions Yet</h1>
	<%}%>
	<%int i = 0; %>
	<%  for(Auction a:Server.auctions) { %>
		<%++i; %>
   		<div class="card mx-5 my-5">
		  <div class="card-body">
		    <h4 class="card-title"><%=a.getShoe().getName()%></h4>
		    <p class="card-text">Current Price: $<%=a.getCurPrice()%></p>
		    <script>
			// Set the date we're counting down to
			var countDownDate = new Date("<%=a.getCloseDate()%>").getTime();
			
			// Update the count down every 1 second
			var x = setInterval(function() {
			
			  // Get today's date and time
			  var now = new Date().getTime();
			    
			  // Find the distance between now and the count down date
			  var distance = countDownDate - now;
			    
			  // Time calculations for days, hours, minutes and seconds
			  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
			  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
			  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
			    
			  // Output the result in an element with id="demo"
			  document.getElementById("timer<%=i%>").innerHTML = days + "d " + hours + "h "
			  + minutes + "m " + seconds + "s ";
			    
			  // If the count down is over, write some text 
			  if (distance < 0) {
			    clearInterval(x);
			    document.getElementById("timer<%=i%>").innerHTML = "Auction Ended";
			    document.getElementById("text").value = "Done";
			    alert("Auction for <%=a.getShoe().getName()%> has ended")
			  }
			}, 1000);
			</script>
			<script type="text/javascript">
			function subform(){
				if (document.getElementById("timer<%=i%>").innerHTML != "Auction Ended") {
				    document.getElementById('form1').action = 'aucredir';
				    document.getElementById('form1').submit();
				}
				else {
					document.getElementById('form1').action = 'resredir';
				    document.getElementById('form1').submit();
				}
			}
			</script>
		    <form action="" id="form1" method="post" onsubmit="subform()">
		    <p class="card-text" id="timer<%=i%>"></p>
		    <input type="hidden" name="text" value="" id="text" />
		    <hr/>
		    <input type="hidden" name="id" value="<%=a.getId() %>" />
		    <input type="submit" class="card-button" value="Place a Bid" />
		    </form>
		  </div>
		</div>
  	<% } %>
</body>
</html>