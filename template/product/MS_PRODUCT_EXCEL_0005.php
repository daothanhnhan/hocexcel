<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-home-product gb-home-product-relate">
    <div class="container">
        <div class="titleCategoryProduct_excel">SẢN PHẨM LIÊN QUAN</div>
        <div class="gb-home-product-relate-slide owl-carousel owl-theme">
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product1.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product2.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product3.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product4.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product5.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product6.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product7.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-product_excel-item">
                    <div class="gb-product_excel-item-img">
                        <a href="chi-tiet-san-pham"><img src="/images/product8.jpg" alt="" class="img-responsive"></a>
                        <!--ADD TO CART-->
                        <?php include DIR_CART."MS_CART_EXCEL_0001.php";?>
                    </div>
                    <div class="gb-product_excel-item-text">
                        <h2><a href="chi-tiet-san-pham">Green Apple Brightening Eye Cream</a></h2>
                        <!--PRICE-->
                        <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        var owl = $('.gb-home-product-relate-slide');
        owl.owlCarousel({
            loop:true,
            margin:30,
            navSpeed:500,
            nav:true,
            dots:false,
            autoplay: true,
            rewind: true,
            navText:[],
            items:4
        });
    });
</script>