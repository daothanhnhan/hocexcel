<?php
    $email = new action_email();
    $email->add_comment();
?>
<form action="" method="post" accept-charset="utf-8">
    <div class="form-group">
        <label>Mô tả đánh giá <span>(Tối đa 2500 ký tự)</span></label>
        <textarea class="form-control" rows="6" name="comment_content" required=""></textarea>
        <input type="hidden" name="product_id" value="<?= $id_product ?>">
    </div>
    <div class="form-group">
        <div class="row">
            <div class="col-sm-2">
                <label>Đánh giá bởi</label>
            </div>
            <div class="col-sm-10">
                <div class="row">
                    <div class="col-sm-2" style="text-align: right;">
                        <i class="fa fa-user" aria-hidden="true" style="font-size: 36px; display:  inline-block"></i>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" placeholder="Nhập tên của bạn để hiển thị cho người khác thấy" required="" name="comment_user">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn_guiudanhgia_excel" name="send_review">Gửi đánh giá <i class="fa fa-star" aria-hidden="true"></i></button>
    </div>
</form>