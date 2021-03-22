<?php
	session_start();
	require('db_connectivity.php');
		$name=$_POST['name'];
		$email=$_POST['email'];
		$inquiry=$_POST['inquiry'];
		$message=$_POST['message'];
		
		$sql="insert into contact_tb(name,email,subject,message)values('$name','$email','$inquiry','$message')";
		if(mysqli_query($mysql,$sql))
			header("Location:index.php");
		else
			echo "Error $sql".mysqli_error($mysql); 

	
?>