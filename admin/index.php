<?php
session_start();
// Hent database-forbindelsesobjektet
require_once '../db.php';
require_once './functions/userroles.php';
// Sørg for, at der altid er et ?page i URL'en (og sæt standard til 'forside')
if (!isset($_GET['page']) || empty($_GET['page'])) {
	header('Location: ?page=forside');
	die();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Administration</title>
	<script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
	<link rel="stylesheet" href="assets/stylesheets/style.css">
</head>
<body>
	<div class="actionbar">
		Awesome PHP Admin Panel
	</div>
	<label for="hamburgerIcon"><i class="fa fa-bars"></i></label>
	<input type="checkbox" id="hamburgerIcon">
	<nav class="primaryNavigation">
		<ul>
			<?php if ($_SESSION['isLoggedIn']) { ?>
			<li><a href="?page=dashboard">Dashboard</a></li>
			<?=$hasPermission($_SESSION['userId'], 'update frontpage')?'<li><a href="?page=editFrontpage">Edit Frontpage</a></li>':''?>
			<li><a href="?page=products">Products</a></li>
			<?=$_SESSION['isLoggedIn']?'<li><a href="?page=login&logout">Log out</a></li>':''?>
			<?php } ?>
		</ul>
	</nav>
	<main class="content">
	<?php
		// Router: Inkludér sider afhængig af hvad der står i URL'en
		$file = './includes/' . $_GET['page'] . '.php';
    if (file_exists($file)) {
			include_once $file;
		} else {
			include_once './includes/login.php';
		}
  ?>
	</main>
	<footer>Copyright &copy; <?=date('Y')?></footer>
	<script src="assets/javascripts/app.js"></script>
</body>
</html>