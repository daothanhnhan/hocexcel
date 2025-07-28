<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function giang_vien ($id) {
		global $conn_vn;
		if (isset($_POST['edit_giangvien'])) {
			$src= "../images/";
			// $src = "uploads/";
			$image = '';

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$name = $_POST['name'];
			$note = $_POST['note'];
			// $tu = $_POST['tu'];
			
			if ($image == '') {
				$sql = "UPDATE teacher SET name = '$name', note = ? WHERE id = $id";
			} else {
				$sql = "UPDATE teacher SET name = '$name', note = ?, image = '$image' WHERE id = $id";
			}

			
			$stmt = $conn_vn->prepare($sql);
			$stmt->bind_param("s", $note);
			$stmt->execute();
			// $result = mysqli_query($conn_vn, $sql);
			echo '<script type="text/javascript">alert(\'Bạn đã sửa giảng viên thành công.\');</script>';
		}
	}

	giang_vien($_GET['id']);

	function getTeacher ($id) {
		global $conn_vn;
		$sql = "SELECT * FROM teacher WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		return $row;
	}
	$teacher = getTeacher($_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin Giảng viên<br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên giảng viên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $teacher['name'] ?>" required/>
            <p class="titleRightNCP">Thông tin giảng viên</p>
            <textarea name="note" class="titleRightNCP ckeditor" rows="5" required><?= $teacher['note'] ?></textarea>
            <p class="titleRightNCP">Ảnh</p>
            <input type="file" class="txtNCP1" name="image"/>
            <img src="/images/<?= $teacher['image'] ?>" alt="img" width="200">
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="edit_giangvien">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>