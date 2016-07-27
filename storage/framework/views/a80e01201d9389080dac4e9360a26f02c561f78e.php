<div class="box hot-news">
   <div class="box-head">
      <div class="nlh">BÀI VIẾT NỔI BẬT</div>
      <div class="clearfix"></div>
   </div>
   <div class="ns-list">
      <?php if( $hotArr->count() > 0 ): ?>
         <?php foreach( $hotArr as $articles ): ?>
         <div class="news-list-item">
            <div class="info">
               <h2>
                  <a href="/tin-tuc/<?php echo e($articles->slug); ?>-<?php echo e($articles->id); ?>.html"
                     title="<?php echo e($articles->title); ?>"><?php echo e($articles->title); ?></a>
               </h2>
               <p class="time">
               <!--<p class="label label-default label-sm mr10">
                  News                                            
               </p>-->
               <i class="fa fa-clock-o mr5"></i><?php echo e(date('d/m/Y', strtotime($articles->created_at))); ?></p>
            </div>
            <div class="clearfix"></div>
         </div>
         <?php endforeach; ?>
      <?php endif; ?>
   </div>
</div>