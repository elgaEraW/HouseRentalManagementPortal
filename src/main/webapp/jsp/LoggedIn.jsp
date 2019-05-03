
<html>
<head>
	<title>Home</title>
	<style >
	* {box-sizing: border-box;}
		body
		{
			background-color: white;
		}
		.header
		 {
				overflow: hidden;
				background-color: #6f92b2;
				
				box-shadow: 8px 5px 2px grey;
				border-radius: 3px;

		}
		.header a
		{
			float: left;
			text-decoration: none;
			color: white;
			font-size: 15px;
			padding: 35px 10px;
		}
		.header a.name
		{
			font-size: 25px;
			padding-left: 40px;
			font-family: Roboto;
		}
		.header-right
		{
			float: right;
		}
		.header-right a
		{
			font-size: 20px;
			font-family: Roboto;
			padding-right: 35px;
		}
		.print
		{
			background-color: #9dff9b;
		}
		.print a
		{
			font-size: 20px;
			font-family: Monaco;
			padding-left: 50px;
			padding-right: 50px;
		}
		.sidebar {
		  margin: 0;
		  padding: 0;
		  width: 320px;
		  background-color: #f1f1f1;
		  position: fixed;
		  height: 100%;
		  overflow: auto;
		}
		.side
		{
			padding-top: 30px;
			padding-left: 30px;
			font-family: 'Roboto';
		}
		.a
		{
			margin-top: 30px;
			margin-left: 330px;
			border: 1px solid grey;
			background-color: #f2eef7;
		}
		.inside
		{
			font-family: 'Roboto';
			padding-left: 150px;
			padding-top: 10px;
			padding-bottom: 10px;
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
		}
		button:hover
		{
			background-color: black;
			color: white;
		}



	</style>
</head>
<%
	String name = (String)session.getAttribute("name");
	response.setHeader("Cache-control","no-cache");
	response.setHeader("Cache-control", "no-store");
	response.setHeader("Pragma" ,"no-cache");
	response.setDateHeader("Expire", 0);
%>
<body>
		<div class="header">
			<a href="http://localhost:8080/HouseRentalManagementPortal/jsp/Home.jsp" class="name">House Rental Managment System</a>
			<div class="header-right">
			<a href="http://localhost:8080/HouseRentalManagementPortal/jsp/AddHouse.jsp">Add House</a>
			<div class="header-right">
			<% 	if(name==null)
					response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/Home.jsp");
				out.println("Welcome, "+name); 
				//out.println("hello "+s);
			%>
			</div>
			
			</div>
		</div>
		<div class="sidebar">
			<div class="side">
				<p>BHK</p>
			<form action="/HouseRentalManagementPortal/Filter" method = "post">
			<button type = "submit" name = "bhk" value = "1">1 BHK</button>
			<button type = "submit" name = "bhk" value = "2">2 BHK</button>
			<button type = "submit" name = "bhk" value = "3">3 BHK</button>
			<button type = "submit" name = "bhk" value = "4">4 BHK</button>
			<p>Payment Option</p>
			<button type = "submit" name = "payment" value = "Cash">Cash</button>
			<button type = "submit" name = "payment" value = "Online">Online</button>
			<p>House Type</p>
			<button type = "submit" name = "type" value = "Flat">Flat</button>
			<button type = "submit" name = "type" value = "Bunglow">Buglow</button>
			<p></p>
			<button type = "submit" name = "reset" value = "reset">Reset Filter</button>
			<p></p>
			
			
			
			</form>
			
			<form action="/HouseRentalManagementPortal/More_Info" method = "post">
				<label>Enter ID of House for more details</label>
				<input type = text name = "id" placeholder = "Enter the ID of the hHouse for more details">
				<button type = submit>More Info</button>
			</form>
		</div>
		<a href="logout.jsp">logout</a>
		</div>
		<div class = "a">
			<div class="inside">
				
			
		<%
			String s[][] = (String[][])session.getAttribute("Data");
			String g[] = {"ID","House Type", "Address", "BHK", "Floor", "Available After", "Payment Option", "Availability","Price", "Owner"};
			try{
				for(int i=0;s[i][0]!=null;i++){
					%>
					<div class="inside">
					<p></p>
					<% 
					for(int j=0;j<10;j++){
						out.println(g[j]+" : "+s[i][j]+"<br>");
					}
					out.println("<br>");
					String id = s[i][0];
					
		%>
		
		</div>
		<%
		
				}
			}catch(Exception e){
			}
			//out.println(s);
		%>
		</div>
		</div>
		
	
</body>
</html>