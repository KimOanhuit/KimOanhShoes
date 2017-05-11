<?php
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
										
$ok=1;

if(isset($_SESSION['cart']))
{
	foreach($_SESSION['cart'] as $k => $v)
	{
		if(isset($k))
		{
			$ok=2;
		}
	}
}

if($ok == 2){
 
	echo "<form action='cart.php' method='post'>";
	foreach($_SESSION['cart'] as $key=>$value)
	{
		$item[]=$key;
	}
	$str = implode(",",$item);
	$sql = "SELECT MaSanPham, TenSanPham, KieuSanPham, GiaSanPham, HinhAnh FROM sanpham WHERE MaSanPham in ($str)";
	$result = $conn->query($sql);	
	$total = 0;
		echo "<table cellpadding='0' cellspacing='0' border='1' bordercolor='#000000' width='100%'><tr align='center' style='font-size:18px; background-color:orange; color: white;'><td>Tên sản phẩm</td><td>Hình ảnh</td><td>Giá</td><td>Số lượng</td><td>Tổng tiền sản phẩm</td><td></td></tr>";
	while($row = $result->fetch_assoc()){
						
		echo "<tr align='center' style='font-size:16px;'>";
		echo "<td>".$row['TenSanPham']."</td>";
		echo '<td><img src="'.$row['HinhAnh'].'" alt="" />';
		echo "<td>".number_format($row['GiaSanPham']*1000)." VND</td>";
		echo "<td>1</td>";	
		echo "<td>".number_format($row['GiaSanPham']*1000)." VND</td>";
		echo "<td><a href='delcart.php?productid=".$row['MaSanPham']."'>Xóa Sản Phẩm</a></td>";
		echo "</tr>";
			$total+=$row['GiaSanPham'];
		}
		
		
		echo "</table>";
		$total *= 1000;
		echo "<div class='pro' align='right'>";
		echo "<b style='font-size:20px;'>Tổng tiền: <font color='red' style='font-size:24px;'>".number_format($total,0)." VND</font></b>";
		echo "<br><a href='checkout.php'><div class='btn btn-danger' type='submit' name='submit' value='Đặt hàng' align=right'>Đặt hàng</div</a>";
		echo "</div>";
		
		echo "<div class='pro' align='center'>";
		echo "<b><a href='index.php'>Tiếp tục mua sắm</a>  -  <a href='delcart.php?productid=0'>Xóa giỏ hàng</a></b>";
		echo "</div>"; 
}
	else
	 {
	  echo "<div class='pro'>";
	  echo "<p align='center'>Bạn không có món hàng nào trong giỏ hàng<br /><a href='index.php'>Tiếp tục mua sắm</a></p>";
	  echo "</div>";
	 }

 require '../layout/foot.html';
?>
