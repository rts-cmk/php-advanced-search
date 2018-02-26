<?php
if (!$_SESSION['isLoggedIn']) {
	header('Location: ?page=login');
	die();
}
if (!$hasPermission($_SESSION['userId'], 'update frontpage')) {
	header('Location: ?page=forbidden');
	die();
}
?>
<h1>Edit Frontpage</h1>