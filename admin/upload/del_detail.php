<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	if (isset($_GET['MaHoaDon'])) {
		if (isset($_GET['MaSanPham'])) {

			$bill = $_GET['MaHoaDon'];
			$product = $_GET['MaSanPham'];
			$sql = "DELETE FROM chitiethoadon WHERE MaHoaDon = '$bill' AND MaSanPham = '$product'";
			$result = $conn->query($sql);
			
			header('Location: admin_detail.php');
			exit();
		}
	}
?>
	