<!--related-->
<div class="movies-list-wrap mlw-related">
   <div class="ml-title ml-title-page">
      <span>Có thể bạn muốn xem</span>
   </div>
   <div class="movies-list movies-list-full">
      <?php if( $relatedArr->count() > 0): ?>
         <?php foreach( $relatedArr as $movies): ?>
         <div class="ml-item">
            <a href="<?php echo e($movies->slug); ?>-<?php echo e($movies->id); ?>.html" class="ml-mask">
               <span class="mli-quality"><?php echo e($movies->quality == 1 ? "HD" : ( $movies->quality == 2 ? "SD" : "CAM" )); ?></span>
               <img data-original="<?php echo e(Helper::showImage( $movies->image_url )); ?>" title="<?php echo e($movies->title); ?>" class="lazy thumb mli-thumb"
                  alt="<?php echo e($movies->title); ?>">
               <span class="mli-info">
                  <h2><?php echo e($movies->title); ?></h2>
               </span>
            </a>
         </div>
         <?php endforeach; ?>
      <?php endif; ?>
      <script type="text/javascript">         
         $("img.lazy").lazyload({
             effect: "fadeIn"
         });
      </script>
   </div>
</div>
<!--/related-->