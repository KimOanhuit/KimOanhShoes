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
	
	$username = $_POST['username'];
	$password = $_POST['password'];
	$repassword = $_POST['repassword'];
	$email = $_POST['email'];
	
	if(isset($_POST['submit'])){
		
		if(!$username || !$password || !$email){
			echo "<script>alert('Vui lòng nhập đầy đủ thông tin.')</script>";
			require "index.php";
			exit;
		}

		$sql = "SELECT TenKhachHang, Email FROM khachhang WHERE TenKhachHang = '$username' OR Email = '$email'";
		
		$result = mysqli_query($conn, $sql);
		
		if(mysqli_num_rows($result) > 0){
			echo "<script>alert('Ten dang nhap bi trung, vui long chon ten dang nhap khac!');</script>";
			//header('Location: index.php');
			require "index.php";
			exit;
		}
		else{
			$sql = "INSERT INTO khachhang(TenKhachHang, MatKhau, Email) VALUES('$username', '$password', '$email')";
			if (mysqli_query($conn, $sql)){
				echo "<script>alert('Dang ky thanh cong');</script>";
				//header('Location: index.php');
				
				require "index.php";
				
			}
			else{
				echo "Xay ra loi trong qua trinh xu ly";
				header('Location: index.php');
				
			}
		}
	
	}
	
?>