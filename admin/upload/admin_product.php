<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	$per_page = 10;
							
			$sql_result_count = "SELECT MaSanPham FROM sanpham";
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
				width: 90%;
				
			}
			table, td, th{
				border: 1px solid lightblue;
				padding: 10px;
				margin-left: 20px;
				margin-top: 30px;
			}
			
		</style>
		<h4><a class="btn btn-success" href="insert_product.php" style="float:right">Thêm sản phẩm mới</a></h4>
		<table>
			<tr>
				<td style="background-color:#C90000; color:#fff">Mã sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Tên sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Loại sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Kiểu sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Gía sản phẩm</td>
				<td style="background-color:#C90000; color:#fff">Hình ảnh</td>
				<td style="background-color:#C90000; color:#fff"></td>
				<td style="background-color:#C90000; color:#fff"></td>
			</tr>
			
<?php
	
		$sql = "SELECT * FROM sanpham ORDER BY MaSanPham ASC LIMIT $page_num , $per_page";
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
					echo "<tr><form action='edit_product.php' method='get'>";
					echo "<td><input style ='background-color:#F3F3F3; border:none;' readonly type='text' name='masp' value='".$row['MaSanPham']."' size='6'></input></td>";
					echo "<td><input style ='background-color:#F3F3F3; border:none;' readonly type='text' name='tensp' value='".$row['TenSanPham']."' class='".$row['MaSanPham']."'></input></td>";
					echo "<td><input style ='background-color:#F3F3F3; border:none;' readonly type='text' name='loaisp' value='".$row['LoaiSanPham']."' class='".$row['MaSanPham']."'></input></td>";
					echo "<td><input style ='background-color:#F3F3F3; border:none;' readonly type='text' name='kieusp' value='".$row['KieuSanPham']."' class='".$row['MaSanPham']."'></input></td>";
					echo "<td><input style ='background-color:#F3F3F3; border:none;' readonly type='text' name='giasp' value='".$row['GiaSanPham']."' class='".$row['MaSanPham']."'></input></td>";
					echo "<td><input style ='background-color:#F3F3F3; border:none;' readonly type='text' name='hinhanh' value='".$row['HinhAnh']."' class='".$row['MaSanPham']."'></input></td>";
					echo "<td><input style ='background-color:#F3F3F3; border:none; color:#428bca' type='button' name='edit' value='Edit' id='".$row['MaSanPham']."'></input>";
					echo "<input style='display:none;' name='redirect' value='admin_product.php?page=".$page."'>";
					echo "<input style ='background-color:#F3F3F3; border:none; color:#428bca; display: none;' type='submit' name='done_edit' value='Done' id='done_".$row['MaSanPham']."'></input>";
					echo "</form></td>";
					echo "<td><input style ='background-color:#F3F3F3; border:none; color:#428bca' type='button' name='delete' value='Delete' id='del_".$row['MaSanPham']."'></input></td>";
					//echo "<td><a href='del_product.php?MaSanPham=".$row['MaSanPham']."'>Delete</a></td>";
					echo "</tr>";
				}
			}
			
?>
</table>
<?php			
			
							
							
							
			echo "<div class='row'><ul class='pagination alg-right-pad'>";
			echo '<li><a href="admin_product.php?page=1">Trang đầu</a></li>';
			if($page >= 2){
				$i = $page - 1;
			}
			else $i = 1;
			for($i; $i<$page + 4 && $i <= $num_of_page ;$i++){
				echo '<li><a href="admin_product.php?page='.$i.'"> ';
				if($i == $page){
					echo '<strong style="color:orange">'.$i.'</strong>';
				}
				else
					echo $i;
				echo' </a></li>';
			}
							
			echo '<li><a href="admin_product.php?page='.$num_of_page.'">Trang cuối</a></li>';
							
			echo "</ul></div>";
							
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





