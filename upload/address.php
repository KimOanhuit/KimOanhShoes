<?php
	
	require 'database_config.php';
	$phone = $_POST['phone'];
	$address = $_POST['address'];
	if(isset($_POST['submit'])){
		
		if($phone == "" || $address == ""){
			echo "<script>alert('Vui lòng nhập đầy đủ số điện thoại và địa chỉ giao hàng.')</script>";
			require "checkout.php";
			exit;
		}
		
		session_start();
		$sql = "UPDATE khachhang SET SoDienThoai='$phone', DiaChi='$address' WHERE TenKhachHang='".$_SESSION['username_login']."'";
		mysqli_query($conn, $sql);
		header('Location: payment.php');
	}
	
?>