
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<div class="gb-tintuc-lienquan">
    <!--HEADER PRODUICT TOP-->
    <div class="gb-product-top">
        <div class="gb-tintuc-lienquan-title">Tin tức liên quan</div>
    </div>
    <!--SHOW PRODUCT ITEM-->
    <div class="gb-product-show">
        <div class="gb-tintuc-lienquan-three-item owl-carousel owl-theme">
            <div class="item">
                <div class="gb-tintuc-item">
                    <div class="item-img">
                        <a href="chi-tiet-tin-tuc"><img src="/images/image-1-770x550.jpg" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item-text">
                        <h2><a href="chi-tiet-tin-tuc">Massage đá nóng</a></h2>
                        <time> <i class="fa fa-calendar-plus-o" aria-hidden="true"></i> 23/03/2018</time>
                        <p>
                            Nhiều thế kỷ qua, liệu pháp thảo dược đã được dùng để điều trị nhiều chứng bệnh. Có
                            thể chúng không chữa khỏi hẳn, nhưng chúng có thể làm giảm các triệu chứng. Để điều trị
                            an toàn và hiệu quả, hãy tham vấn một nhà trị liệu thảo dược chuyên môn.
                        </p>
                        <div class="btn-doctiep">
                            <a href="chi-tiet-tin-tuc">Đọc tiếp</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="item">
                <div class="gb-tintuc-item">
                    <div class="item-img">
                        <a href="chi-tiet-tin-tuc"><img src="/images/image-6-770x550.jpg" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item-text">
                        <h2><a href="chi-tiet-tin-tuc">Massage tinh dầu</a></h2>
                        <time> <i class="fa fa-calendar-plus-o" aria-hidden="true"></i> 23/03/2018</time>
                        <p>
                            Massage bằng đá nóng giờ đây đã trở thành một phương pháp trị liệu, thư giãn, chăm sóc
                            sắc đẹp và củng là một trong những cách giải tỏa Stress hữu hiệu nhất.
                        </p>
                        <div class="btn-doctiep">
                            <a href="chi-tiet-tin-tuc">Đọc tiếp</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="gb-tintuc-item">
                    <div class="item-img">
                        <a href="chi-tiet-tin-tuc"><img src="/images/image-7-770x550.jpg" alt="" class="img-responsive"></a>
                    </div>
                    <div class="item-text">
                        <h2><a href="chi-tiet-tin-tuc">Liệu pháp thảo dược</a></h2>
                        <time> <i class="fa fa-calendar-plus-o" aria-hidden="true"></i> 23/03/2018</time>
                        <p>
                            Massage Tinh dầu là một phương pháp thực hiện rất nhẹ nhàng mang lại sự thư giãn cho
                            toàn bộ cơ thể, tăng khả năng tuần hoàn máu, giảm căng cơ cũng như giúp cơ thể dẻo
                            dai hơn. Tùy theo sở thích có thể lựa chọn các loại tinh dầu thiên nhiên sau:
                        </p>
                        <div class="btn-doctiep">
                            <a href="chi-tiet-tin-tuc">Đọc tiếp</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $('.gb-tintuc-lienquan-three-item').owlCarousel({
            loop:true,
            autoplay: true,
            responsiveClass:true,
            nav:true,
            navText:[],
            dots:false,
            margin:30,
            responsive:{
                0:{
                    items:1
                },
                768:{
                    items:3
                }
            }
        });
    });
</script>