<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_EXCEL_0001.php";?>
<!-- Xử lý kích hoạt -->
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

    function check_cart($mail_buyer, $code){
        global $conn_vn;
        $sql = "SELECT * FROM cart WHERE mail_buyer = '$mail_buyer' and code_active = '$code'";
        $result = mysqli_query($conn_vn, $sql);
        if (mysqli_num_rows($result) > 0) {

        $row = mysqli_fetch_assoc($result);

            return $row;

        }
    }

    function update_cart($code){
        global $conn_vn;
        $sql = "UPDATE cart SET id_orderState = 4 WHERE code_active = '$code'";
        $result = mysqli_query($conn_vn, $sql);
        if($result){
            echo '<script type="text/javascript">alert(\'Kích hoạt mã thành công.\');window.location.href="/khoa-hoc-cua-toi";</script>';
        }
    }


    if(isset($_POST['active'])){
        $code_active = isset($_POST['code_active']) ? $_POST['code_active'] : '';
        $cart_detail = check_cart($mail_buyer, $code_active);

        if(!empty($cart_detail)){
            $update_code = update_cart($code_active);
        }else{
            echo '<script type="text/javascript">alert(\'Mã kích hoạt không đúng. Kích hoạt mã thất bại.\');</script>';
        }
    }
?>

<div class="gb-kichhoatkhoahoc_hocexcel">
    <div class="container">
        <h1>Kích hoạt khóa học</h1>
        <h3>Nhập mã mà bạn nhận trong email được vào bên dưới</h3>
        <div class="gb-line_hocexcel"></div>
        <form action="" method="post" accept-charset="utf-8">
            <div class="vk-newlist-banner-test-search">
                <input type="text" placeholder="Nhập mã kích hoạt..." name="code_active" required="">
                <button type="submit" class="btn btn-kichhoat" name="active">Kích hoạt</button>
            </div>
        </form>
        <p>
            kích hoạt khóa học miễn phí 24/7 . <a href=""><i class="fa fa-phone" aria-hidden="true"></i> 0961557052</a>
        </p>
    </div>
</div>