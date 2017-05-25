<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';

	$per_page = 10;
							
			$sql_result_count = "SELECT MaHoaDon FROM hoadon";
			$result_count = $conn->query($sql_result_count);
							
			$count = $result_count->num_rows;
			$page;
							
			if(isset($_GET["page"])){
				$page = $_GET["page"];
			}
			else $page = 1;
								
			if($page == "" || $page < "1" || $page == "1"){
				$page_num = 0;
			}else if($page > ceil($count/$per_page)){
				$page_num = ceil($count/$per_page);
			}else{
				$page_num = ($page*$per_page) - $per_page;
			}
	
	$num_of_page = ceil($count/$per_page) - 1;


	
	
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
	
		$sql = "SELECT * FROM hoadon ORDER BY NgayHoaDon DESC LIMIT $page_num , $per_page";
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
	
	
	echo "<div class='row'><ul class='pagination alg-right-pad'>";
			echo '<li><a href="admin_bill.php?page=1">Trang đầu</a></li>';
			if($page >= 2){
				$i = $page - 1;
			}
			else $i = 1;
			for($i; $i<$page + 4 && $i <= $num_of_page ;$i++){
				echo '<li><a href="admin_bill.php?page='.$i.'"> ';
				if($i == $page){
					echo '<strong style="color:orange">'.$i.'</strong>';
				}
				else
					echo $i;
				echo' </a></li>';
			}
							
			echo '<li><a href="admin_bill.php?page='.$num_of_page.'">Trang cuối</a></li>';
							
			echo "</ul></div>";
	
	require '../layout/foot.html';

?>

