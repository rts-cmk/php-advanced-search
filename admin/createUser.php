<?php
require_once '../db.php';

if ($_POST) {
	$sql = "INSERT INTO users
					SET username = :username,
							passphrase = :passphrase";

	$stmt = $conn->prepare($sql);
	if($stmt->execute([':username' => $_POST['username'],
								 ':passphrase' => password_hash($_POST['passphrase'], PASSWORD_DEFAULT)])) {
									 echo "User created";
								 } else {
									 echo "nope";
								 }
}
?>
<form action="" method="post">
<input type="text" name="username">
<input type="password" name="passphrase">
<button type="submit">Opret bruger</button>
</form>