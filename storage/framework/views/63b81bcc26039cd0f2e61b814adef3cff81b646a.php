<div id="slider">
  <div class="swiper-wrapper">
    <?php if( $hotArr->count() > 0): ?>
      <?php foreach( $hotArr as $movies): ?>
       <div class="swiper-slide" style="background-image: url(<?php echo e(Helper::showImage( $movies->image_url )); ?>);">
          <a href="/<?php echo e($movies->slug); ?>-<?php echo e($movies->id); ?>.html"
             class="slide-link"
             title="<?php echo e($movies->title); ?>"></a>
          <span class="slide-caption">
             <h2><?php echo e($movies->title); ?></h2>
             <p class="sc-desc"><?php echo e($movies->description); ?></p>
             <div class="slide-caption-info">
                <!--<div class="block"><strong>Genre:</strong>
                   <a href="genre/action/" title="Action">Action</a>, <a href="genre/sci-fi/" title="Sci-Fi">Sci-Fi</a>, <a href="genre/horror/" title="Horror">Horror</a>                                
                </div>-->
                <?php if( $movies->duration ): ?>
                <div class="block"><strong>Thời lượng:</strong> <?php echo e($movies->duration); ?></div>
                <?php endif; ?>
                <div class="block"><strong>Chất lượng phim:</strong> <?php echo e($movies->quality == 1 ? "HD" : ( $movies->quality == 2 ? "SD" : "CAM" )); ?></div>                
             </div>
           
                <a onclick="location.href='/<?php echo e($movies->slug); ?>-<?php echo e($movies->id); ?>.html'" title=""class="btn btn-success mt20">Xem phim</a>
             
          </span>
       </div>
      <?php endforeach; ?>    
     <?php endif; ?>
  </div>
  <div class="swiper-pagination"></div>
  <div class="clearfix"></div>
</div>