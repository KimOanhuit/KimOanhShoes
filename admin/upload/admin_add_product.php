<?php
	require 'database_config.php';
	
	$id = $_GET['masp'];
	$name = $_GET['tensp'];
	$type = $_GET['loaisp'];
	$sample = $_GET['kieusp'];
	$cost = $_GET['giasp'];
	$img = $_GET['hinhanh'];
	
	if(isset($_GET['submit'])){
		if($id == "" || $name == "" || $type == "" || $sample == "" || $cost == "" || $img == ""){
			echo "<script>alert('Vui lòng nhập đầy đủ thông tin.')</script>";
			require "insert_product.php";
			exit;
		}
		
		$sql = "INSERT INTO sanpham(MaSanPham, TenSanPham, LoaiSanPham, KieuSanPham, GiaSanPham, HinhAnh)
				VALUES('$id', '$name', '$type', '$sample', '$cost', '$img')";
		if($conn->query($sql)){
			echo "<script>alert('Thêm sản phẩm mới thành công')</script>";
			header('Location: admin_product.php');
		}
		
	}

?>