<?php
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
							$per_page = 15;
							
							if (isset($_REQUEST['ok'])) {		
								
								$search = addslashes($_GET['search']);
								
								//ngoại lệ: search giày tây
								if($search == "giày tây" || $search == "giay tay"){
									$search = "giày tây cột dây, xỏ";
								}
								
								$arr_search = explode(" " , $search);
								$condition = "0";
								
								if(count($arr_search) == 1 && ($arr_search[0] == "giay" || $arr_search[0] == "giày"))
									$condition = "1";
								
								for($i = 0; $i < count($arr_search); $i++){
									if($arr_search[$i] == "giay" || $arr_search[$i] == "giày"){}
									else
										$condition = $condition." or TenSanPham like '%$arr_search[$i]%' or KieuSanPham like '%$arr_search[$i]%' or LoaiSanPham like '%$arr_search[$i]%'";
								}							
										
								
								//$sql_result_count = "SELECT MaSanPham FROM sanpham WHERE TenSanPham like'%$search%' or KieuSanPham like '%$search%' ";
								$sql_result_count = "SELECT MaSanPham FROM sanpham WHERE $condition";
														
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
								if (empty($search)) {
								}else{
										/*
										$sql = "SELECT MaSanPham, TenSanPham,KieuSanPham, GiaSanPham, HinhAnh 
										FROM sanpham 
										WHERE TenSanPham like'%$search%' or KieuSanPham like '%$search%'
										ORDER BY MaSanPham DESC
										LIMIT $page_num , $per_page";
										*/
										
										$sql = "SELECT MaSanPham, TenSanPham,KieuSanPham, GiaSanPham, HinhAnh 
										FROM sanpham 
										WHERE $condition
										ORDER BY MaSanPham DESC
										LIMIT $page_num , $per_page";
																			
										$result = $conn->query($sql);
																	
										if($result->num_rows == 0){
											echo "Không tìm thấy <b>".$search."</b> trong cửa hàng";
										}else{
												echo "<h4>Có <b>$count</b> kết quả trả về với từ khóa <b>$search</b></h4>";
												while($row = $result->fetch_assoc()) {
												echo '<div class="col-sm-4"><div class="product-image-wrapper"><div class="single-products"><div class="productinfo text-center">';
												echo '<img src="'.$row['HinhAnh'].'" alt="" />';
												echo '<h2>'.$row['GiaSanPham'].'.000 VND</h2>';
												echo '<p>'.$row['KieuSanPham'].'</p>';
												echo '<p>'.$row['TenSanPham'].'</p>';
												echo '<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a></div><div class="product-overlay"><div class="overlay-content">';
												echo '<h2>'.$row['GiaSanPham'].'.000 VND</h2>';
												echo '<p>'.$row['TenSanPham'].'</p>';
												echo '<a href="addcart.php?item=$row[MaSanPham]" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a></div></div></div><div class="choose"><ul class="nav nav-pills nav-justified"><li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li><li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li></ul></div></div></div>';
												
											}
									
									}
								}
									
								
								$keyword =str_replace(" ","+",$search);
								echo "</div><div class='row'><ul class='pagination alg-right-pad'>";
								echo '<li><a href="search.php?search='.$keyword.'&ok=&page=1">Trang đầu</a></li>';
								if($page >= 2){
									$i = $page;
								}
								else $i = 1;
								for($i; $i<$page + 4 && $i <= $num_of_page ;$i++){
									echo '<li><a href="search.php?search='.$keyword.'&ok=&page='.$i.'"> ';
									if($i == $page){
										echo '<strong style="color:orange">'.$i.'</strong>';
									}
									else
										echo $i;
									echo' </a></li>';
							}
							
							echo '<li><a href="search.php?search='.$keyword.'&ok=&page='.$num_of_page.'">Trang cuối</a></li>';
							
							echo "</ul></div>";
							
							$conn->close();
						}
	require '../layout/foot.html';
							
?>
	