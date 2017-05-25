
<?php
	session_start();
	require 'database_config.php';
	
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if(isset($_POST['submit'])){
		if($username == "" || $password == ""){
			//require "login.html";
			header('Location: login.html');
			exit;
		}
		
		$sql = "SELECT Username, Password FROM admin WHERE Username = '$username' AND Password = '$password'" ;
		$result = mysqli_query($conn, $sql);
		
		if(mysqli_num_rows($result) == 0){
			unset($_SESSION['username_admin']);
			header('Location: login.html');
			exit;
		}
		else{
			$_SESSION['username_admin'] = $username;
			header('Location: admin_sales_statistics.php');
			exit;
		}
	}

?>