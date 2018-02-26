<?php

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
			header('Location: ?page=forside');
		} else {
			echo "Forkert adgangskode";
		}
	} else {
		echo "Denne bruger eksisterer ikke";
	}
}
?>
<h1>Log ind</h1>
<form action="" method="post">
<input type="text" name="username" placeholder="Brugernavn">
<input type="password" name="passphrase" placeholder="Adgangskode">
<button type="submit">Log ind</button>
</form>