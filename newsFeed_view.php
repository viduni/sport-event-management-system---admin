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
 <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
	#a1{text-decoration:none;}
	#a1:link{color:#ffffff;}
	#a1:visited{color:#ffffff;}
	#a1:hover{color:#ffffff;}
    #a1:active{color:#ffffff;}
	
	#b{text-decoration:none;}
	#b:link{color:#000000;}
	#b:visited{color:#000000;}
	#b:hover{color:#000000;}
    #b:active{color:#000000;}
</style>
</head>
<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card-2">
    <a href="home.php" class="w3-bar-item w3-button"><b>SABRA</b> Souls</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="home.php" class="w3-bar-item w3-button" id="b">Home</a>
      <a href="universityEvents.php" class="w3-bar-item w3-button" id="b">UniversityEvents</a>
      <a href="interuniversityEvents.php" class="w3-bar-item w3-button" id="b">InterUniversityEvents</a>
	   <a href="newsFeed.php" class="w3-bar-item w3-button" id="b">NewsFeed</a> 
	   <a href="admin_booking.php" class="w3-bar-item w3-button" id="b">Booking</a>
	   <a href="logout.php?logout" class="w3-bar-item w3-button" id="b">Log out</a>
	   
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
<br><br>
<div class="container-fluid text-center">    
  
	<!-- Center -->
	<div class="col-sm-12 text-left"> 
      <h1>News Feed</h1>
	   <br><br>
	  <button type="submit" class="btn  button" name="submit"><a href="newsFeed.php" id="a1">Back to Form</a></button>
  
	  <br>
	  <br>
<body>	
 
<?php
$db = mysqli_connect("localhost","root","","image_uploadpro");
$result = mysqli_query($db, "SELECT * FROM images ORDER BY id DESC");
	while ($row = mysqli_fetch_array($result)){
	echo '<div class="w3-content" style="max-width:1100px">
 <div class="w3-row w3-padding-64" id="about">
	<div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="images/'.$row["image"].'" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>	
	<div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">'.$row["title"].'</h1><br>
      <h5 class="w3-center">'.$row["dateOF"].'</h5>
	  <p class="w3-large">'.$row["image_text"].'</p>
	</div>
	<hr>
	</div>
</div>';
	
	
	}
?>


<footer class="container-fluid text-center">
  <p>www.SabraSouls.com</p>
</footer>
</body>
</html>
<?php ob_end_flush(); ?>