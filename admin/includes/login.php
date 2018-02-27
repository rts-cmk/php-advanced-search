<?php
if (isset($_GET['logout'])) {
	session_destroy();
	header('Location: ?page=login');
}

$errorMessages = [];

if ($_POST) {
	$sql = "SELECT user_id, passphrase
					FROM users WHERE username = :username";
	$stmt = $conn->prepare($sql);
	$stmt->execute([':username' => $_POST['username']]);

	if ($stmt->rowCount() === 1) {
		$result = $stmt->fetch();
		if (password_verify($_POST['passphrase'], $result['passphrase'])) {
			session_start();
			$_SESSION['isLoggedIn'] = true;
			$_SESSION['userId'] = $result['user_id'];
			header('Location: ?page=dashboard');
		} else {
			$errorMessages['password'] = "Incorrect passphrase";
		}
	} else {
		$errorMessages['username'] = "This user does not exist";
	}
}
?>
<form action="" method="post" class="loginForm">
	<h1>Log in</h1>
	<div>
		<label for="loginForm__username">Username</label>
		<input type="text" name="username" id="loginForm__username" value="<?=@$_POST['username']?>">
		<span class="errorMessage"><?=$errorMessages['username']?>&nbsp;</span>
	</div>
	<div>
		<label for="loginForm__password">Passphrase</label>
		<input type="password" name="passphrase" id="loginForm__password">
		<span class="errorMessage"><?=$errorMessages['password']?>&nbsp;</span>
	</div>
	<button type="submit" class="button button--primary">Log in</button>
</form>