<!DOCTYPE html>
<html>
<head>
	<title>
	Log In	
	</title>
	<style>

	@import url('https://fonts.googleapis.com/css?family=Roboto');
		body {font-family: 'Roboto', sans-serif;}
			

			h1
			{
				text-align: center;
				color: black;
				font-size: 50px;
			}

			.container
			{
				padding:50px 0 0 0;

			}
			p
			{
				text-align: center;
			}
			input[type=text], input[type=password] {
			  width: 100%;
			  padding: 10px;
			  margin: 5px 0 25px 0;
			  display: inline-block;
			  border: none;
			  background: #f1f1f1;
			  border-radius: 20px;
			  border: 2px solid lightblue;
			  outline: none;
				}
			.signupbtn
			{
				width: 100%;
				background-color: lightblue;
				border: none;
				padding-top: 10px;	
				padding-bottom: 10px;
				border-radius: 20px;
			}
			.signupbtn:hover
			{
				background-color: #99bb7d;
			}
			.clearfix
			{
				padding-top: 20px;
			}
			


	</style>
	 <link rel="stylesheet" href="C:\Users\meet.gamdha\Desktop\Mini Project\bootstrap-4.3.1-dist\css\bootstrap.min.css">

	
</head>

<body>
	<form action="/HouseRentalManagementPortal/UserLogin" method = "post">
		<div class="container">
			<div class="raw">
				<div class="col-md-6 offset-md-3">
			<h1>Log In</h1>
			<p>Please Enter Details to Log In</p>
			<p>Enter Valid Email and Password!</p>


	
    		
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" autocomplete="off">

    <label for="psw"><b>Password</b></label>
    <input type="password"  name="password" placeholder="Enter Password" required autocomplete="off">
   
   		<div class="clearfix">
      <button type="submit" class="signupbtn" onclick="validateEmail()">Log In</button>
    	</div>
    			</div>
			</div>
	</div>
	<br>
	<p>New user?<a href="http://localhost:8080/HouseRentalManagementPortal/jsp/register.jsp">Sign Up</a></p>
	
	</form>
</body>
</html>