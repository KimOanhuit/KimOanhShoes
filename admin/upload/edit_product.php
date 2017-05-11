<?php
	require 'database_config.php';
	if(isset($_GET['done_edit'])){
		$id = $_GET['masp'];
		$tensp = $_GET['tensp'];
		$loaisp = $_GET['loaisp'];
		$kieusp = $_GET['kieusp'];
		$giasp = $_GET['giasp'];
		$hinhanh = $_GET['hinhanh'];
		$redirect = $_GET['redirect'];
		
		
		$sql = "UPDATE sanpham 
		SET TenSanPham='$tensp', GiaSanPham='$giasp', LoaiSanPham='$loaisp', KieuSanPham='$kieusp'
		WHERE MaSanPham = '$id'";
		
		echo "sql:".$sql;
		$result = $conn->query($sql);
		
	}

	
	header('Location:'.$redirect);
?>

