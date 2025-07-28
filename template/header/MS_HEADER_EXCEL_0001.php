<!--MENU DESTOP-->
<header>
    <div class="gb-header-excel">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="gb-header-excel-left">
                        <div class="gb-header-top_logo">
                            <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" alt="" class="img-responsive"></a>
                            <h1 style="color: #207244;">ĐỪNG NGHĨ NỮA CỨ LÀM ĐI </h1>
                        </div>
                        <?php include DIR_MENU."MS_MENU_EXCEL_0001.php";?>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gb-header-excel-center">
                        <?php include DIR_SEARCH."MS_SEARCH_EXCEL_0002.php";?>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="gb-header-excel-right">
                        <div class="gb-header-excel-right-kichhoat-cart">
                            <ul>
                                <li>
                                    <?php
                                        if(isset($_SESSION['user_name_gbvn'])){
                                    ?>
                                        <a href="/kich-hoat">Kích hoạt</a>
                                    <?php }else{ ?>
                                        <a class="active_top" href="">Kích hoạt</a>
                                    <?php } ?>
                                </li>
                                <li>
                                    <div class="header-cart-excel">
                                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="gb-header-excel-right-login-register">
                            <?php
                                if(isset($_SESSION['user_name_gbvn'])){
                            ?>
                                <div class="dropdown">
                                    <a href="/khoa-hoc-cua-toi"><i class="fa fa-user-circle" aria-hidden="true"></i> <?= $_SESSION['user_name_gbvn'] ?></a>
                                    <ul class="dropdown-content">
                                        <li><a href="/khoa-hoc-cua-toi"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Khóa học của tôi</a></li>
                                        <li><a href=""><i class="fa fa-user" aria-hidden="true"></i> Tài khoản</a></li>
                                        <li><a href="/dang-xuat"><i class="fa fa-sign-out" aria-hidden="true"></i> Đăng xuất</a></li>
                                    </ul>
                                </div>
                            <?php }else{ ?>
                                <a href="/dang-nhap">Đăng ký</a>
                                <a href="/dang-nhap">Đăng nhập</a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!--MENU KHÓA HỌC-->
<?php include DIR_MENU."MS_MENU_EXCEL_0003.php";?>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
     $(document).ready(function () {
        $(".sticky-menu").sticky({topSpacing:0});
    });

    $(".active_top").click(function(){
        alert('Bạn phải đăng nhập để kích hoạt khóa học');
        return false;
    });
</script>