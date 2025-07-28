<?php 
if (isset($_GET['product_id'])) {
  $comment = $action->getList('comment_user','product_id',$_GET['product_id'],'comment_id','desc',$trang,20,'comment');//var_dump($comment);
} else {
  $comment = $action->getList('comment_user','','','comment_id','desc',$trang,20,'comment');//var_dump($comment);
}
?>
<div class="container">
  <h2>Bảng Comment.</h2>            
  <table class="table">
    <thead>
      <tr>
      	<th>Name</th>
        <th>Comment</th>
        <th>Course</th>
        <th>Show</th>
      </tr>
    </thead>
    <tbody>
    <?php 
    foreach ($comment['data'] as $item) { 
      $course = $action->getDetail('product', 'product_id', $item['product_id'])['product_name'];
    ?>
      <tr>
        <td><?php echo $item['comment_user'];?></td>
        <td><?php echo $item['comment_content'];?></td>
        <td><a href="index.php?page=comment&product_id=<?= $item['product_id'] ?>"><?php echo $course; ?></a></td>
        <td><input type="checkbox" name="state" value="<?= $item['comment_id'] ?>" onclick="chkComment(this)" <?= ($item['state']==1) ? 'checked' : '' ?> ></td>
      </tr>
      <?php $i++; } ?>
    </tbody>
  </table>
<?php
    echo $comment['paging'];
?>  
</div>
<script>
    function chkComment (data) {
        // alert(data.value);
        var id = data.value;
        var xhttp = new XMLHttpRequest();
          xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
             var out = this.responseText;
             // alert(out);
            }
          };
          xhttp.open("GET", "/functions/ajax/comment_chk.php?id="+id, true);
          xhttp.send();
    }
</script>