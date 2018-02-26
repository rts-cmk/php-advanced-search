<?php
if (!$_SESSION['isLoggedIn']) {
	header('Location: ?page=login');
	die();
}
if (!$hasPermission($_SESSION['userId'], 'create product')) {
	header('Location: ?page=forbidden');
	die();
}
?>
<h1>Create Product</h1>