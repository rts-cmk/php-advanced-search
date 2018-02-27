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
<div class="firstTwo">
	<h1>Create Product</h1>
	<form action="" method="post">
		whatevah!
	</form>
</div>
<div class="third">
	<h2>sploink</h2>
</div>