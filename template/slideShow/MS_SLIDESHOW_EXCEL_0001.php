<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="/plugin/animsition/css/animate.css">
<div class="gb-slideshow_excel">
    <div class="gb-slideshow_excel-slide owl-carousel owl-theme">
        <div class="item">
            <img src="/images/slide/slide-organic1.jpg" alt="" class="img-responsive">
        </div>
        <div class="item">
            <img src="/images/slide/slide2.jpg" alt="" class="img-responsive">
        </div>
        <div class="item">
            <img src="/images/slide/slide3.jpg" alt="" class="img-responsive">
        </div>
    </div>
</div>

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>
<script>
    $(document).ready(function (){
        $('.gb-slideshow_excel-slide').owlCarousel({
            loop:true,
            margin:0,
            navSpeed:500,
            nav:true,
            dots: false,
            autoplay: true,
            rewind: true,
            navText:[],
            items:1
        });
    });
</script>