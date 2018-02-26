<?php
if (!$_SESSION['isLoggedIn']) {
	header('Location: ?page=login');
}
include_once './functions/userroles.php';
?>
<h1>Dashboard</h1>