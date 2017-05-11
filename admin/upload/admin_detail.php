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
				<td>Mã hóa đơn</td>
				<td>Mã sản phẩm</td>
				<td>Số lượng</td>
				<td>Xóa</td>
			</tr>
			
<?php
	
		$sql = "SELECT * FROM chitiethoadon ORDER BY MaHoaDon DESC";
		$result = $conn->query($sql);
		
		
		while($row = mysqli_fetch_array($result))
		{
			
			echo "<tr><form action='edit_user.php' method='get'>";
			
			echo "<td>".$row['MaHoaDon']."</td>";
			echo "<td>".$row['MaSanPham']."</td>";
			echo "<td>".$row['SoLuong']."</td>";
			echo "<td><a href='del_detail.php?MaHoaDon=".$row['MaHoaDon']."&MaSanPham=".$row['MaSanPham']."'>Delete</a></td>";
			echo "</tr>";
		}
	}
	
?>
</table>

<?php
	require '../layout/foot.html';

?>

