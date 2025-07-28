<?php
    // Show List Comment
    $email = new action_email();
    $list_commnert = $email->getComment_user($id_product);
    $cout_cmt = count($list_commnert);
?>
<h6>Nhận xét (<?= $cout_cmt ?>)</h6>
    <?php
        foreach ($list_commnert as $item) {
    ?>
        <div class="gb-list-comment-item">
            <div class="row">
                <div class=" col-md-2 col-sm-2 col-xs-2">
                    <div class="item-comment-img">
                        <img src="/images/user.png" alt="" class="img-responsive">
                    </div>
                </div>
                <div class=" col-md-10 col-sm-10 col-xs-10">
                    <div class="item-comment-text">
                        <h4><?= $item['comment_user'] ?> <span><?= date('d-m-Y', strtotime($item['comment_date']))  ?></span></h4>
                        <p><?= $item['comment_content'] ?></p>
                    </div>
                </div>
            </div>
        </div>
    <?php } ?>