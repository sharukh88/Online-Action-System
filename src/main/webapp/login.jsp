<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<style>
			html {
			  background-color: #56baed;
			}
			
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

			h2 {
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
			  margin: 5px 20px 10px 20px;
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
			
			input[type=text], input[type=password], input[type=email] {
			  background-color: #f6f6f6;
			  border: none;
			  color: #0d0d0d;
			  padding: 15px 32px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 16px;
			  margin: 5px;
			  width: 85%;
			  border: 2px solid #f6f6f6;
			  -webkit-transition: all 0.5s ease-in-out;
			  -moz-transition: all 0.5s ease-in-out;
			  -ms-transition: all 0.5s ease-in-out;
			  -o-transition: all 0.5s ease-in-out;
			  transition: all 0.5s ease-in-out;
			  -webkit-border-radius: 5px 5px 5px 5px;
			  border-radius: 5px 5px 5px 5px;
			}
			
			input[type=text]:focus , input[type=password]:focus, input[type=email]:focus {
			  background-color: #fff;
			  border-bottom: 2px solid #5fbae9;
			}
			
			input[type=text]:placeholder, input[type=password]:placeholder, input[type=email]:placeholder {
			  color: #cccccc;
			}
		</style>
	</head>
	
	<body>
		<div class="wrapper">
			<div id="formContent">
			  <h2>Sign In</h2>
			  <form action="login" method="post">
			    <input type="text" name="username" placeholder = "Username" required/>
			    <input type="password" name="password" placeholder = "Password" required/><br/>
			   <input type="submit" value="Log in" /><br/>
			   <a href="signup.jsp">Sign Up</a><br/>
			   <br>${message}
			  </form>
			  
			  <div id="formFooter">
			    <a class="underlineHover" href="#">Forgot Password?</a>
			  </div>
		 	</div>
		 </div>
	</body>
	</html>