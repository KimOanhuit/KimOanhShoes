<?php
	
	require '../layout/head.html';
	require '../layout/body_short.html';
	require 'database_config.php';
	
	
	if(!isset($_SESSION['username_login']))
	{	
		
?>	
		<div class="tab">

			<button class="tablinks" onclick="openSelect(event, 'Signin')" id="defaultOpen" >Signin</button>
			<button class="tablinks" onclick="openSelect(event, 'Login')">Login</button>

		</div>
		<div id="Signin" class="tabcontent">
			<form class="login-content" action="../upload/signup_checkout.php" method="post">	
				<label class="username"><input id="username" type="text" name="username" placeholder="User name" value="" size="30"/></label>
				<label class="password"><input id="password" type="password" name="password" placeholder="Password" value="" size="30"/></label>
				<label class="email"><input id="email" type="text" name="email" placeholder="Email" value="" size="30"/></label>
				<button class="button submit-button" type="submit" name="submit">Sign up</button>
			</form>
		</div>

		<div id="Login" class="tabcontent">
			<form class="login-content" action="../upload/login_checkout.php" method="post">
				<label class="username"><input id="username_login" type="text" autocomplete="on" name="username_login" placeholder="Username" value="" size="30"/></label>
				<label class="password"><input id="password_login" type="password" name="password_login" placeholder="Password" value="" size="30"/></label>
				<button class="button submit-button" type="submit" name="submit_login">Sign in</button>			 
			</form>
		</div>
	
<?php
	}else{
		$sql = "SELECT SoDienThoai, DiaChi FROM khachhang WHERE TenKhachHang = '".$_SESSION['username_login']."'";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
?>
	<div style="border: 1px solid lightblue; width: 75%; margin-left: 80px;">
		<form  class="checkout" action="../upload/address.php" method="post" style="padding-left:120px;">
			<h3 style="color:orange;">Đăng kí địa chỉ giao hàng</h3>
				<p>Vui lòng nhập số điện thoại và địa chỉ mà bạn muốn giao hàng</p>
				<table>
					<tr>
						<td><input id="phone" type="text" name="phone" placeholder="Phone" value="<?php echo $row['SoDienThoai']; ?>" size="50" /></td>
						
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td><input id="address" type="text" name="address" placeholder="Address" value="<?php echo $row['DiaChi']; ?>" size="50"/></td>
					</tr>
					<tr>
						<td><button class="button submit-button" type="submit" name="submit">Xác nhận</button></td>
					</tr>
				</table>
		</form>
	</div>
<?php		
	}	
	require '../layout/foot.html';
?>