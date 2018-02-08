<?php
// Hent database-forbindelsesobjektet
require_once 'db.php';
// Sørg for, at der altid er et ?page i URL'en (og sæt standard til 'forside')
if (!isset($_GET['page']) || empty($_GET['page'])) {
  header('Location: ?page=forside');
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>City Cykler A/S</title>
  </head>
  <body>
    <header>
      <form action="" method="get">
        <input type="hidden" name="page" value="search">
        <input type="search" name="fritekst">
        <button type="submit">Søg</button>
        <a href="?page=search">Avanceret søgning</a>
      </form>
      <nav>
        <a href="?page=forside">Forside</a> <a href="?page=cykler">Cykler</a>
      </nav>
    </header>
    <hr>
    <?php
    // Router: Inkludér sider afhængig af hvad der står i URL'en
    switch ($_GET['page']) {
      case 'forside':
        include_once './includes/forside.php';
        break;
      case 'cykler':
        include_once './includes/cykler.php';
        break;
      case 'search':
        include_once './includes/search.php';
        break;
      default:
        include_once './includes/404.php';
        break;
    }
    ?>
    <hr>
    <footer>Copyright &copy; <?=date('Y')?> City Cykler A/S</footer>
  </body>
</html>
