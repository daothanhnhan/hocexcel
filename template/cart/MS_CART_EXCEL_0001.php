<?php 
	$total_cart = 0;
	if (isset($_SESSION['shopping_cart'])) {
		$total = $_SESSION['total'];
		foreach ($_SESSION['shopping_cart'] as $v) {
			$total_cart++;
		}
	}
?>
<a href="/gio-hang" title="">
    <i class="fa fa-shopping-bag" aria-hidden="true"></i>
    <span><?= $total_cart ?></span>    
</a>