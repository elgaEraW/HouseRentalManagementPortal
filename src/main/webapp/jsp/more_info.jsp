<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
<!DOCTYPE html>
<html>
<head>
	<title>Details</title>
	<style >
		ul {
	  list-style-type: none;
	  margin: 0;
	  padding: 0;
	  overflow: hidden;
	  background-color: #333;
}

li {
  float: left;
}
.add
{
	margin-top: 50px;
	margin-left: 100px;
	font-family: Roboto;
	font-size: 20px;
}


li a {
  display: block;
  color: white;
  text-align: center;
  padding: 15px 25px;
  padding-top: 50px;
  text-decoration: none;
  font-family: Roboto;
  margin-left: 45px;
  font-size: 20px;
}

li a:hover:not(.active) {
  background-color: #111;
}
.title
{
	background-color: black;
	color:white;
	margin-top: 40px;
	padding-top: 10px;
	padding-bottom: 10px;
	text-align: center;
	font-family: Roboto;
}
.housedetails
{
	margin-top: 50px;
	margin-left: 100px;
	font-family: Roboto;
	font-size: 25px;

}
label
{
	margin-top: 10px;
}
.owner_text
{
	margin-top: 20px;
	margin-left: 100px;
	font-family: Roboto;
	font-size: 25px;
}
label
{
	margin-left: 50px;
}
button
		{
			outline: none;
			border:none;
			padding-top: 10px;
			padding-bottom: 10px;
			padding-left: 10px;
			padding-right: 10px;
			margin-right: 10px;
			margin-top: 5px;
			margin-left: 50px;
		}
		button:hover
		{
			background-color: black;
			color: white;
		}	

	</style>

</head>
<body>
<ul>
	<li><a href="#ov">Overview</a></li>
	<li><a href="#ownerdetails">Owner Details</a></li>
</ul>


<%
			String s[] = (String[])session.getAttribute("Info");
			String g[] = {"ID","House Type", "Address", "BHK", "Floor", "Available After", "Payment Option", "Availability","Price", "Owner",};
%>

<div id="ov">

	<div class="housedetails"><% out.println("ID :: "+s[0]);%></div>
	
	<div class="housedetails"><% out.println("Address :: "+s[2]);%><!--add code between this tag in all features--></div>
	
	<div class="housedetails"><% out.println("BHK :: "+s[3]);%></div>
	
	<div class="housedetails"><% out.println("Residental Type :: "+s[1]);%></div>
	
	<div class="housedetails"><% out.println("Floor :: "+s[4]+" floor");%></div>
	
	<div class="housedetails"><% out.println("Price :: "+s[8]+" Rs. per Month");%></div>
	
	<div class="housedetails"><% out.println("Available After :: "+s[5]+" Months");%></div>
	
	<div class="housedetails"><% out.println("Availability :: "+s[7]+" Years");%></div>
	
	<div class="housedetails"><% out.println("Payment Option :: "+s[6]);%></div>
	

</div>
<div id="ownerdetails">
	<div class="title">Owner Details</div>
	<div class="owner_text">
		
			<% out.println("Name :: "+s[9]);%>
		<form action = "/HouseRentalManagementPortal/User_Info" method = "post">
			<button type = submit name = "cd" value = 1>View Contact Details</button>
		</form>
		
		
		
	</div>
</div>
</body>
</html>