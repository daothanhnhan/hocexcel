<?php 
	$id = $_GET['id'];
	function listColor ($id) {
		global $conn_vn;
		$sql = "SELECT * FROM color WHERE product_id = $id";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		$num = mysqli_num_rows($result);
		if ($num > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
		}
		return $rows;
	}
	$list_color = listColor($id);
?>
<h1><a class="btn btn-primary" role="button" href="/admin/?page=them-mau&id=<?= $id ?>"><i style="float: none;" class="fa fa-plus" aria-hidden="true"></i> Thêm bài học </a></h1>

<div class="boxPageNews">
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tên bài học</th>
                    <th>Link bài học</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach ($list_color as $item) {
                    ?>
                        <tr>
                            <td><a href="/admin/?page=sua-mau&id=<?= $item['color_id'] ?>&pro=<?= $id ?>" title=""><?= $item['color_name']; ?></a></td>
                            <td class="video"><?= $item['color_stock'] ?></td>
                            <?php if ($_SESSION['admin_role']==1) { ?>
                            <td>
                                <a style="color:#FFF;padding: 5px 10px;margin-right: 10px;" class="btn btn-danger" role="button" href="/admin/?page=xoa-mau&id=<?= $item['color_id'] ?>&pro=<?= $id ?>" onclick="return confirm('bạn có trắc muốn xóa.');" style="float: none;">XÓA</a> 
                                <a style="color:#FFF;padding: 5px 10px;" class="btn btn-warning" role="button" href="/admin/?page=sua-mau&id=<?= $item['color_id'] ?>&pro=<?= $id ?>" style="float: none;">SỬA</a></td>
                            <?php } ?>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
 
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>

<style type="text/css" media="screen">
    .video iframe{width: 500px !important;height: 300px !important;position: relative;top: 0 !important;}
</style>