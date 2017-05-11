<?php
	require 'database_config.php';
	
	
	if (isset($_GET['MaSanPham'])) {
		$id = $_GET['MaSanPham'];
?>
		

<?php
		$sql = "DELETE FROM sanpham WHERE MaSanPham = '$id'";
		$result = $conn->query($sql);
		
		
		header('Location: admin_product.php');
		exit();
	}
?>
	