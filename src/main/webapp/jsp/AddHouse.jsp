<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add house</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

  <style>
  @import url('https://fonts.googleapis.com/css?family=Roboto');
    h1
    {
      text-align: center;
      font-size: 40px;
      margin-top: 50px;
    }
    label
    {
      background-color: black;
      color: white;
      font-size: 15px;
      padding:10px 10px 10px 10px;
      margin-top: 25px;
      font-family: Roboto;
    }

    select
    {
      width: 100%;
      padding-top: 6px;
      padding-bottom: 6px;
      margin-top: 10px;
    }

    input[type="text"]
    {
      width: 100%;
      padding-top: 6px;
      padding-bottom: 6px;
      margin-top: 10px;
      padding-left: 5px;
    }

    textarea
    {
      width: 100%;
    }

    button
    {
      width: 100%;
      margin-top: 25px;
      margin-bottom: 25px;
      padding-top: 5px;
      padding-bottom: 5px;
      background-color: black;
      border:none;
      color: white;
      border-radius: 15px;
    }
  </style>
</head>
<body>
<%
	String name = (String)session.getAttribute("name");
	int State = (int)session.getAttribute("State");
	
%>

	
    <%
    if(State==0)
		response.sendRedirect("http://localhost:8080/HouseRentalManagementPortal/jsp/login.jsp"); 
	%>	
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home.jsp">House Renatal Managment System</a>
    </div>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Home.jsp">Home</a>
      </li>
    </ul>
  </div> 
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Log-Out</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <h1>Add House</h1> 
  <div class="row">
    <div class="col-md-6 offset-md-3">
    <form action = "/HouseRentalManagementPortal/HousesData" method = "post">
        <label for="address">Address</label>
        <textarea name="address" rows="5" cols="20" placeholder="Enter Address here"></textarea>
      <label for="Resendetial Type">Resendential Type</label> 
        <select name="residental_detail" required>
          <option>Bunglow</option>
          <option>Flat</option>
        </select>
         <label for="BHK">BHK</label> 
         <input type="text" name="bhk" id="BHK" placeholder="Enter BHK here" required pattern="[0-9]">
         <label for="area">Floor</label>
         <input type="text" name="floor" id="Floor" placeholder="Enter Floor here" required pattern="[0-9]">
         <label for="availibility">Avail. After (In months)</label>
         <input type="text" name="available_after" id="time" placeholder="Enter availibility here" required pattern="[0-9]">
          <label for="Payment">Payment option</label>
          <select name="payment_option" required>
          <option>Cash</option>
          <option>Online</option>
        </select>
        <label for="abailability">availability</label> 
         <input type="text" name="availability" id="BHK" placeholder="Enter availability here" required pattern="[0-9]">

        <button type="submit">Submit</button>
        </form>
    </div>
  </div>
</div>
</body>
</html>