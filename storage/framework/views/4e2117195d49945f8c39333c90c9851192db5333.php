<div class="pad"></div>
<?php if( $parentArr->count() > 0): ?>
<?php foreach( $parentArr as $parent ): ?>
<div class="movies-list-wrap mlw-related">
   <div class="ml-title">
      <span class="pull-left"><?php echo e($parent->name); ?> <i class="fa fa-chevron-right ml10"></i></span>
      <a href="<?php echo e($parent->slug); ?>" title="Xem tất cả" class="pull-right cat-more">Xem tất cả »</a>
      <?php if( !empty($cateArr[$parent->id]) ): ?>
      <ul role="tablist" class="nav nav-tabs">
         <?php $i = 0; ?>
         <?php foreach( $cateArr[$parent->id] as $cate ): ?>
            <?php $i++; ?>
         <li class="<?php echo e($i == 1 ? "active" : ""); ?>"><a data-toggle="tab" role="tab" href="#<?php echo e($cate->slug); ?>"
            aria-expanded="false"><?php echo e($cate->name); ?></a></li>
         <?php endforeach; ?>
      </ul>
      <?php endif; ?>
      <div class="clearfix"></div>
   </div>
   <?php if( !empty($cateArr[$parent->id]) ): ?>
   <div class="tab-content">
      <?php $i = 0; ?>
         <?php foreach( $cateArr[$parent->id] as $cate ): ?>
         <?php $i++; ?>
         <div id="<?php echo e($cate->slug); ?>" class="movies-list movies-list-full tab-pane in fade <?php echo e($i == 1 ? "active" : ""); ?>">
            <?php if( $moviesActiveArr[$parent->id]->count() > 0): ?>
               <?php foreach( $moviesActiveArr[$parent->id] as $movies): ?>
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
            <div class="clearfix"></div>            
         </div>  
         <?php endforeach; ?>
   </div>
   <?php endif; ?>
</div>
<?php endforeach; ?>
<?php endif; ?>
<div class="content-kus" style="text-align: center; margin: 20px 0; padding: 15px;">
</div>