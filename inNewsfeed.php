<?php
$db = mysqli_connect("localhost","root","","image_uploadpro");
$msg = "";

if(isset($_POST['upload'])){
	$target = "images/".basename($_FILES['image']['name']);
	$image = $_FILES['image']['name'];
	$image_text = mysqli_real_escape_string($db, $_POST['image_text']);
	$title = mysqli_real_escape_string($db, $_POST['title']);
	$dateOF= mysqli_real_escape_string($db, $_POST['dateOF']);
	
	$sql="INSERT INTO images (image,image_text,title,dateOF) VALUES ('$image','$image_text','$title','$dateOF')";
	
	mysqli_query($db,$sql);
	
	if(move_uploaded_file($_FILES['image']['tmp_name'],$target)){
		$msg = "Image uploaded successfully";
	}
	else{
		$msg = "Failed to upload image";
	}
}
$result = mysqli_query($db, "SELECT * FROM images ORDER BY id DESC");
header('Location:newsFeed.php');
?>