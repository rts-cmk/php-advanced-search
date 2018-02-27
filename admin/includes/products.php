<?php
if (!$_SESSION['isLoggedIn']) {
	header('Location: ?page=login');
	die();
}
?>
<div class="fullWidth">
	<h1>Products<?=$hasPermission($_SESSION['userId'], 'create product')?' <a href="#!"><i class="fa fa-plus-square"></i></a>':''?></h1>
	<table class="striped">
		<thead>
			<tr>
				<th>#</th>
				<th>Product Name</th>
				<th>Price</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>123</td>
				<td>Stuff</td>
				<td></td>
				<td><?=$hasPermission($_SESSION['userId'], 'update product')?'<a href="#!"><i class="fa fa-pencil-alt"></i></a>':''?><?=$hasPermission($_SESSION['userId'], 'delete product')?' <a href="#!"><i class="fa fa-trash-alt"></i></a>':''?></td>
			</tr>
			<tr>
				<td>34</td>
				<td>Other Stuff</td>
				<td></td>
				<td><?=$hasPermission($_SESSION['userId'], 'update product')?'<a href="#!"><i class="fa fa-pencil-alt"></i></a>':''?><?=$hasPermission($_SESSION['userId'], 'delete product')?' <a href="#!"><i class="fa fa-trash-alt"></i></a>':''?></td>
			</tr>
			<tr>
				<td>45</td>
				<td>Awesome things</td>
				<td></td>
				<td><?=$hasPermission($_SESSION['userId'], 'update product')?'<a href="#!"><i class="fa fa-pencil-alt"></i></a>':''?><?=$hasPermission($_SESSION['userId'], 'delete product')?' <a href="#!"><i class="fa fa-trash-alt"></i></a>':''?></td>
			</tr>
			<tr>
				<td>65</td>
				<td>Thingies</td>
				<td></td>
				<td><?=$hasPermission($_SESSION['userId'], 'update product')?'<a href="#!"><i class="fa fa-pencil-alt"></i></a>':''?><?=$hasPermission($_SESSION['userId'], 'delete product')?' <a href="#!"><i class="fa fa-trash-alt"></i></a>':''?></td>
			</tr>
			<tr>
				<td>235</td>
				<td>Doodles	</td>
				<td></td>
				<td><?=$hasPermission($_SESSION['userId'], 'update product')?'<a href="#!"><i class="fa fa-pencil-alt"></i></a>':''?><?=$hasPermission($_SESSION['userId'], 'delete product')?' <a href="#!"><i class="fa fa-trash-alt"></i></a>':''?></td>
			</tr>
		</tbody>
	</table>
</div>