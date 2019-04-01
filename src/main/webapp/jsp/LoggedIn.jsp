
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
					response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/Error.jsp");
				out.println("Welcome, "+name); 
				//out.println("hello "+s);
			%>
			</div>
			
			</div>
		</div>
		<div class = "print a">
		<%
			String s[][] = (String[][])session.getAttribute("Data");
			String g[] = {"ID","House Type", "Address", "BHK", "Floor", "Available After", "Payment Option", "Availability", "Owner"};
			try{
				for(int i=0;s[i][0]!=null;i++){
					for(int j=0;j<9;j++){
						out.println(g[j]+" : "+s[i][j]+"<br>");
					}
					out.println("<br>");
				}
			}catch(Exception e){
			}
			//out.println(s);
		%>
		</div>
		
	<a href="logout.jsp">logout</a>
</body>
</html>