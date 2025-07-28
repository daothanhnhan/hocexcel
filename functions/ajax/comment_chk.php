<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];
	$sql = "SELECT * FROM comment_user WHERE comment_id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$state = $row['state'];
	if ($state == 0) {
		$sql = "UPDATE comment_user SET state = 1 WHERE comment_id = $id";
	} else {
		$sql = "UPDATE comment_user SET state = 0 WHERE comment_id = $id";
	}
	$result = mysqli_query($conn_vn, $sql);
?>