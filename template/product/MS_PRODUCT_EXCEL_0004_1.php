<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_EXCEL_0001.php";?>
<?php
    $action_product = new action_product(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $detail_color = $action_product->getColorDetail_byUrl($slug, $lang);
    $id_product = $detail_color['product_id'];

    $details_product = $action_product->getProductDetail_byId($id_product, $lang);
    

?>
<div class="gb-chitietsanpham_excel">
    <div class="container">
        <div class="gb-chitietsanpham_excel-videobaihoc">
            <div class="row">
                <div id="size-youtube" class="col-sm-8">
                    <div class="gb-videobaihoc_left">
                        <h1>KHÓA HỌC <?= $details_product['product_name'] ?></h1>
                        <p id="video" style="overflow:hidden;margin-bottom: 20px;">
                            <?= $detail_color['color_stock'] ?>    
                        </p>
                        <!-- <button onclick="play_yt()" class="btn btn-primary">Play Video</button>
                        <button onclick="stop_yt()" class="btn btn-warning">Stop Video</button>
                        <button onclick="sizeTo()" class="btn btn-success">To</button>
                        <button onclick="sizeNho()" class="btn btn-success">Nhỏ</button>
                        <div>
                            <input id="YouTube-player-progress" type="range" value="0" min="0" max="100" onchange="youTubePlayerCurrentTimeChange(this.value);" oninput="youTubePlayerCurrentTimeSlide();">
                        </div> -->
                    </div>
                    <?php include DIR_EMAIL."MS_EMAIL_EXCEL_0001.php";?>
                </div>
                <div class="col-sm-4">
                    <div class="gb-chitietsanpham_excel-info-right">
                        <div class="gb-chitietkhoahoc_excel">
                            <h4>DANH SÁCH BÀI HỌC</h4>
                            <ul>
                                <?php
                                    $list_baihoc = $action_product->getListColor_byOrderASC($id_product);
                                    $d = 0;
                                    foreach ($list_baihoc as $item) {
                                        $d++;
                                ?>
                                    <li><a href="/<?= $item['friendly_url'] ?>">Bài <?= $d ?>: <?= $item['color_name'] ?></a></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <script type="text/javascript" src="http://www.youtube.com/player_api"></script> -->
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>

<style type="text/css" media="screen">
    /*#video iframe {
        pointer-events: none;
    }*/
</style>
<!-- <script>
    new YT.Player('player', {
    height: '550',
    width: '840',
    videoID: '-l80PrV1vAA',
    playerVars: {rel: 0, showinfo: 0, ecver: 2}
});
</script> -->
<script>
    var player;
    function onYouTubePlayerAPIReady() {player = new YT.Player('player');}
    //so on jquery event or whatever call the play or stop on the video.
    //to play player.playVideo();
    //to stop player.stopVideo();
</script>
<script type="text/javascript">
    function stop_yt () {
        // alert('stop');
        player.pauseVideo();

        // var vidSrc1 = $("iframe").prop('src').replace('autoplay=1','autoplay=0');
        // $("iframe").prop('src', vidSrc1);
    }
</script>
<script type="text/javascript">
    function play_yt () {
        // alert('play');
        player.playVideo();

        // var vidSrc2 = $("iframe").prop('src').replace('autoplay=0','autoplay=1');
        // $("iframe").prop('src', vidSrc2);
    }
</script>
<script type="text/javascript">
function youTubePlayerCurrentTimeChange(currentTime) {
    // 'use strict';
// alert(currentTime);
    // player.personalPlayer.currentTimeSliding = false;
    // if (youTubePlayerActive()) {
        player.seekTo(currentTime*player.getDuration()/100, true);
    // }
}

function youTubePlayerCurrentTimeSlide() {
    // 'use strict';

    // player.personalPlayer.currentTimeSliding = true;
}

function sizeTo () {
    // alert('to');
    player.setSize(2000, 800);
    document.getElementById("size-youtube").classList.remove("col-sm-8");
    document.getElementById("size-youtube").classList.add("col-sm-12");
    // document.getElementById("video")
}

function sizeNho () {
    player.setSize(1000, 500);
    document.getElementById("size-youtube").classList.remove("col-sm-12");
    document.getElementById("size-youtube").classList.add("col-sm-8");
}

window.onload = sizeNho;
</script>

