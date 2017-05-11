<?php
	
	require 'database_config.php';
	//MAHOADON
	session_start();
	$now = getdate();
	//$date= $now["mday"].'-'.$now["mon"].'-'.$now["year"].' '.$now["hours"].':'.$now["minutes"].':'.$now["seconds"];
	//$date = $now;
	$mahoadon = substr($_SESSION['username_login'],0,4).$now["mday"].$now["mon"].$now["hours"].$now["minutes"].$now["seconds"];
	$charge =  $_POST['charge'];
	//cap nhat thong tin hoa don vao database
	$sql = "INSERT INTO hoadon(MaHoaDon, NgayHoaDon, TenKhachHang, ThanhTien) 
			VALUES ('$mahoadon',date(now()),'".$_SESSION['username_login']."', '$charge')";
	$conn->query($sql);
	
	//insert thong tin vao chitiethoadon
	foreach($_SESSION['cart'] as $key=>$value)
	{
		$item[]=$key;
	}
	$str = implode(",",$item);
	$sql = "SELECT MaSanPham FROM sanpham WHERE MaSanPham in ($str)";
	$result = $conn->query($sql);
	while($row = $result->fetch_assoc()){
		$sql = "INSERT INTO chitiethoadon(MaHoaDon, MaSanPham, SoLuong) VALUES ('$mahoadon',".$row['MaSanPham'].",1)";
		$conn->query($sql);
	}
	
	//Xoa gio hang sau khi dang xuat
	unset($_SESSION['cart']);
	header("Location: index.php");
	
 ?>