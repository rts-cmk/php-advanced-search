<?php
session_start();

if (!$_SESSION['isLoggedIn']) {
	header('Location: login.php');
}
?>
<h1>Hemmelig side</h1>
<?=$_SESSION['userId']?>