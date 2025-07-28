<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<div class="gb-khoahonoibat_excel">
    <div class="container">
        <div class="gb-khoahonoibat_excel-title">
            <h2>Khóa học nổi bật</h2>
        </div>
        <div class="gb-khaohonoibat_excel-slide1 owl-carousel owl-theme">
            <?php
                $product = new action_product();
                $list_product_hot = $product->getListProductHot_hasLimit(4);
                foreach ($list_product_hot as $item) {
            ?>
                <div class="item">
                    <div class="gb-khoahocexcel_excel-item">
                        <div class="item-img_excel">
                            <a href="/<?= $item['friendly_url'] ?>">
                                <img src="/images/<?= $item['product_img'] ?>" alt="" class="img-responsive">
                            </a>
                        </div>
                        <div class="item_text_excel">
                            <h3><a href="/<?= $item['friendly_url'] ?>"><?= $item['product_name'] ?></a></h3>
                            <?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0002.php";?>
                            <div class="sobai_excel">
                                Số bài học: <span><?= $item['product_expiration'] ?></span>
                            </div>
                            <div class="gb-divider"></div>
                            <div class="item-giangvien_excel">
                                <div class="item-giangvien_excel-img">
                                    <img src="/images/<?= $action->getTeacher($item['teacher_id'])['image'] ?>" alt="" class="img-responsive img-circle">
                                </div>
                                <div class="item-giangvien_excel_text">
                                    <p><?= $action->getTeacher($item['teacher_id'])['name'] ?></p>
                                    <span>Giảng Viên</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-khaohonoibat_excel-slide1').owlCarousel({
            loop:true,
            margin:30,
            navSpeed:500,
            nav:false,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:2
                },
                991:{
                    items: 3
                }
            }
        });
    });
</script>