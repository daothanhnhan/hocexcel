<div class="gb-breadcrumbs_excel">
    <div class="container">
        <span><img src="/images/icons/excel.png" alt="" class="img-responsive"></span>
        <ol class="breadcrumb">
        	<?php if ($use_breadcrumb) { ?>
	            <li><a href="#">Home</a></li>
	            <li><a href="/<?= $breadcrumb_url ?>"><?= $breadcrumb_name ?></a></li>
	            <li><a href="#"><?= $title ?></a></li>
	        <?php } else{ ?>
        		<li><a href="#">Home</a></li>
	            <li><a href="#"><?= $title ?></a></li>
	        <?php } ?>
        </ol>
    </div>
</div>