<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>KimOanhShoes</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
 
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +0987554394</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i>14520650@gm.uit.edu.vn</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4" >
					
						<div class="search_box">
							<input id="text_input" style="background-color:white;" type="text" placeholder="Search"/>
							<button class="btn btn-danger" type="submit" id="search"><b class="fa fa-search"></b></button>
						</div>
						
					</div>
					<div class="col-sm-4">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							KimOanh<a href="index.php"><img src="images/Logo.jpg" alt="" style="width:40px;" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<?php 
										session_start();
										if(isset($_SESSION['username_login'])){
											echo "<li><a href='#'>Hi, ".$_SESSION['username_login']."</a></li>";
										}else{
											echo '<li><a href="#login-box" class="login-window"><i class="fa fa-user"></i>Login</a></li>';
											echo '<li><a href="#signup-box" class="login-window"><i class="fa fa-lock"></i>Sign up</a></li>';
										}
								?>
								<li><a href="cart.php"><i class="fa fa-shopping-cart"></i>Cart</a></li>
								<li><a href="contact-us.php"><i class="fa fa-phone"></i> Contact</a></li>
								
							</ul>
						</div>
					</div>
					<!------------------------------------------------------>
					<div class="login" id="login-box"><h3 align="center">Login</h3>

						<a class="close" href="#"><img class="img-close" title="Close Window" alt="Close" src="images/close.jpg" style="width:30px; height:30px;" /></a>
							<form class="login-content" action="login.php" method="post">
								<label class="username">
									<span>Username</span>
									<input id="username_login" type="text" autocomplete="on" name="username_login" placeholder="Username" value="" />
								 </label>
								 <label class="password">
									<span>Password</span>
									<input id="password_login" type="password" name="password_login" placeholder="Password" value="" />
								 </label>
								 <button class="button submit-button" type="submit" name="submit_login">Sign in</button>
								 <!--<a class="forgot" href="#">Forgot Password?</a>-->
							 </form>
					</div>
					<!------------------------------------------------------>
					<div class="login" id="signup-box"><h3 align="center">Sign up</h3>

						 <a class="close" href="#"><img class="img-close" title="Close Window" alt="Close" src="images/close.jpg" style="width:30px; height:30px;"/></a>
							<form class="login-content" action="signup.php" method="post">
								<label class="username">
									<span>Username *<span style="color:red; font-size:10px;"></span>	
									  <input id="username" type="text" name="username" placeholder="User name" value="" />
	
								</label>
								 <label class="password">
									 <span>Password *</span>
									  <input id="password" type="password" name="password" placeholder="Password" value="" />
									  
								 </label>
								 <label class="repassword">
									 <span>Re-password *</span>
									 <input id="repassword" type="password" name="repassword" placeholder="Re-Password" value="" />
									 <span><h6 id="check-password" style="color:red;"></h6></span>
								 </label>
								 <label class="email">
									 <span>Email *</span>
									 <input id="email" type="text" name="email" placeholder="Email" value="" />
				
								 </label>
								 <label class="phone">
									 <span>Phone</span>
									 <input id="phone" type="text" name="phone" placeholder="Phone" value="" />
								 </label>
								 <label class="address">
									 <span>Address</span>
									 <input id="address" type="text" name="address" placeholder="Address" value="" />
								 </label>	
								 <button class="button submit-button" type="submit" name="submit">Sign up</button>
							</form>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						
					</div>
				</div>

			</div>
			
		</div><!--/header-bottom-->
	</header><!--/header-->
	 
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center">Contact <strong>Us</strong></h2>    			    				    				
					<div id="gmap" class="contact-map">
					</div>
				</div>			 		
			</div>    	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Get In Touch</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required="required" placeholder="Email">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Contact Info</h2>
	    				<address>
	    					<p>E-Shopper Inc.</p>
							<p>935 W. Webster Ave New Streets Chicago, IL 60614, NY</p>
							<p>Newyork USA</p>
							<p>Mobile: +2346 17 38 93</p>
							<p>Fax: 1-714-252-0026</p>
							<p>Email: info@e-shopper.com</p>
	    				</address>
	    				<div class="social-networks">
	    					<h2 class="title text-center">Social Networking</h2>
							<ul>
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-google-plus"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-youtube"></i></a>
								</li>
							</ul>
	    				</div>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
	
	<footer id="footer"><!--Footer-->
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	<script src="js/dialog.js"></script>
</body>
</html>