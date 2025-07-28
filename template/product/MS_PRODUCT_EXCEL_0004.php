<?php 
    include_once 'admin/action_order.php';
    $order = new action_order();
    $user_id = $_SESSION['user_id_gbvn'];

    //Lấy thong tin tai khoan user
    function get_list_user_1($id){
        global $conn_vn;
        $sql = "SELECT * FROM user Where user_id = '$id'";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        return $row;
    }

    $user = get_list_user_1($user_id);

    $mail_buyer = $user['user_email'];
    

    $action_product = new action_product();

    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);
    $row1 = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);
    $_SESSION['productcat_id_relate'] = $row1[$nameColIdProductCat_product];
    $_SESSION['sidebar'] = 'productDetail';
    $arr_id = $row1['productcat_ar'];
    $arr_id = explode(',', $arr_id);
    $productcat_id = (int)$arr_id[0];
    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);
    $breadcrumb_url = $product_breadcrumb['friendly_url'];
    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];
    $use_breadcrumb = true;

    $img_sub = json_decode($row1['product_sub_img']);


    
    // Kiem tra khoa khoa hoc nay da thanh toan chua
    $id_product = $row1['product_id'];
    function check_cart($mail_buyer, $id_product){
        global $conn_vn;
        $sql = "SELECT * FROM cart INNER JOIN cartdetail ON cart.id_cart = cartdetail.id_cart where mail_buyer = '$mail_buyer' and  id_product = '$id_product'";
        $result = mysqli_query($conn_vn, $sql);
        if (mysqli_num_rows($result) > 0) {

        $row = mysqli_fetch_assoc($result);

            return $row;

        }
    }

    $check = check_cart($mail_buyer, $id_product);
    $check_khoahoc = $check['id_orderState'];

    $teacher = $action_product->getTeacher($row1['teacher_id']);
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productDetail($slug, $lang);
?>
<style>
    .gb-giangvien_excel-right li {
        list-style-type: disc;
    }
</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_EXCEL_0001.php";?>
<div class="gb-chitietsanpham_excel">
    <div class="container">
        <div class="gb-chitietsanpham_excel-videobaihoc">
            <div class="row">
                <div class="col-sm-7">
                    <div class="gb-videobaihoc_left">
                        <h1><?= $rowLang['lang_product_name'] ?></h1>
                        <img src="/images/<?= $row1['product_img'] ?>" alt="" class="img-responsive" >
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="gb-videobaihoc_right">
                        <table class="table">
                            <!-- <tr>
                                <td>Thời gian</td>
                                <td><?= $row1['product_created_date'] ?></td>
                            </tr> -->
                            <tr>
                                <td>Giảng viên</td>
                                <td>Giảng viên <?= $teacher['name'] ?></td>
                            </tr>
                            <tr>
                                <td>Số bài học</td>
                                <td><?= $row1['product_expiration'] ?> bài học</td>
                            </tr>
                            <!-- <tr>
                                <td>Bài viết</td>
                                <td><?= $row1['product_material'] ?> bài viết chuyên môn/năm</td>
                            </tr> -->
                            <tr>
                                <td colspan="2"><?php include DIR_PRODUCT."MS_PRODUCT_EXCEL_0009.php";?></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div class="btn-muakhoahoc">
                                        <button type="button" name="add-to-cart" class="btn btn-addtocart_naustore btn_addCart btn-danger" onclick="load_url('<?php echo $row1['product_id'];?>', '<?php echo $rowLang['lang_product_name'];?>', '<?php echo $row1['product_price']-($row1['product_price']*($row1['product_price_sale']/100));?>')">
                                            ĐĂNG KÝ HỌC
                                        </button>
                                        <?php
                                            if($check_khoahoc == 4){
                                        ?>
                                            <a href="/<?= $rowLang['friendly_url'] ?>" title="">Tham gia khóa học</a>
                                        <?php
                                            }else{
                                        ?>
                                            <a id="active" href="#" title="">Tham gia khóa học</a>
                                        <?php 
                                            }
                                        ?>
                                        
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <div class="gb-chitietsanpham_excel-info">
                <div class="row">
                    <div class="col-sm-7">
                        <div class="gb-chitietsanpham_excel-info-left">
                            <h3>Giới thiệu khóa học</h3>
                            <?= $row1['product_des'] ?>

                            <div class="gb-giangvien_excel">
                                <h5><i class="fa fa-toggle-on" aria-hidden="true"></i> Giảng viên</h5>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="gb-giangvien_excel-left">
                                            <img src="/images/<?= $teacher['image'] ?>" alt="" class="img-responsive img-circle">
                                            <h4 class="text-center"><?= $teacher['name'] ?></h4>
                                            <ul>
                                                <li><i class="fa fa-envelope-o" aria-hidden="true"></i> Chuyên gia <?= $teacher['name'] ?></li>
                                                <li><i class="fa fa-twitter" aria-hidden="true"></i> Chuyên gia <?= $teacher['name'] ?></li>
                                                <li><i class="fa fa-facebook" aria-hidden="true"></i> Chuyên gia <?= $teacher['name'] ?></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="gb-giangvien_excel-right">
                                            <h4>GIẢNG VIÊN <?= $teacher['name'] ?></h4>
                                            <!-- <ul>
                                                <li><i class="fa fa-check" aria-hidden="true"></i> 12 năm kinh nghiệm tư vấn luật doanh nghiệp, luật sở hữu trí tuệ, luật lao động, BHXH.</li>
                                                <li><i class="fa fa-check" aria-hidden="true"></i> 8 năm kinh nghiệm làm Trưởng phòng HCNS.</li>
                                                <li><i class="fa fa-check" aria-hidden="true"></i> 8 năm kinh nghiệm tư vấn xây dựng hệ thống lương, thưởng trong doanh nghiệp.</li>
                                                <li><i class="fa fa-check" aria-hidden="true"></i> 10 năm kinh nghiệm tư vấn thủ tục và cung cấp dịch vụ BHXH trong doanh nghiệp.</li>
                                                <li><i class="fa fa-check" aria-hidden="true"></i> 8 năm kinh nghiệm đào tạo nghề nhân sự và pháp luật lao động, luật BHXH cho doanh nghiệp</li>
                                            </ul> -->
                                            <?= $teacher['note'] ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--nHAJAN XET CUAR HOJC VIEEN-->
                            <?php include DIR_EMAIL."MS_EMAIL_EXCEL_0001.php";?>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="gb-chitietsanpham_excel-info-right">
                            <div class="gb-chitietkhoahoc_excel">
                                <h4>DANH SÁCH BÀI HỌC</h4>
                                <?php
                                    if($check_khoahoc == 4){
                                        $active = "";
                                    }else{
                                        $active = "<i class='fa fa-lock' aria-hidden='true'></i>";
                                    }
                                ?>
                                <ul>
                                    <?php
                                        $list_baihoc = $action_product->getListColor_byOrderASC($row1['product_id']);
                                        $d = 0;
                                        foreach ($list_baihoc as $item) {
                                            $d++;
                                    ?>
                                        <li>
                                            <?php
                                                if($check_khoahoc == 4){
                                            ?>
                                                <a href="/<?= $item['friendly_url'] ?>">Bài <?= $d ?>: <?= $item['color_name'] ?> <?= $active ?> </a>
                                            <?php }else{ ?>
                                                <a class="block" href="" disabled="disabled">Bài <?= $d ?>: <?= $item['color_name'] ?> <?= $active ?></a>
                                            <?php } ?>
                                        </li>
                                    <?php } ?>
                                </ul>
                                
                            </div>
                        </div>
                        <?php include DIR_SIDEBAR."MS_SIDEBAR_EXCEL_0002.php";?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           if (confirm('Khóa học đã được thêm vào giỏ hàng, bạn có muốn thanh toán luôn không')) {
              window.location = '/gio-hang';
          }else{
              location.reload();
          }
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
    $("#active").click(function(){
        alert('Bạn phải đăng ký mua để tham gia khóa học');
        return false;
    })
</script>