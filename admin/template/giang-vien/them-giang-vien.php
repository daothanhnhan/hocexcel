<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function giang_vien () {
		global $conn_vn;
		if (isset($_POST['add_giangvien'])) {
			$src= "../images/";
			// $src = "uploads/";

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			}

			$name = $_POST['name'];
			$note = $_POST['note'];
			// $tu = $_POST['tu'];
			$image = $_FILES['image']['name'];

			$sql = "INSERT INTO teacher (name, note, image) VALUES ('$name', ?, '$image')";
			$stmt = $conn_vn->prepare($sql);
			$stmt->bind_param("s", $note);
			$stmt->execute();
			// $result = mysqli_query($conn_vn, $sql);
			echo '<script type="text/javascript">alert(\'Bạn đã thêm giảng viên thành công.\');window.location.href="index.php?page=giang-vien"</script>';
		}
	}

	giang_vien();
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin Giảng viên<br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên giảng viên</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Thông tin giảng viên</p>
            <textarea name="note" class="titleRightNCP ckeditor" rows="5" required></textarea>
            <p class="titleRightNCP">Ảnh</p>
            <input type="file" class="txtNCP1" name="image" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_giangvien">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>