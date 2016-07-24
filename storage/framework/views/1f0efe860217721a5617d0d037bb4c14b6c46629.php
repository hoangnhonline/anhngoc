<div id="mv-info">
    <!--hoangcmt<div class="play-notice">
        <div class="alert alert-warning" style="margin-bottom: 0; border-radius: 0;">
            <i class="fa fa-warning mr5"></i> If the movie does not work, please try to stream it with other browser.
        </div>
    </div>-->
    <div id="media-player" class="cssload-center cssload-2x">
        <div class="cssload"><span></span></div>
        <video id="videoPlayer" preload="metadata" controls="" poster="<?php echo e(Helper::showImage( $detail->image_url )); ?>">
            <source id="mp4Source" src="" type="video/mp4">               
        </video>
    </div>   
    <!-- Load player -->

    <div id="bar-player">
        <!--<a href="#mv-info" class="btn bp-btn-light"><i class="fa fa-lightbulb-o"></i> <span></span></a>-->

        <!--<span id="button-favorite"></span>-->
        <a href="#commentfb" class="btn bp-btn-review"><i class="fa fa-comments"></i>
        <span>Comment (<span id="comment-count">0</span>)</span></a>
        <a class="btn bp-btn-report" data-target="#pop-report" data-toggle="modal" style="color: #fff000; float: right"><i class="fa fa-warning"></i> Báo link hỏng</a>

        <div class="clearfix"></div>
    </div>
    <div class="mobile-btn">        
        <a class="btn btn-block btn-lg btn-success btn-02" target="_blank" href="<?php echo e(route('download')); ?>?slug=<?php echo e($detail->slug); ?>&url=<?php echo e($detail->url); ?>"><i class="fa fa-download mr10"></i>Download in <?php echo e($detail->quality == 1 ? "HD" : ( $detail->quality == 2 ? "SD" : "CAM" )); ?></a>
        <div class="clearfix"></div>
    </div>
    <div id="favorite-alert" style="display: none;">
        <div class="alert alert-success" role="alert">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
            <i class="fa fa-check"></i> <span id="favorite-message"></span>
            <a target="_blank" href="user/movies/favorite" title="Your favorite" class="alert-link">your favorite.</a>
        </div>
    </div>
    <div id="report-alert" style="display: none;">
        <div class="alert alert-success" role="alert">
            <a href="javascript:void(0)" class="close" data-dismiss="alert" aria-label="close">×</a>
            <i class="fa fa-check"></i> Cảm ơn bạn đã báo link hỏng, chúng tôi sẽ cập nhật sớm nhất.
        </div>
    </div>

    <!--<div id="list-eps">

</div>hoangcmt-->
    <div class="mvi-content">
        <div class="mvic-btn">
            <div class="mv-rating">

            </div>
            <div class="clearfix"></div>
          
        </div>
        <div class="thumb mvic-thumb" style="background-image: url(<?php echo e(Helper::showImage($detail->image_url)); ?>);"></div>
        <div class="mvic-desc">
            <h3><?php echo e($detail->title); ?></h3>
            <!--hoangcmt<div class="block-trailer">
                <a data-target="#pop-trailer" data-toggle="modal" class="btn btn-primary">
                    <i class="fa fa-video-camera mr5"></i>Trailer
                </a>
            </div>
            -->
            <div class="block-social">

                <!-- Go to www.addthis.com/dashboard to customize your tools -->
                <div class="addthis_native_toolbox"></div>

            </div>
            <?php if( $detail->description ): ?>
            <div class="desc"><?php echo e($detail->description); ?></div>
            <?php endif; ?>
            <div class="mvic-info">
                <div class="mvici-left">
                    <!--hoangcmt<p>
                        <strong>Genre: </strong>
                        <a target="_blank" href="genre/action/" title="Action">Action</a>, <a target="_blank" href="genre/sci-fi/" title="Sci-Fi">Sci-Fi</a>, <a target="_blank" href="genre/horror/" title="Horror">Horror</a> </p>
                    <p>
                        <strong>Actor: </strong>
                        <a target="_blank" href="actor/christian-boeving" title="Christian Boeving">Christian Boeving</a>, <a target="_blank" href="actor/-mike-mitchell" title="Mike Mitchell">Mike Mitchell</a>, <a target="_blank" href="actor/-tara-cardinal" title="Tara Cardinal">Tara Cardinal</a> </p>
                    <p>
                        <strong>Director: </strong>
                        <a href="#" title="Luca Boni">Luca Boni</a>, <a href="#" title="Marco Ristori">Marco Ristori</a> </p>-->
                    <p>
                        <strong>Danh mục: </strong>
                        <a target="_blank" href="<?php echo e($cateDetail->slug); ?>" title="<?php echo e($cateDetail->name); ?>"><?php echo e($cateDetail->name); ?></a> 
                    </p>
                    <?php if( $detail->duration ): ?>
                    <p><strong>Thời lượng:</strong> <?php echo e($detail->duration); ?></p>
                    <?php endif; ?>

                    <p><strong>Chất lượng video:</strong> <span class="quality"><?php echo e($detail->quality == 1 ? "HD" : ( $detail->quality == 2 ? "SD" : "CAM" )); ?></span>
                    </p>
                    <p style="margin-top:5px">
                    <a href="<?php echo e(route('download')); ?>?slug=<?php echo e($detail->slug); ?>&url=<?php echo e($detail->url); ?>" target="_blank" class="btn btn-block btn-lg btn-success btn-02"><i class="fa fa-download mr10"></i>Download in <?php echo e($detail->quality == 1 ? "HD" : ( $detail->quality == 2 ? "SD" : "CAM" )); ?></a></p>
                </div>
                <!--<div class="mvici-right">
                    

                    <!--hoangcmt<p><strong>Release:</strong> 2013</p>

                    <p><strong>IMDb:</strong> 2.3</p>
                </div>-->
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
            /*$.get(base_url + 'ajax/movie_rate_info/' + '14452', function(data) {
                $('.mv-rating').html(data);
            })*/
        })
    </script>
</div>
<style type="text/css">
.hero-unit {
    margin: 0 auto 0 auto;
}

.hero-unit video {
    width: 100%;
}
</style>
<input type="hidden" id="video_url" value="<?php echo e($detail->url); ?>">
<input type="hidden" name="_token" id="token" value="<?php echo e(csrf_token()); ?>">