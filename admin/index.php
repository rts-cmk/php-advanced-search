<?php
session_start();
// Hent database-forbindelsesobjektet
require_once '../db.php';
// Sørg for, at der altid er et ?page i URL'en (og sæt standard til 'forside')
if (!isset($_GET['page']) || empty($_GET['page'])) {
  header('Location: ?page=forside');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Administration</title>
</head>
<body>
	<?php
		// Router: Inkludér sider afhængig af hvad der står i URL'en
		$file = './includes/' . $_GET['page'] . '.php';
    if (file_exists($file)) {
			include_once $file;
		} else {
			include_once './includes/login.php';
		}
  ?>
</body>
</html>