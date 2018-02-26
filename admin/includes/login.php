<?php

if (isset($_GET['logout'])) {
	session_destroy();
	header('Location: ?page=login');
}

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
			echo "Forkert adgangskode";
		}
	} else {
		echo "Denne bruger eksisterer ikke";
	}
}
?>
<h1>Log in</h1>
<form action="" method="post">
<input type="text" name="username" placeholder="Username">
<input type="password" name="passphrase" placeholder="Passphrase">
<button type="submit">Log in</button>
</form>