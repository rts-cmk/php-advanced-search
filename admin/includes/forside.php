<?php
if (!$_SESSION['isLoggedIn']) {
	header('Location: ?page=login');
}
include_once './functions/userroles.php';
?>
<h1>Forside</h1>
<?php
echo hasRole($_SESSION['userId'], 'create product')
	/* if (hasRole($_SESSION['userId'], 'create product')) {
		echo "du må godt!";
	} else {
		echo "fy fy skamme";
	} */
?>