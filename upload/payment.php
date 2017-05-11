<?php
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';

	echo "<h3>Thông tin hóa đơn</h3>";
	$sql = "SELECT TenKhachHang, SoDienThoai, DiaChi, Email FROM khachhang where TenKhachHang = '".$_SESSION['username_login']."'";
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	echo "<div style='border: 1px solid lightblue; padding: 10px 25px 10px 25px'>";
	echo "<h4>Thông tin khách hàng</h4>";
	echo "<p>Tên khách hàng: <b>".$row['TenKhachHang']."</b></p>";
	echo "<p>Số Điện Thoại: <b>".$row['SoDienThoai']."</b></p>";
	echo "<p>Địa chỉ: <b>".$row['DiaChi']."</b></p>";
	echo "<p>Email: <b>".$row['Email']."</b></p>";

	echo "<a href='checkout.php'><div class='btn btn-info'>Cập nhật thông tin</div></a><br></div><br><br>";
	
	foreach($_SESSION['cart'] as $key=>$value)
	{
		$item[]=$key;
	}
	$str = implode(",",$item);
	$sql = "SELECT MaSanPham, TenSanPham, KieuSanPham, GiaSanPham FROM sanpham WHERE MaSanPham in ($str)";
	$result = $conn->query($sql);	
	$total = 0;
		echo "<div style='border: 1px solid lightblue; padding: 10px 25px 10px 25px'>";
		echo "<h4>Thông tin hàng hóa</h4>";
		echo "<table cellpadding='0' cellspacing='0' border='1' bordercolor='#000000' width='100%'><tr align='center' style='font-size:18px; background-color:orange; color: white;'><td>Tên sản phẩm</td><td>Giá</td><td>Số lượng</td><td>Tổng tiền sản phẩm</td><td></td></tr>";
	while($row = $result->fetch_assoc()){
						
		echo "<tr align='center' style='font-size:16px;'>";
		echo "<td>".$row['TenSanPham']."</td>";
		echo "<td>".number_format($row['GiaSanPham']*1000)." VND</td>";
		echo "<td>1</td>";	
		echo "<td>".number_format($row['GiaSanPham']*1000)." VND</td>";
		echo "</tr>";
			$total+=$row['GiaSanPham'];
		}
		
		echo "</table>";
		$total *= 1000;
		echo "<div class='pro' align='right'>";
		echo "<form action='hoadon.php' method='post'>";
		echo "<p style='font-size:16px;'>Tổng tiền:<input style='color:red; font-size:15' type='text' name='charge' align='right' value='".$total."'></input></p>";
		echo "<br><br><input class='btn btn-danger' onclick='notify()' type='submit' name='submit' value='Đặt hàng' align=right'></input>";
		echo "</form>";
		echo "</div></div></div>";
	require '../layout/foot.html';
?>

<script>
	function notify(){
		alert("Bạn đã mua hàng thành công\nCảm ơn bạn đã mua hàng trên KimOanh Shoes");
	}
</script>
