<?php
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	if(isset($_POST['update'])){
		
	foreach($_POST['qty'] as $key=>$value){
		
		if( ($value == 0) and (is_numeric($value))){
			
			unset ($_SESSION['cart'][$key]);
		}
		else if(($value > 0) and (is_numeric($value))){
			
			$_SESSION['cart'][$key]=$value;
		}
	}
	//header("location:cart.php");
}
	
	
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
	
	//$inputValues = array();
	
	//number quatity default==> su dung jQuery event change de thay doi
	
	while($row = $result->fetch_array()){
		
		$soluong = $_SESSION['cart'][$row['MaSanPham']];
		$tongtien = $_SESSION['cart'][$row['MaSanPham']]*$row['GiaSanPham'];
	
		echo "<tr align='center' style='font-size:16px;'>";
		echo "<td>".$row['TenSanPham']."</td>";
		echo '<td><img src="'.$row['HinhAnh'].'" alt="" />';
		echo "<td><input readonly style='border:none;	' class='id_price' type='text' size='9' value = '".number_format($row['GiaSanPham'],3)."'/></td>";
		
		//change number quatity
		echo "<td><input class='quatity' name = 'qty[$row[MaSanPham]]' type='tel' size='2' value = '$soluong'/></td>";	
		
		//change money when number quatity change
		echo "<td ><input readonly style='border:none;	' type='text' size='9' value = '".number_format($tongtien,3)."'/> VND</td>";
		echo "<td><a href='delcart.php?productid=".$row['MaSanPham']."'>Xóa Sản Phẩm</a></td>";
		echo "</tr>";
			//plus after change money
			$total += $tongtien;
		}
		
		echo "</table>";
		echo "<div class='pro' align='right'>";
		echo "<b>Tong tien: <font color='red'>".number_format($total,3)." VNĐ </font></b>";
		echo "<input style='display:none;' id='update' type='submit' name='update' value='Cap Nhat Gio Hang'>";
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
