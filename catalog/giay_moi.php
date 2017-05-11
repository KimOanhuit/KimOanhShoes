<?php
	require '../layout/head.html';
	require '../layout/body.html';
	require '../upload/database_config.php';
							
							$per_page = 15;
							$catalog_name = 'cot day';
							$catalog_url='giay_tay_cot_day.php';		
																
								$sql_result_count = "SELECT MaSanPham FROM sanpham WHERE KieuSanPham like'%$catalog_name%'";
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
								$num_of_page = ceil($count/$per_page);
								
										
										$sql = "SELECT MaSanPham, TenSanPham, KieuSanPham, GiaSanPham, HinhAnh 
										FROM sanpham 
										WHERE KieuSanPham like '%$catalog_name%' 
										ORDER BY MaSanPham DESC
										LIMIT $page_num , $per_page";
										
										$result = $conn->query($sql);
																	
										
												while($row = $result->fetch_assoc()) {
												echo '<div class="col-sm-4"><div class="product-image-wrapper"><div class="single-products"><div class="productinfo text-center">';
												echo '<img src="'.$row['HinhAnh'].'" alt="" />';
												echo '<h2>'.$row['GiaSanPham'].'.000 VND</h2>';
												echo '<p>'.$row['KieuSanPham'].'</p>';
												echo '<p>'.$row['TenSanPham'].'</p>';
												echo '<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a></div><div class="product-overlay"><div class="overlay-content">';
												echo '<h2>'.$row['GiaSanPham'].'.000 VND</h2>';
												echo '<p>'.$row['TenSanPham'].'</p>';
												echo '<a href="../upload/addcart.php?item='.$row['MaSanPham'].'" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a></div></div></div><div class="choose"><ul class="nav nav-pills nav-justified"><li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li><li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li></ul></div></div></div>';
												
											}
								
									
								
								echo "</div><div class='row'><ul class='pagination alg-right-pad'>";
								echo '<li><a href="'.$catalog_url.'?page=1">Trang đầu</a></li>';
								if($page >= 2){
									$i = $page;
								}
								else $i = 1;
								for($i; $i<$page + 4 && $i <= $num_of_page ;$i++){
									echo '<li><a href="'.$catalog_url.'?page='.$i.'"> ';
									if($i == $page){
										echo '<strong style="color:orange">'.$i.'</strong>';
									}
									else
										echo $i;
									echo' </a></li>';
							}
							
							echo '<li><a href="'.$catalog_url.'	?page='.$num_of_page.'">Trang cuối</a></li>';
							
							echo "</ul></div>";
							
							$conn->close();
	require '../layout/foot.html';
?>