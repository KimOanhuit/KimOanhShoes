<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';

	if(isset($_SESSION['username_admin']))
	{
		if(isset($_GET["month_stastics"])){
			if($_GET["month_stastics"] == ""){
				$month = 0;//date('m');
			}else if($_GET['month_stastics'] == "all"){
				$month = 0; //test month = 0 => tat ca cac thang
			}else{
				$month = $_GET["month_stastics"];
			}
		}else{
			$month = date('m');
		}
		
		if(isset($_GET["year_stastics"])){
			if($_GET["year_stastics"] == ""){
				$year = date('Y');	
			}else{
				$year = $_GET['year_stastics'];
			}
		}else{
			$year = date('Y');
		}
		
	
		
	?>
	<form align="center" class="checkout" action="admin_sales_statistics.php" method="get" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); padding:10px;">
		<select name="month_stastics">
			<option value="" selected>--- Chọn tháng ---</option>
			<option value="all">Tất các tháng</option>
			<option value="1">Tháng 1</option>
			<option value="2">Tháng 2</option>
			<option value="3">Tháng 3</option>
			<option value="4">Tháng 4</option>
			<option value="5">Tháng 5</option>
			<option value="6">Tháng 6</option>
			<option value="7">Tháng 7</option>
			<option value="8">Tháng 8</option>
			<option value="9">Tháng 9</option>
			<option value="10">Tháng 10</option>
			<option value="11">Tháng 11</option>
			<option value="12">Tháng 12</option>
		</select>
		
		<select name="year_stastics">
			<option value="" selected>--- Chọn năm ---</option>
			<option value="2016">2016</option>
			<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
			<option value="2020">2020</option>
		</select>
		
		<td><button class="btn btn-primary" type="submit" name="submit">Xem</button></td>
	</form>
	<?php
		if($month == 0){
			echo "<h1 align='center'>Doanh thu năm ".$year."</h1>";
			//lay tung cot in cho bang
			$sql = "SELECT NgayHoaDon, sum(ThanhTien) FROM hoadon where NgayHoaDon BETWEEN '".$year."/1/1' and '".$year."/12/31' GROUP BY Month(NgayHoaDon)";
			//lay tong cong tat ca
			$sql_sum = "SELECT sum(ThanhTien) FROM hoadon where NgayHoaDon BETWEEN '".$year."/1/1' and '".$year."/12/31'";
		}else{
			echo "<h1 align='center'>Doanh thu ".$month."/".$year."</h1>";
			//lay tung cot in cho bang
			$sql = "SELECT NgayHoaDon, sum(ThanhTien) FROM hoadon where NgayHoaDon BETWEEN '".$year."/".$month."/1' and '".$year."/".$month."/31' GROUP BY NgayHoaDon";
			//lay tong cong tat ca
			$sql_sum = "SELECT sum(ThanhTien) FROM hoadon where NgayHoaDon BETWEEN '".$year."/".$month."/1' and '".$year."/".$month."/31'";
		}
		
		$result = $conn->query($sql);
		
		
		if(mysqli_num_rows($result) == 0)
		{
			echo "<tr><td colspan=8 align=center>Không có hóa đơn nào</td></tr>";
		}
		else
		{	
			$sum = mysqli_fetch_array($conn->query($sql_sum));
			echo "<h3>Tổng tiền là: <b style='color:red'>".number_format($sum['sum(ThanhTien)'])." VNĐ</b></h3>";
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
				<td style="background-color:#C90000; color:#fff">Ngày</td>
				<td style="background-color:#C90000; color:#fff">Doanh Thu</td>
			</tr>

<?php
			if ($result->num_rows > 0) {
			// output data of each row
								
				while($row = mysqli_fetch_array($result))
				{
					if($month != 0)
						echo "<td>".$row['NgayHoaDon']."</td>";
					if($month == 0)
						echo "<td> Tháng ".date("m", strtotime($row['NgayHoaDon']))."</td>";
					
					
					echo "<td>".number_format($row['sum(ThanhTien)'])." VND</td>";
					echo "</tr>";
				}
			}
		}
		
		
		//ve bieu do


	
	}//last
	
	require '../layout/foot.html';
?>