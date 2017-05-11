<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	if (isset($_GET['MaHoaDon'])) {

		$id = $_GET['MaHoaDon'];
		$sql = "DELETE FROM hoadon WHERE MaHoaDon = '$id'";
		$result = $conn->query($sql);
		
		header('Location: admin_bill.php');
		exit();
	}
?>
	