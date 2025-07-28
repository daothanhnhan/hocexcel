<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_EXCEL_0001.php";?>
<?php 
    $action = new action();
    $action_product = new action_product();                                                                                
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];
        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang[$nameColIdProductCat_productCatLanguage],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat[$nameColId_productCat],'desc',$trang,9,$slug);
    }else{
        $rows = $action->getList($nameTable_product,'','',$nameColId_product,'desc',$trang,9,'san-pham');
        
    }
    $_SESSION['sidebar'] = 'productCat';
?>  
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
<input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productcat($slug, $lang);
?>
<div class="gb-page-sanpham_excel">
    <div class="container">
        <div class="col-md-9">
            <div class="row">
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
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
                                        <img src="/images/<?= $action_product->getTeacher($row1['teacher_id'])['image'] ?>" alt="" class="img-responsive img-circle">
                                    </div>
                                    <div class="item-giangvien_excel_text">
                                        <p><?= $action_product->getTeacher($row1['teacher_id'])['name'] ?></p>
                                        <span>Giảng Viên</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php 
                if ($d%3==0) {
                    echo '<hr style="width:100%;border:0;" />';
                }
            } ?>
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