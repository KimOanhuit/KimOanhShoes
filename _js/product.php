<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "shoes_shop";
	
	//Tao ket noi
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	//Kiem tra ket noi
	if($conn->connect_error){
		die("Ket noi that bai: " . $conn->connect_error);
	}
	mysqli_set_charset($conn, "utf-8");
?>