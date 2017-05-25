<?php
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	$sql = "SELECT TenKhachHang, Email, SoDienThoai, DiaChi FROM khachhang WHERE TenKhachHang = '".$_SESSION['username_login']."'";
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
?>
	<style>
		table{
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		table, td, th{
			border: 1px solid lightblue;
			padding: 10px;
			margin: 20px;
		}
		
	</style>
	<h3 style="color:red;">Thông tin khách hàng</h3>
	<table>
			
		<tr>
			<td>Tên tài khoản</td> <th><?php echo $row['TenKhachHang'];?></th>  
		</tr>
		<tr>
			<td>Email</td>
			<th><?php echo $row['Email']; ?></th>	
		</tr>
		<tr>
			<td>Số điện thoại</td>
			<th><?php echo $row['SoDienThoai']; ?></th>
		</tr>
		<tr>
			<td>Địa chỉ liên hệ</td>
			<th><?php echo $row['DiaChi']; ?></th>
		</tr>
	</table>
	<br>
	<h3 style="color:red;">Thông tin hóa đơn mua hàng</h3>

	<table>
			
		<tr style='background:#ddd'>
			<td>Mã hóa đơn</td> <td>Ngày hóa đơn</td><td colspan='3'>Thành tiền</td>
		</tr>
		<?php
		$sql ="SELECT MaHoaDon, NgayHoaDon, ThanhTien FROM hoadon WHERE TenKhachHang = '".$_SESSION['username_login']."'"; 
		$result	 = $conn->query($sql);
		while($row = $result->fetch_assoc()){
			$mahoadon = $row['MaHoaDon'];
			
			echo "<tr style='border-top: 5px solid lightblue;'>";
			//get id to show data
			echo "<td>".$row['MaHoaDon']."<button id='$mahoadon' class='btn' style='background:#fff; color:blue' onclick='detail($mahoadon)'>(chi tiết)</a></td>";
			echo "<td>".$row['NgayHoaDon']."</td>";
			echo "<td colspan='3' style='color:red'><b>".$row['ThanhTien']."</b></td>";
			
			echo "</tr>";
			//take id to show data
			echo "<tr class='$mahoadon detail'><td></td><td></td><td style='background:#ddd'>Tên Sản Phẩm</td><td style='background:#ddd'>Giá Sản Phẩm</td><td style='background:#ddd'>Số lượng</td></tr>";
				
				$sql = "SELECT chitiethoadon.MaHoaDon, NgayHoaDon, chitiethoadon.MaSanPham, TenSanPham, SoLuong, GiaSanPham, ThanhTien 
					FROM hoadon 
					INNER JOIN chitiethoadon ON hoadon.MaHoaDon = chitiethoadon.MaHoaDon 
					INNER JOIN sanpham ON sanpham.MaSanPham = chitiethoadon.MaSanPham 
					WHERE TenKhachHang = '".$_SESSION['username_login']."' and chitiethoadon.MaHoaDon = '$mahoadon'";
				$result1= $conn->query($sql);
				while($row1 = $result1->fetch_assoc()){
					//get id to show data
					echo "<tr class='$mahoadon detail' >";
					echo "<td></td>";
					echo "<td></td>";
					echo "<td>".$row1['TenSanPham']."</td>";
					echo "<td>".$row1['GiaSanPham'].".000 VND</td>";
					echo "<td >".$row1['SoLuong']."</td>";
					echo "</tr>";
				}
				echo "</tr>";

				
		}
		?>
	</table>

<?php
	require '../layout/foot.html';	
?>
<script>
	
	function myFunction(mhd) {
    
	}

</script>

