<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	
	if(isset($_SESSION['username_admin']))
	{

?>
		<style>
			table{
				font-family: arial, sans-serif;
				border-collapse: collapse;
				width: 90%;
				
			}
			table, td, th{
				border: 1px solid lightblue;
				padding: 10px;
				margin-left: 20px;
				margin-top: 30px;
			}
			
		</style>
		
		<table>
			<tr>
				<td style="background-color:#C90000; color:#fff">Mã sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Tên sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Loại sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Kiểu sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Gía sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Hình ảnh</td>
				<td style="background-color:#C90000; color:#fff">Số lượng</td>
			</tr>
			
<?php
	
		$sql = "SELECT chitiethoadon.MaSanPham,sanpham.TenSanPham, sanpham.LoaiSanPham, sanpham.KieuSanPham,
				sanpham.GiaSanPham, sanpham.HinhAnh, SUM(SoLuong) 
				FROM chitiethoadon
                INNER JOIN sanpham ON chitiethoadon.MaSanPham = sanpham.MaSanPham
				GROUP BY SoLuong 
				ORDER BY SUM(SoLuong) DESC 
				LIMIT 0,10";
		$result = $conn->query($sql);
		if(mysqli_num_rows($result) == 0)
		{
			echo "<tr><td colspan=8 align=center>Chưa có sản phẩm</td></tr>";
		}
		else
		{	
			if ($result->num_rows > 0) {
			// output data of each row
								
				while($row = mysqli_fetch_array($result))
				{
					
					echo "<td>".$row['MaSanPham']."</td>";
					echo "<td>".$row['TenSanPham']."</td>";
					echo "<td>".$row['LoaiSanPham']."</td>";
					echo "<td>".$row['MaSanPham']."</td>";
					echo "<td>".$row['GiaSanPham']."</td>";
					echo "<td>".$row['HinhAnh']."</td>";
					echo "<td>".$row['SUM(SoLuong)']."</td>";
					echo "</form></td>";
	
					echo "</tr>";
				}
			}
			
?>
</table>
<?php			
			
							
							
							
			
			$conn->close();

		   
		}
	}
	
?>


<?php
	require '../layout/foot.html';
?>


<script>
<?php
	require 'database_config.php';
	$sql = "SELECT * FROM sanpham ORDER BY MaSanPham ASC LIMIT $page_num , $per_page";
	$result = $conn->query($sql);
	while($row = mysqli_fetch_array($result)){
		//edit product
		echo "$('#".$row['MaSanPham']."').click(function() {\n";
			echo "$('.".$row['MaSanPham']."').css('background-color', 'white');\n";
			echo "$('.".$row['MaSanPham']."').css({'border-color': '#C1E0FF','border-weight':'1px','border-style':'solid'});\n";
			echo "$('#".$row['MaSanPham']."').css('display','none');\n";
			echo "$('#done_".$row['MaSanPham']."').css('display','block');\n";
			echo "$('.".$row['MaSanPham']."').prop('readonly', false);\n";
			
		echo "});\n";
	}
	
	$result1 = $conn->query($sql);
	while($row = mysqli_fetch_array($result1)){
		//delete product
		echo "$('#del_".$row['MaSanPham']."').click(function() {";
			echo "if (window.confirm('Are you sure you want to delete this product by id ".$row['MaSanPham']."?')) {\n";
				echo "window.alert('This produect was successfully deleted from your store.');\n";
				echo "document.location.href = 'del_product.php?MaSanPham=".$row['MaSanPham']."';\n";
			echo "}\n";
		echo "});\n";
		
	}
	
?>

</script>





