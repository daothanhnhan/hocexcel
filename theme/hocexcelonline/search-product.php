<?php
	$limit = 9;
	function search ($lang, $trang, $limit) {
		if (isset($_POST['q'])) {
			$q = $_POST['q'];
			$q = trim($q);
	        $q = vi_en1($q);	        
		} else {
			$q = $_GET['search'];
        	$q = str_replace('-', ' ', $q);
		}

		$start = $trang * $limit;
		global $conn_vn;
		$sql = "SELECT * FROM product_languages INNER JOIN product ON product_languages.product_id = product.product_id WHERE product_languages.friendly_url like '%$q%' And product_languages.languages_code = '$lang'";
		$result = mysqli_query($conn_vn, $sql);
		$count = mysqli_num_rows($result);

		$sql = "SELECT * FROM product_languages INNER JOIN product ON product_languages.product_id = product.product_id WHERE product_languages.friendly_url like '%$q%' And product_languages.languages_code = '$lang' LIMIT $start,$limit";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		while ($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}
		$return = array(
				'data' => $rows,
				'count' => $count,
				'q' => $q
			);
		return $return;
	}
	$rows = search($lang, $trang, $limit);
?>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_EXCEL_0001.php";?>
<div class="gb-page-sanpham_excel">
    <div class="container">
        <div class="col-md-9">
            <div class="row">
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $action_product = new action_product();
                        $rowLang1 = $action_product->getProductLangDetail_byId($row['product_id'],$lang);
                        $row1 = $action_product->getProductDetail_byId($row['product_id'],$lang); 
                ?>
                    <div class="col-sm-4">
                        <div class="gb-khoahocexcel_excel-item">
                            <div class="item-img_excel">
                                <a href="/<?= $rowLang1['friendly_url'] ?>">
                                    <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive">
                                </a>
                            </div>
                            <div class="item_text_excel">
                                <h3><a href="/<?= $rowLang1['friendly_url'] ?>"><?= $rowLang1['lang_product_name'] ?></a></h3>
                                <!--PRICE-->
                                <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                                <div class="sobai_excel">
                                    Số bài học: <span><?= $row1['product_expiration'] ?></span>
                                </div>
                                <div class="gb-divider"></div>
                                <div class="item-giangvien_excel">
                                    <div class="item-giangvien_excel-img">
                                        <img src="/images/giangvien/1494353861.jpg" alt="" class="img-responsive img-circle">
                                    </div>
                                    <div class="item-giangvien_excel_text">
                                        <p><?= $row1['product_shape'] ?></p>
                                        <span>Giảng Viên</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
            <?php include DIR_PAGINATION."MS_PAGINATION_EXCEL_0001.php";?>
        </div>
        <div class="col-md-3">
            <?php include DIR_SIDEBAR."MS_SIDEBAR_EXCEL_0001.php";?>
            <?php include DIR_SIDEBAR."MS_SIDEBAR_EXCEL_0006.php";?>
            <?php include DIR_SIDEBAR."MS_SIDEBAR_EXCEL_0007.php";?>
        </div>
    </div>
</div>