<?php 
	include 'dbh.php';
	$eventname=$_POST['eventname'];
	$dateOF=$_POST['dateOF'];
	$timeOF=$_POST['timeOF'];
	$venue=$_POST['venue'];
	
	
	$sql="INSERT INTO interuniversityevents(eventname,dateOF,timeOF,venue) VALUES ('$eventname','$dateOF','$timeOF','$venue')";
	$result=$conn->query($sql);
	
	header('Location:interuniversityEvents.php');
?>