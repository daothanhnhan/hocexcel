<div class="gb-locchekbox-sidebar-excel widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-excel">Danh mục khóa học</h3>
        <div class="widget-content">
            <ul>
                <?php
                    $product = new action_product();
                    $list_productcat = $product->getListProductCat_byOrderASC();
                    foreach ($list_productcat as $item) {
                ?>
                    <li><a href="/<?= $item['friendly_url'] ?>"> <?= $item['productcat_name'] ?> <span class="count">2</span></a></li>
                <?php } ?>
            </ul>
        </div>
    </aside>
</div>