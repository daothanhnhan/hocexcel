<?php 

    function addColor ($id) {
    	$src= "../images/";
    	global $conn_vn;
    	if (isset($_POST['add_color'])) {
    		$color_name = trim($_POST['color_name']);
            $color_stock = trim($_POST['color_stock']);
            $friendly_url = trim($_POST['friendly_url']);
    		$sql = "INSERT INTO color (product_id, color_name, color_stock, friendly_url) VALUES (?, ?, ?, ?)";
    		$stmt = $conn_vn->prepare($sql);
    		$stmt->bind_param('isss', $id, $color_name, $color_stock, $friendly_url);
    		$stmt->execute();
            echo '<script type="text/javascript">alert("Bạn đã thêm bài học thành công.");window.location.href="/admin/?page=mau-san-pham&id='.$id.'";</script>';
    	}
    }
    addColor($_GET['id']);
?>

<script src="js/previewImage.js"></script>
<script>

    $(document).ready(function() {


        $("input[id=fileUpload2").previewimage({

            div: "#preview2",

            imgwidth: 90,

            imgheight: 90

        });

    });

</script>
<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung trang</span>
            <p class="subLeftNCP">Nhập tiêu đề và nội dung cho trang<br /><br /></p>     
            <p class="subLeftNCP">Chọn ảnh đại diện. Tỉ lệ hình ảnh yêu cầu là 4x3.</p> 
             <div id="wrapper">

                <input id="fileUpload" type="file" name="fileUpload1" onchange="showImage(this)" />
                <br />
                <div id="image-holder">

                </div>

            </div>        
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên bài học</p>
            <input type="text" class="txtNCP1" name="color_name" id="title" onchange="ChangeToSlug_Baihoc()" required/>
        </div>

        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Link nội dung bài học</p>
            <input type="text" class="txtNCP1" name="color_stock" required/>

            <!-- <div class="boxNodeContentPage"> -->
                <p class="titleRightNCP">Đường dẫn</p>
                <div id="slug">
                    <input type="text" id="slug1" class="txtNCP1" name="friendly_url" value="">
                </div>
            <!-- </div> -->
            
        </div>

        

        <!-- <div class="boxNodeContentPage">
            <h3>Ảnh phụ màu</h3>
            <input type="file" name="fileUpload2" id="fileUpload2">
            <div class="preview2" id="preview2"> 
                
            </div>
        </div> -->
    </div><!--end rowNodeContentPage-->
    
    <button name="add_color" class="btn btnSave" type="submit" <?php echo ($_SESSION['admin_role']==2)?'style="display: none;"':'';?> >Lưu</button>
</form>
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>

<script>
    function ChangeToSlug_Baihoc(){
        var title, slug;
        //alert ("a");
        //Lấy text từ thẻ input title 
        title = document.getElementById("title").value;
        // document.getElementById('title_seo').value = title;
        //Đổi chữ hoa thành chữ thường
        slug = title.toLowerCase();
     
        //Đổi ký tự có dấu thành không dấu
        slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
        slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
        slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
        slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
        slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
        slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
        slug = slug.replace(/đ/gi, 'd');
        //Xóa các ký tự đặt biệt
        slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
        //Đổi khoảng trắng thành ký tự gạch ngang
        slug = slug.replace(/ /gi, "-");
        //Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
        //Phòng trường hợp người nhập vào quá nhiều ký tự trắng
        slug = slug.replace(/\-\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-/gi, '-');
        slug = slug.replace(/\-\-/gi, '-');
        //Xóa các ký tự gạch ngang ở đầu và cuối
        slug = '@' + slug + '@';
        slug = slug.replace(/\@\-|\-\@|\@/gi, '');
        //In slug ra textbox có id “slug”
        document.getElementById('slug1').value = slug;
        // document.getElementById('title_seo').value = title;
        // $.ajax({
        //     url : "xuly.php",
        //     type : "get",
        //     dataText : "text",
        //     data : {
        //         slug : $('#slug1').val(),
        //         table : $('#table').val()
        //     },
        //     success : function(html){
        //         $('#slug1').val(html);
        //     }
        // });
    }
</script>