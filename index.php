<?php
    session_start();
    ob_start();
    $actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
    $folder = dirname(__FILE__);
    include_once('config.php');
    include_once('__autoload.php');
    $action = new action();
    include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";  
    include_once dirname(__FILE__).'/'.DIR_FUNCTIONS_PAGING."pagination.php";
    include_once 'functions/phpmailer/class.smtp.php';
    include_once 'functions/phpmailer/class.phpmailer.php';
    include_once "functions/vi_en.php";

    // Install MultiLanguage
    include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";
    include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;
    // Install Friendly Url
    include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";
    // Configure Website
    include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";
    // echo $translate['link_contact'];die;
    $trang = isset($_GET['trang']) ? $_GET['trang'] : '1';
    $action = new action();
    $cart = new action_cart();
    $menu = new action_menu();

    $rowConfig = $action->getDetail('config','config_id',1);
?>

<!doctype html>
<html lang="en">
<head>
    <!-- start - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- cần cấu hình linh hoạt -->
    <meta name="description" content="<?= $meta_des ?>">
    <!-- cần cấu hình linh hoạt -->
    <meta name="keywords" content="<?= $meta_key ?>">
    <!-- cần cấu hình linh hoạt -->
    <title><?= $title ?></title>
    <!-- cần cấu hình linh hoạt -->
    <link rel="icon" href="/images/<?= $rowConfig['icon_web'] ?>" type="image/gif" sizes="16x16">

    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/plugin/bootstrap/css/bootstrap-theme.css">
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css'>
    <link rel="stylesheet" href="/plugin/fonts/font-awesome/css/font-awesome.min.css">
    <script src="/plugin/jquery/jquery-2.0.2.min.js"></script>
    <script src="/plugin/bootstrap/js/bootstrap.js"></script>
    <!-- <link rel="stylesheet" href="/css/style.css"> -->
    <link rel="stylesheet" type="text/css" href="/css/style-hocexcel.css">
    <!-- end - cấu hình cơ bản, dùng chung cho tất cả các website chuẩn seo -->
    <style>
body{
-webkit-touch-callout: none;
-webkit-user-select: none;
-moz-user-select: none;
-ms-user-select: none;
-o-user-select: none;
user-select: none;
}
</style><script type=”text/JavaScript”>
function killCopy(e){
return false
}
function reEnable(){
return true
}
document.onselectstart=new Function (“return false”)
if (window.sidebar){
document.onmousedown=killCopy
document.onclick=reEnable
}
</script>
<script type='text/javascript'>
//<![CDATA[
// JavaScript Document
var message="NoRightClicking"; function defeatIE() {if (document.all) {(message);return false;}} function defeatNS(e) {if (document.layers||(document.getElementById&&!document.all)) { if (e.which==2||e.which==3) {(message);return false;}}} if (document.layers) {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=defeatNS;} else{document.onmouseup=defeatNS;document.oncontextmenu=defeatIE;} document.oncontextmenu=new Function("return false")
//]]>
</script>
</head>

<body>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5c0b6dc767f72462651f9c9d/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->

<!--HEADER-->
<?php include_once dirname(__FILE__).DIR_THEMES."header.php"; ?>
<!--CONTENT-->
<div class="gb-content">
<?php
    if (isset($_GET['page'])){
        
        $urlAnalytic = $action->getTypePage_byUrl($_GET['page'],$lang);    
        // echo $urlAnalytic;
        switch ($urlAnalytic) {
          case 'newscat_languages':
                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;
            case 'tin-tuc':
                include_once dirname(__FILE__).DIR_THEMES."tintuc.php"; break;
            case 'news_languages':               
                include_once dirname(__FILE__).DIR_THEMES."chitiettintuc.php"; break;
            case 'servicecat_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "dichvu.php";break;
            case 'service_languages':
                include_once dirname(__FILE__) . DIR_THEMES . "chitiet_dichvu.php";break;
            case 'page_language':
                include_once dirname(__FILE__) . DIR_THEMES . "gioithieu.php";break;
            case 'productcat_languages':              
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;
            case 'products':              
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;
            case 'khoa-hoc':
                include_once dirname(__FILE__).DIR_THEMES."sanpham.php"; break;
            case 'product_languages':
                include_once dirname(__FILE__).DIR_THEMES."chitietsanpham.php"; break;
            case 'color':
                include_once dirname(__FILE__).DIR_THEMES."chitietbaihoc.php"; break;
            // start - chưa hoàn thiện - url địa chỉ trang website
            case 'gio-hang':               
                include_once dirname(__FILE__).DIR_THEMES."giohang.php"; break;            
            case 'thanh-toan':           
                include_once dirname(__FILE__).DIR_THEMES."thanhtoan.php"; break;
            case 'xac-nhan-don-hang':           
                include_once dirname(__FILE__).DIR_THEMES."xacnhandonhang.php"; break;
            case 'huy-don-hang':           
                include_once dirname(__FILE__).DIR_THEMES."huydonhang.php"; break;
            case 'contact':           
                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;
            case 'lien-he':
                include_once dirname(__FILE__).DIR_THEMES."lienhe.php"; break;
            case 'search-news':
                include_once dirname(__FILE__) . DIR_THEMES . "search-news.php";break;
            case 'search-product':
                include_once dirname(__FILE__) . DIR_THEMES . "search-product.php";break;
            case 'search-service':
                include_once dirname(__FILE__) . DIR_THEMES . "search-service.php";break;
            case 'dang-ky':
                include_once dirname(__FILE__) . DIR_THEMES . "dangky.php";break;
            case 'dang-nhap':
                include_once dirname(__FILE__) . DIR_THEMES . "dangnhap.php";break;
            case 'dang-xuat':
                include_once dirname(__FILE__) . DIR_THEMES . "dangxuat.php";break;
            case 'forget-pass':
                include_once dirname(__FILE__) . DIR_THEMES . "quenmatkhau.php";break;
            case 'change-password':
                include_once dirname(__FILE__) .DIR_THEMES . "change-password.php";break;
            case 'thong-tin-tai-khoan':
                include_once dirname(__FILE__) .DIR_THEMES . "user-profile.php";break;
            case 'khoa-hoc-cua-toi':
                include_once dirname(__FILE__) .DIR_THEMES . "khoahoccuatoi.php";break;
            case 'cap-nhat-tai-khoan':
                include_once dirname(__FILE__) .DIR_THEMES . "update-infor.php";break;
            case 'don-hang':
                include_once dirname(__FILE__) .DIR_THEMES . "cart.php";break;
            case 'chi-tiet-don-hang':
                include_once dirname(__FILE__) .DIR_THEMES . "cart-detail.php";break;
            case 'kich-hoat':
                include_once dirname(__FILE__) .DIR_THEMES . "kichhoat.php";break;
            case 'thong-bao':
                include_once dirname(__FILE__) .DIR_THEMES . "thongbao.php";break;
            case 'doi-mat-khau':
                include_once dirname(__FILE__) . DIR_THEMES . "doi-mat-khau.php";break;

            case 'tuan1111111111':
                include_once dirname(__FILE__) . DIR_THEMES . "tuan.php";break;
            // end - chưa hoàn thiện - url địa chỉ trang website
        }
    }
    else include_once dirname(__FILE__).DIR_THEMES."home.php";
    ?>
</div>

<!--FOOTER-->
<div class="gb-footer">
    <?php include_once dirname(__FILE__).DIR_THEMES."footer.php"; ?>

</div> 
<script type="text/javascript" src="/functions/language/lang.js"></script>

<!-- Code chong Click chuot phai -->
<!-- <script type='text/javascript'>
    var message="NoRightClicking"; function defeatIE() {if (document.all) {(message);return false;}} function defeatNS(e) {if (document.layers||(document.getElementById&&!document.all)) { if (e.which==2||e.which==3) {(message);return false;}}} if (document.layers) {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=defeatNS;} else{document.onmouseup=defeatNS;document.oncontextmenu=defeatIE;} document.oncontextmenu=new Function("return false")
</script> -->
<!-- Code chong F12 + CTRL + U -->
<script type='text/javascript'>
    checkCtrl=false $(&#39;*&#39;).keydown(function(e){
    if(e.keyCode==&#39;17&#39;){ checkCtrl=false  } }).keyup(function(ev){
    if(ev.keyCode==&#39;17&#39;){ checkCtrl=false } }).keydown(function(event){
    if(checkCtrl){
    if(event.keyCode==&#39;85&#39;){ return false; } } })
</script>

</body>

</html>