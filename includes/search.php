<h1>Avanceret søgning</h1>
<form action="" method="get">
  <input type="hidden" name="page" value="search">
  <label for="category">Kategori:</label>
  <select name="category" id="category">
    <option value="">Vælg en kategori</option>
    <?php
    $sql = 'SELECT categoryId, categoryName FROM category';
    foreach($conn->query($sql) as $row) {
      ?>
      <option value="<?=$row['categoryId']?>"<?=@$_GET['category']===$row['categoryId']?' selected':''?>><?=$row['categoryName']?></option>
      <?php
    }
    ?>
  </select>
  <label for="brand">Mærke:</label>
  <select name="brand" id="brand">
    <option value="">Vælg et mærke</option>
    <?php
    $sql = 'SELECT brandId, brandName FROM productbrand';
    foreach($conn->query($sql) as $row) {
      ?>
      <option value="<?=$row['brandId']?>"<?=@$_GET['brand']===$row['brandId']?' selected':''?>><?=$row['brandName']?></option>
      <?php
    }
    ?>
  </select>
  <label for="maxprice">Max pris:</label>
  <input type="number" name="maxprice" id="maxprice" value="<?=@$_GET['maxprice']?>">
  <label for="fritekst">Søgeord:</label>
  <input type="text" name="fritekst" id="fritekst" value="<?=@$_GET['fritekst']?>">
  <button type="submit">Søg</button>
</form>
<?php
  $sql = 'SELECT products.productId, products.productTitle,
products.productDesc, products.productPrice,
category.categoryName, productbrand.brandName
FROM products
INNER JOIN category
	ON category.categoryId = products.fkCategory
INNER JOIN productbrand
  ON productbrand.brandId = products.productbrand
WHERE false';

$paramArray = [];

if (isset($_GET['fritekst']) && !empty($_GET['fritekst'])) {
  $sql .= " OR (products.productDesc LIKE CONCAT('%', :fritekst, '%')
OR products.productTitle LIKE CONCAT('%', :fritekst, '%')
OR category.categoryName LIKE CONCAT('%', :fritekst, '%')
OR productbrand.brandName LIKE CONCAT('%', :fritekst, '%'))";

$paramArray[':fritekst'] = $_GET['fritekst'];
}

if (isset($_GET['category']) && is_numeric($_GET['category'])) {
  if (empty($_GET['fritekst'])) {
    $sql .= " OR";
  } else {
    $sql .= " AND";
  }

  $sql .= " products.fkCategory = :categoryId";

  $paramArray[':categoryId'] = $_GET['category'];
}

if (isset($_GET['brand']) && is_numeric($_GET['brand'])) {
  if (empty($_GET['fritekst']) && empty($_GET['category'])) {
    $sql .= " OR";
  } else {
    $sql .= " AND";
  }

  $sql .= " products.productBrand = :brandId";

  $paramArray[':brandId'] = $_GET['brand'];
}

if (isset($_GET['maxprice']) && is_numeric($_GET['maxprice'])) {
  if (empty($_GET['fritekst'])
  && empty($_GET['category'])
  && empty($_GET['brand'])) {
    $sql .= " OR";
  } else {
    $sql .= " AND";
  }

  $sql .= " products.productPrice <= :price";

  $paramArray[':price'] = $_GET['maxprice'];
}

$stmt = $conn->prepare($sql);
$stmt->execute($paramArray);

$formatResults = function($result) {
  ?>
  <div>
  <h2><?=$result['brandName']?> <?=$result['productTitle']?></h2>
  <p><?=strlen($result['productDesc']) > 185 ? substr($result['productDesc'], 0, 180).' ...' : $result['productDesc'] ?></p>
  <p>DKK <?=number_format($result['productPrice'], 2, ',', '.')?></p>
  </div>
  <?php
};

$results = $stmt->fetchAll();

if (count($results) > 0)
  array_walk($results, $formatResults);
else
  echo "<p>Næhæhæ, der var ikke en skid i databasen!</p>";
?>
