<?php
	session_start();
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	$masp;
	for($i = 1; $i < 10000; $i++){
		$masp = "".$i;
		$sql = "SELECT MaSanPham FROM sanpham WHERE MaSanPham='$masp'";
		$result = $conn->query($sql);
		if(mysqli_num_rows($result) == 0)//khong ton tai => lay ra xai => break de ngat tuc la hk tang them i nua tuc la lay masp de dung
			break;
		
	}
	
?>
<style>
	table, td{
		margin:10px;
		padding:10px;
		
	}
</style>
<div style="border: 1px solid lightblue; width: 75%; margin-left: 80px;">
		<form  class="checkout" action="admin_add_product.php" method="get" style="padding-left:120px;">
			<h3 style="color:orange;">Thêm sản phẩm mới vào cơ sở dữ liệu</h3>
				<p>Vui lòng nhập vào thông tin sản phẩm cần thêm</p>
				<table>
					<tr>
						<td><input type="text" name="masp" placeholder="Mã sản phẩm" value="<?php echo $masp; ?>" size="50" readonly style="background-color:#D7D7D7"></td>					
					</tr>
					<tr>
						<td><input type="text" name="tensp" placeholder="Tên sản phẩm" value="" size="50"></td>
					</tr>
					<tr>
						<td>Loại sản phẩm: <select name="loaisp">
							<option value="Nam" selected>Nam</option>
							<option value="Nữ">Nữ</option>
						</select></td>
					</tr>
					<tr>
						<td>Kiểu sản phầm: <select name="kieusp">
							<option value="XỎ" selected>Giày tây xỏ</option>
							<option value="MỌI">Giày mọi</option>
							<option value="CỘT DÂY">Giày tây cột dây</option>
							<option value="GIÀY VẢI">Giày vải</option>
							<option value="GIÀY BÍT GÓT CAO">Giày bít cao gót</option>
							<option value="GIÀY BÍT ĐỂ XẸP">Giày bít đế xẹp</option>
							<option value="GIÀY BÍT ĐẾ XUỒNG">Giày bít đế xuồng</option>
							<option value="GIÀY BÚP BÊ">Giày búp bê</option>
							<option value="GIÀY XĂNG ĐAN GÓT CAO">Giày xăng đan gót cao</option>
			
						</select></td>
					</tr>
					<tr>
						<td><input type="text" name="giasp" placeholder="Giá sản phẩm" value="" size="50"></td>
					</tr>
					<tr>
						<td><input type="text" name="hinhanh" placeholder="URL Hình ảnh" value="" size="50"></td>
					</tr>
					<tr>
						<td><button class="btn btn-primary" type="submit" name="submit">Thêm</button></td>
					</tr>
				</table>
		</form>
		<!--<div id="showerror"></div>
		<script language="javascript">
            $('form').submit(function (){
                alert('Bạn đã click thêm mới sản phẩm');
                return false;
            });
        </script>
	</div>-->
	
<!--<script>
	$('form').submit(function (){
		
    // Xóa trắng thẻ div show lỗi
    $('#showerror').html('');
 
    var masp = $('masp').val();
    var tensp = $('tensp').val();
	var loaisp = $('loaisp').val();
	var kieusp = $('kieusp').val();
	var giasp = $('giasp').val();
	var hinhanh = $('hinhanh').val();
 
    // Kiểm tra dữ liệu có null hay không
    if ($.trim(masp) == '' || $.trim(tensp) == '' || $.trim(loaisp) == '' || $.trim(kieusp) == '' || $.trim(giasp) == '' || $.trim(hinhanh) == ''){
        //alert('Bạn chưa nhập tên đăng nhập');
        return false;
    }

    $.ajax({
        url : 'process.php',
        type : 'get',
        dataType : 'json',
        data : {
            masp : masp,
            tensp : tensp,
			loaisp : loaisp,
			kieusp : kieusp,
			giasp : giasp,
			hinhanh : hinhanh
        },
        success : function (result)
        {
            // Kiểm tra xem thông tin gửi lên có bị lỗi hay không
            // Đây là kết quả trả về từ file process.php
            if (!result.hasOwnProperty('error') || result['error'] != 'success')
            {
                //alert('Có vẻ như bạn đang hack website của tôi');
                return false;
            }
 
            var html = '';
 
            // Lấy thông tin lỗi mã sản phẩm
            if ($.trim(result.masp) != ''){
                html += result.masp + '<br/>';
            }
 
            // Lấy thông tin lỗi tensp
            if ($.trim(result.tensp) != ''){
                html += result.tensp;
            }
		
            if ($.trim(result.loaisp) != ''){
                html += result.loaisp;
            }
			
            if ($.trim(result.kieusp) != ''){
                html += result.kieusp;
            }
			
            if ($.trim(result.giasp) != ''){
                html += result.giasp;
            }
			
            if ($.trim(result.hinhanh) != ''){
                html += result.hinhanh;
            }
 
            // Cuối cùng kiểm tra xem có lỗi không
            // Nếu có thì xuất hiện lỗi
            if (html != ''){
                $('#showerror').append(html);
            }
            else {
                // Thành công
                $('#showerror').append('Thêm thành công');
            }
        }
    });
 
    return false;
});

</script>-->