<?php 
	include 'dbh.php';
	$eventname=$_POST['eventname'];
	$dateOF=$_POST['dateOF'];
	$timeOF=$_POST['timeOF'];
	$venue=$_POST['venue'];
	$teamname=$_POST['teamname'];
	$score=$_POST['score'];
	
	
	$sql="INSERT INTO update_score(eventname,dateOF,timeOF,venue,teamname,score) VALUES 
	('$eventname','$dateOF','$timeOF','$venue','$teamname','$score')";
	$result=$conn->query($sql);
	
	header('Location:updateScore.php');
?>