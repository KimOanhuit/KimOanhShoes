<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	if (isset($_GET['TenKhachHang'])) {

		$id = $_GET['TenKhachHang'];
		$sql = "DELETE FROM khachhang WHERE TenKhachHang = '$id'";
		$result = $conn->query($sql);
		
		header('Location: admin_customer.php');
		exit();
	}
?>
	