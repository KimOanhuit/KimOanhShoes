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
				width: 95%;
				
			}
			table, td, th{
				border: 1px solid lightblue;
				padding: 10px;
				margin: 20px;
			}
			
		</style>
		<table>
			<tr>
				<td>Số thứ tự</td>
				<td>Mã hóa đơn</td>
				<td>Ngày hóa đơn</td>
				<td>Tên khách hàng</td>
				<td>Thành tiền</td>
				<td></td>
			</tr>
			
<?php
	
		$sql = "SELECT * FROM hoadon ORDER BY NgayHoaDon DESC";
		$result = $conn->query($sql);
		
		if(mysqli_num_rows($result) == 0)
		{
			echo "<tr><td colspan=8 align=center>Chưa có hóa đơn nào</td></tr>";
		}
		else
		{	
			$stt = 0;
			while($row = mysqli_fetch_array($result))
			{
				$stt++;
				echo "<tr><form action='edit_user.php' method='get'>";
				echo "<td>".$stt."</td>";
				echo "<td>".$row['MaHoaDon']."</td>";
				echo "<td>".$row['NgayHoaDon']."</td>";
				echo "<td>".$row['TenKhachHang']."</td>";
				echo "<td>".$row['ThanhTien']."</td>";
				echo "<td><a href='del_bill.php?MaHoaDon=".$row['MaHoaDon']."'>Delete</a></td>";
				echo "</tr>";
			}
		   
		}
	}
	
?>
</table>

<?php
	require '../layout/foot.html';

?>

