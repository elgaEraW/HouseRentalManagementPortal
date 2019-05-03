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


<%
			String s[] = (String[])session.getAttribute("User_Info");
			String g[] = {"ID","House Type", "Address", "BHK", "Floor", "Available After", "Payment Option", "Availability","Price", "Owner",};
%>

<div id="ov">

	<div class="housedetails"><% out.println("Name :: "+s[0]);%></div>
	
	<div class="housedetails"><% out.println("Email :: "+s[1]);%><!--add code between this tag in all features--></div>
	
	<div class="housedetails"><% out.println("Contact No. :: "+s[2]);%></div>
	
	
</div>
