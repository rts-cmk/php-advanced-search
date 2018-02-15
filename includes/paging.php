<?php

$limit = 3;

if (!isset($_GET['res'])
|| !is_numeric($_GET['res'])
|| $_GET['res'] < 1) {
    $page = 1;
} else {
    $page = $_GET['res'];
}

$offset = ($page-1)*$limit;

$sql = 'SELECT * FROM products';

$result = $conn->query($sql);

$totalResults = $result->rowCount();

$totalPages = ceil($totalResults / $limit);

// ====================

$sql = 'SELECT * FROM products LIMIT :offset,:max';

$stmt = $conn->prepare($sql);
$stmt->bindParam(':max', $limit, PDO::PARAM_INT);
$stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();

foreach($stmt->fetchAll() as $row) {
    print_r($row);
    echo '<hr>';
}

if ($totalResults > $limit) {

    echo 'Side: ';

    for ($page = 1; $page <= $totalPages; $page++) {
        ?>
        <a href="?<?=$_SERVER['QUERY_STRING']?>&res=<?=$page?>"><?=$page?></a>
        <?php
    }

}