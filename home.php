<?php
	ob_start();
	session_start();
	require_once 'dbconnect.php';
	
	// if session is not set this will redirect to login page
	if( !isset($_SESSION['user']) ) {
		header("Location: index.php");
		exit;
	}
	// select loggedin users detail
	$res=mysql_query("SELECT * FROM users WHERE userId=".$_SESSION['user']);
	$userRow=mysql_fetch_array($res);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sport Event Management Platform</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link type="text/css" rel="stylesheet" href="CSS\style.css"></link>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
	#a1{text-decoration:none;}
	#a1:link{color:#000000;}
	#a1:visited{color:#000000;}
	#a1:hover{color:#000000;}
    #a1:active{color:#000000;}
  </style>
</head>
<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card-2">
    <a href="home.php" class="w3-bar-item w3-button"><b>SABRA</b> Souls</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="home.php" class="w3-bar-item w3-button" id="a1">Home</a>
      <a href="universityEvents.php" class="w3-bar-item w3-button" id="a1">UniversityEvents</a>
      <a href="interuniversityEvents.php" class="w3-bar-item w3-button" id="a1">InterUniversityEvents</a>
	   <a href="newsFeed.php" class="w3-bar-item w3-button" id="a1">NewsFeed</a> 
	   <a href="admin_booking.php" class="w3-bar-item w3-button" id="a1">Booking</a>
	   <a href="logout.php?logout" class="w3-bar-item w3-button" id="a1">Log out</a>
	   
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img class="w3-image" src="images/a1.jpg" alt="Architecture" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>SABRA</b></span> <span class="w3-hide-small w3-text-light-grey">Souls</span></h1>
  </div>
</header>
<br>
<br>

<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#" id="a1">Athletics</a></p>
  <p><a href="#" id="a1">Badminton</a></p>
  <p><a href="#" id="a1">Baseball</a></p>
  <p><a href="#" id="a1">Carrom</a></p>
  <p><a href="#" id="a1">Chess</a></p>
  <p><a href="#" id="a1">Cricket</a></p>
  <p><a href="#" id="a1">Elle</a></p>
  <p><a href="#" id="a1">Hockey</a></p>
  <p><a href="#" id="a1">Karate</a></p>
  <p><a href="#" id="a1">Netball</a></p>
  <p><a href="#" id="a1">Rugby</a></p>
  <p><a href="#" id="a1">Soccer</a></p>
  <p><a href="#" id="a1">Swimming</a></p>
  <p><a href="#" id="a1">Table Tennis</a></p>
  <p><a href="#" id="a1">Taekwondo</a></p>
  <p><a href="#" id="a1">Tennis</a></p>
  <p><a href="#" id="a1">Voleyball</a></p>
  
  
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Welcome</h1>
      <div class="w3-display-container">
        
        <img src="images/p9.jpg" alt="House" style="width:100%">
      </div>
      <hr>
      <h3>Sabra Souls</h3>
      <p>It provides up to date reporting of sporting events in the university arena. Sabra Souls aims to uplift university sports to the highest of standards, create intelligent and well-rounded university undergraduates instilled with invaluable qualities and disciplines nurtured by sports and also to draw interest of authorities and other stakeholders towards them.</p>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
       <div class="w3-display-container">
        
        <img src="images/p1.jpg" alt="House" style="width:100%">
      </div>
	   
      </div>

	  <div class="well">
       <div class="w3-display-container">
        
        <img src="images/p5.jpg" alt="House" style="width:100%">
      </div>
	   
      </div>
	  <div class="well">
       <div class="w3-display-container">
        
        <img src="images/p6.jpg" alt="House" style="width:100%">
      </div>
	   
      </div>
	  <div class="well">
       <div class="w3-display-container">
        
        <img src="images/p7.jpg" alt="House" style="width:100%">
      </div>
	   
      </div>
	  
      
    </div>
  </div>
</div>
<footer class="container-fluid text-center">
  <p>www.SabraSouls.com</p>
</footer>

</body>
</html>
<?php ob_end_flush(); ?>