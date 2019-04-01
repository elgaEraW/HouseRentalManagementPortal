<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
	<title>
	Sign Up	
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
	 <link rel="stylesheet" href="C:\Users\Dev\Documents\workspace-spring-tool-suite-4-4.1.1.RELEASE\HouseRentalManagementPortal\src\main\webapp\bootstrap-4.3.1-dist\css\bootstrap.min.css">

	 <script>
	 	function validateEmail(){
	 		var email;

        email = document.getElementById("textEmail").value;
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(textEmail.value) == false) 
        {
            alert('Invalid Email Address');
            return false;
        }

        return true;

}
	 </script>
</head>

<body>
	<form action="/HouseRentalManagementPortal/Register" method = "post">
		<div class="container">
			<div class="raw">
				<div class="col-md-6 offset-md-3">
			<h1>Sign Up</h1>
			<p>Please Enter Details to create account</p>



	<label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter name" name="name" required autocomplete="off">
    		
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" title="Enter Valid Email" id="textEmail" autocomplete="off">

    <label for="psw"><b>Password</b></label>
    <input type="password" title="Password must contain at least 6 characters, including UPPER/lowercase and numbers" placeholder="Enter Password" name="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" autocomplete="off">
   
   		<div class="clearfix">
      <button type="submit" class="signupbtn" onclick="validateEmail()">Sign Up</button>
    	</div>
    			</div>
			</div>
	</div>
	<br>
	<p>Already Have an account?<a href="http://localhost:8080/HouseRentalManagementPortal/jsp/login.jsp">Sign In</a></p>
	
	</form>
</body>
</html>