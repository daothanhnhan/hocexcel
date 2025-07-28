<?php 
    $product_related1 = $action_product->getListProductRelate_byIdCat_hasLimit($productcat_id, 4);//var_dump($product_related1);die;
?>
<div class="gb-khoahoccungchuyenmuc-sidebar-excel widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-excel">Khóa học liên quan</h3>
        <div class="widget-content">
            <?php 
            foreach ($product_related1 as $item) {
                $row = $item;
                $rowLang = $action_product->getProductLangDetail_byId($row['product_id'],$lang);
            ?>
            <div class="gb-khoahocexcel_excel-item">
                <div class="item-img_excel">
                    <a href="/<?= $rowLang['friendly_url'] ?>">
                        <img src="/images/<?= $row['product_img'] ?>" alt="" class="img-responsive">
                    </a>
                </div>
                <div class="item_text_excel">
                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h3>
                </div>
            </div>
            <?php } ?>
        </div>
    </aside>
</div>