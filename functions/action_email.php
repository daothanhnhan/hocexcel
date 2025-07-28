<?php 
// link huong dan: https://www.sitepoint.com/sending-emails-php-phpmailer/
	
/**
* 
*/
define('SITE_NAME', $_SERVER["HTTP_HOST"]);
class action_email 
{
        function email_send ($email_to, $title = "", $content = "") {
                $nFrom = "HỌC EXCEL 123";    //mail duoc gui tu dau, thuong de ten cong ty ban
                $mFrom = 'khoahoc.hocexcel123@gmail.com';  //dia chi email cua ban 
                $mPass = 'hien123456';       //mat khau email cua ban
                $nTo = 'You'; //Ten nguoi nhan
                //$mTo = $_POST['email_dichvu'];   //dia chi nhan mail
                $mTo = $email_to;
                $mail             = new PHPMailer();
                //$body             = "<p>Kế toán thuế trọn gói: $ktttg</p><p>Kê khai thuế online: $kktol</p><p>Rà soát sổ sách: $rsss</p><p>Hoàn thiện sổ sách: $htss</p><p>Quyết toán thuế: $qtt</p>";   // Noi dung email
                //$title = 'Thông tin khách hàng từ '.SITE_NAME;   //Tieu de gui mail
                $mail->IsSMTP();             
                $mail->CharSet  = "utf-8";
                $mail->SMTPDebug  = 0;   // enables SMTP debug information (for testing)
                $mail->SMTPAuth   = true;    // enable SMTP authentication
                $mail->SMTPSecure = "ssl";   // sets the prefix to the servier
                $mail->Host       = "smtp.gmail.com";    // sever gui mail.
                $mail->Port       = 465;         // cong gui mail de nguyen
                // xong phan cau hinh bat dau phan gui mail
                $mail->Username   = $mFrom;  // khai bao dia chi email
                $mail->Password   = $mPass;              // khai bao mat khau
                $mail->SetFrom($mFrom, $nFrom);
                $mail->AddReplyTo('khoahoc.hocexcel123@gmail.com', 'Phản Hồi Ý Kiến Khách Hàng'); //khi nguoi dung phan hoi se duoc gui den email nay
                $mail->Subject    = $title;// tieu de email 
                $mail->MsgHTML($content);// noi dung chinh cua mail se nam o day.
                $mail->AddAddress($mTo, $nTo);
                // $mail->AddAddress('khoahoc.hocexcel123@gmail.com');

                $mail->Send();
        }
        
        function gui_email () {
            global $conn_vn;
                if (isset($_POST['send_email'])) {
                    $email = $_POST['email'];
                    $date = date('Y-m-d H:i:s');
                    $sql = "INSERT INTO regMember (regMember_mail, regMember_createdDate) VALUES ('$email','$date')";
                    $result = mysqli_query($conn_vn, $sql);
                    // $gui = $this->email_send($_POST['email'], 'test', 'noi dung test');
                    echo '<script type="text/javascript">alert(\'Bạn đã đăng kí nhận thông tin khuyến mãi thành công. Xin cảm ơn!.\');</script>';
                }
        }

        function lien_he () {
            global $conn_vn;
                if (isset($_POST['lien_he'])) {
                        $name = $_POST['name'];
                        $phone = $_POST['phone'];
                        $email = $_POST['email'];
                        $address = $_POST['address'];
                        $note = $_POST['note'];
                        $sql = "INSERT INTO lien_he (name, email, phone, address, comment) VALUES ('$name','$email','$phone','$address','$note')";
                        $result = mysqli_query($conn_vn, $sql);
                        $str = $this->form($name, $phone, $email, $note);
                        //echo $str;die;
                        $this->email_send($email, "Thông Tin Khách Hàng Từ V-ONION", $str);
                        echo '<script type="text/javascript">alert(\'Bạn đã đăng ký liên hệ thành công.\');</script>';
                }
        }

        function form ($name, $phone, $email, $note) {
                $str = "
                        <ul>
                                <li>Tên: $name</li>
                                <li>Số điện thoại: $phone</li>
                                <li>Thư điện tử: $email</li>
                                <li>Nội dung: $note</li>
                        </ul>
                ";
                return $str;

        }

        function add_comment(){
            global $conn_vn;
            if(isset($_POST['send_review'])){
                $comment_user = isset($_POST['comment_user']) ? $_POST['comment_user'] : '';
                $comment_content = isset($_POST['comment_content']) ? $_POST['comment_content'] : '';
                $comment_date = date('Y-m-d H:i:s');
                $product_id = $_POST['product_id'];

                $sql = "INSERT INTO comment_user(comment_user, comment_content, comment_date, product_id) VALUES ('$comment_user', '$comment_content', '$comment_date', $product_id)";
                // echo $sql;die;
                $result = mysqli_query($conn_vn, $sql);
                if($result){
                    echo '<script type="text/javascript">alert(\'Bạn đã bình luận khóa học thành công.\');</script>';
                }
            }
        }

        public function getComment_user($id){
            global $conn_vn;
            $sql = "SELECT * FROM comment_user WHERE state = 1 AND product_id = $id ORDER BY comment_id desc";//echo $sql;   
            $result = mysqli_query($conn_vn,$sql);
            $result = mysqli_query($conn_vn,$sql);
            while($row = mysqli_fetch_array($result)){
                $rows[] = $row;
            }
            return $rows;
        }

        public function check_code($code, $user){
            global $conn_vn;
            if(isset($_POST['active'])){
                $code_active = isset($_POST['code_active']) ? $_POST['code_active'] : '';
                
            }
        }


}
?>