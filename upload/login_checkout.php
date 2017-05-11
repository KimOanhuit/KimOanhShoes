<?php
	session_start();
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "shoes_shop";
	//$_SESSION['username_login']='';
	//Tao ket noi
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	//Kiem tra ket noi
	if($conn->connect_error){
		die("Ket noi that bai: " . $conn->connect_error);
	}
	
	mysqli_set_charset($conn, "utf-8");
	
	$username = $_POST['username_login'];
	$password = $_POST['password_login'];
	
	if(isset($_POST['submit_login'])){
		if($username == "" || $password == ""){
			echo "<script>alert('Vui lòng nhập đầy đủ thông tin.')</script>";
			require "index.php";
			exit;
		}
		
		$sql = "SELECT TenKhachHang, MatKhau FROM khachhang WHERE TenKhachHang = '$username' AND MatKhau = '$password'" ;
		$result = mysqli_query($conn, $sql);
		
		if(mysqli_num_rows($result) == 0){
			echo "<script>alert('Tên đăng nhập không đúng, vui lòng nhập lại')</script>";
			header('Location: cart.php');
			exit;
		}
		else{
			$_SESSION['username_login'] = $username;
			echo "<script>alert('Đăng nhập thành công!')</script>";
			header('Location: checkout.php');
			exit;
		}
	}
	
?>