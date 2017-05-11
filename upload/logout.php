<?php
	session_start();
	unset($_SESSION['username_login']);
	header('Location: index.php');
?>