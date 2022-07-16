<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>BuyMe</title>
	<style>
		
		body {
		  font-family: "Poppins", sans-serif;
		  height: 100vh;
		}
		
		a {
		  color: #92badd;
		  display:inline-block;
		  text-decoration: none;
		  font-weight: 400;
		}
		
		h2 {
		  text-align: center;
		  font-size: 16px;
		  font-weight: 600;
		  text-transform: uppercase;
		  display:inline-block;
		  margin: 40px 8px 10px 8px; 
		  color: #cccccc;
		}
		
		
		
		/* STRUCTURE */
		
		.wrapper {
		  display: flex;
		  align-items: center;
		  flex-direction: column; 
		  justify-content: center;
		  width: 100%;
		  min-height: 100%;
		  padding: 20px;
		}
		#formContent {
		  -webkit-border-radius: 10px 10px 10px 10px;
		  border-radius: 10px 10px 10px 10px;
		  background: #fff;
		  padding: 30px;
		  width: 90%;
		  max-width: 450px;
		  position: relative;
		  padding: 0px;
		  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
		  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
		  text-align: center;
		}
		
		#formFooter {
		  background-color: #f6f6f6;
		  border-top: 1px solid #dce8f1;
		  padding: 25px;
		  text-align: center;
		  -webkit-border-radius: 0 0 10px 10px;
		  border-radius: 0 0 10px 10px;
		}
		
		
		
		/* TABS */
	
		h1 {
		  color: #0d0d0d;
		  border-bottom: 2px solid #5fbae9;
		}
		
		
		
		/* FORM TYPOGRAPHY*/
		
		input[type=button], input[type=submit], input[type=reset]  {
		  background-color: #56baed;
		  border: none;
		  color: white;
		  padding: 15px 80px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  text-transform: uppercase;
		  font-size: 13px;
		  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
		  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
		  -webkit-border-radius: 5px 5px 5px 5px;
		  border-radius: 5px 5px 5px 5px;
		  margin: 5px 20px 40px 20px;
		  -webkit-transition: all 0.3s ease-in-out;
		  -moz-transition: all 0.3s ease-in-out;
		  -ms-transition: all 0.3s ease-in-out;
		  -o-transition: all 0.3s ease-in-out;
		  transition: all 0.3s ease-in-out;
		}
		
		input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
		  background-color: #39ace7;
		}
		
		input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
		  -moz-transform: scale(0.95);
		  -webkit-transform: scale(0.95);
		  -o-transform: scale(0.95);
		  -ms-transform: scale(0.95);
		  transform: scale(0.95);
		}
	</style>
</head>
<body>
	<%//Server s = new Server(); %>
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
	          <a class="nav-link active" aria-current="page" href="#">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="auctions/sell.jsp">Create Auction</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="auctions/buy.jsp">View Auctions</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<%@ page import="com.cs336.pkg.User" %>
	
	<div class="wrapper">
        <h1>Welcome, ${user.username}</h1>
        <br><br>
        <form action="logout" method="get"><input type="submit" value="Log out"/></form>
    </div>
</body>
</html>