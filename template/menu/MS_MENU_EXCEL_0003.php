<div class="gb-cackhoahochangdau_excel">
    <div class="container">
        <!-- <h2>Các khóa học hàng đầu của <span>HOCEXCEL123</span></h2> -->
        <h2><?= $rowConfig['content_home4'] ?></h2>
        <p></p>
        <!-- <p>Hãy chọn cho mình một khóa học, tôi tin bạn sẽ hài lòng</p> -->
        <?php
            $list_menu = $menu->getListMainMenu_byOrderASC();
            $menu->showMenu_byMultiLevel_mainMenuExcel($list_menu,0,$lang,0);
        ?>
    </div>
</div>