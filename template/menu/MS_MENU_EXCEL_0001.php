<div class="gb-header-danhmuc_excel">
    <div class="gb-header-danhmuc-title">
        <i class="fa fa-th" aria-hidden="true"></i> Danh mục
    </div>
    <div class="gb-header-danhmuc_excel-menu">
        <ul>
            <?PHP
                $product = new action_product();
                $list_productcat = $product->getListProductCat_byOrderASC();
                foreach ($list_productcat as $item) {
            ?>
                <li>
                    <span><img src="/images/<?= $item['productcat_img'] ?>" alt=""></span>
                    <a href="/<?= $item['friendly_url'] ?>">
                        <?= $item['productcat_name'] ?>
                    </a>
                </li>
            <?php } ?>
        </ul>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('.gb-header-danhmuc-title').click(function () {
           $('.gb-header-danhmuc_excel-menu').slideToggle();
        });
    });
</script>