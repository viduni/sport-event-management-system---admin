<?php 
	include 'dbh.php';
	$eventname=$_POST['eventname'];
	$dateOF=$_POST['dateOF'];
	$timePeriod=$_POST['timePeriod'];
	
	
	
	$sql="INSERT INTO admin_basketballcourt(eventname,dateOF,timePeriod) VALUES ('$eventname','$dateOF','$timePeriod')";
	$result=$conn->query($sql);
	
	header('Location:adbook_basketballcourt.php');
?>