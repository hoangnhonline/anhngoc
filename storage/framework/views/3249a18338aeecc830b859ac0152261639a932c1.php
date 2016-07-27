<div class="header-logo">
   <a title="Watch Your Favorite Movies Online" href="<?php echo e(URL::to('/')); ?>" id="logo"></a>
</div>
<div class="mobile-menu"><i class="fa fa-reorder"></i></div>
<div class="mobile-search"><i class="fa fa-search"></i></div>
<div id="menu">
   <ul class="top-menu">
      <li class="">
         <a href="<?php echo e(URL::to('/')); ?>" title="Trang chủ">Trang chủ</a>
      </li>
      <?php if( $parentArr->count() > 0): ?>
         <?php foreach( $parentArr as $parent ): ?>
         <li class="">
            <a href="/<?php echo e($parent->slug); ?>" title="<?php echo e($parent->name); ?>"><?php echo e($parent->name); ?></a>
            <?php if( !empty($cateArr[$parent->id]) ): ?>
            <div class="sub-container" style="display: none">
               <ul class="sub-menu">
                  <?php foreach( $cateArr[$parent->id] as $cate ): ?>
                  <li>                    
                     <a href="/<?php echo e($cate->slug); ?>" title="<?php echo e($cate->name); ?>"><?php echo e($cate->name); ?></a>
                  </li>                  
                  <?php endforeach; ?>
               </ul>
               <div class="clearfix"></div>
            </div>
            <?php endif; ?>
         </li> 
         <?php endforeach; ?>      
      <?php endif; ?>
      <li class="">
         <a href="<?php echo e(route('news-list')); ?>" title="Tin tức">Tin tức</a>
      </li>      
   </ul>
   <div class="clearfix"></div>
</div>
<!--<div id="top-user"></div>-->