<?php $__env->startSection('title'); ?><?php echo e($title); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('site_description'); ?><?php echo e(isset($cateDetail->meta_description) ? $cateDetail->meta_description : $settingArr['site_description']); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('site_keywords'); ?><?php echo e(isset($cateDetail->meta_keywords) ? $cateDetail->meta_keywords : $settingArr['site_keywords']); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('banner'); ?><?php echo e($settingArr['banner']); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('facebook_appid'); ?><?php echo e($settingArr['facebook_appid']); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('site_name'); ?><?php echo e($settingArr['site_name']); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('favicon'); ?><?php echo e(Helper::showImage($settingArr['favicon'])); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('logo'); ?><?php echo e(Helper::showImage($settingArr['logo'])); ?><?php $__env->stopSection(); ?>
<div id="bread">
   <ol class="breadcrumb">
      <li><a href="<?php echo e(URL::to('/')); ?>">Trang chủ</a></li>
      <li class="active">Tin tức</li>
   </ol>
</div>
<!--            <div style="text-align: left; margin: 10px 0;">-->
<!--                <ins data-revive-zoneid="75" data-revive-id="a5bfc1ebe0d32b0e7ec681a498616459"></ins>-->
<!--                <script async src="//digitaladsmedia.eu/vipx/www/delivery/asyncjs.php"></script>-->
<!--            </div>-->
<div class="news-block">
<div class="box news-content news-list">
   <div class="box-head news-list-head">
      <div class="nlh">TIN MỚI NHẤT</div>      
      <div class="clearfix"></div>
   </div>
   <div class="news-list-body">
      <?php if( $articlesArr->count() > 0 ): ?>
         <?php foreach( $articlesArr as $articles ): ?>
         <div class="news-list-item ">
            <a href="tin-tuc/<?php echo e($articles->slug); ?>-<?php echo e($articles->id); ?>.html"
               class="thumb"><img class="lazy"
               data-original="<?php echo e(Helper::showImage( $articles->image_url )); ?>" title="<?php echo e($articles->title); ?>"
               alt="<?php echo e($articles->title); ?>"></a>
            <div class="info">
               <h2><a href="tin-tuc/<?php echo e($articles->slug); ?>-<?php echo e($articles->id); ?>.html"
                  title="<?php echo e($articles->title); ?>"><?php echo e($articles->title); ?></a></h2>
               <p class="desc"><?php echo e($articles->description); ?></p>
               <p class="time">
                  <i class="fa fa-clock-o mr5"></i><?php echo e(date('d/m/Y', strtotime($articles->created_at))); ?><span class="ml10">
                  <!--<i class="fa fa-eye mr5"></i>28</span>-->
               </p>
            </div>
            <div class="clearfix"></div>
         </div>
         <?php endforeach; ?>
      <?php endif; ?>
      <div id="pagination" style="margin-top:10px;">
         <nav>
            <?php echo e($articlesArr->links()); ?>

         </nav>
      </div>
   </div>
</div>
<div class="news-sidebar">
   <!--<div class="box fanpage">
      <div class="fb-page" data-href="https://www.facebook.com/123movies.to/" data-tabs="timeline"
         data-height="500px" data-small-header="false" data-adapt-container-width="true"
         data-hide-cover="false" data-show-facepile="true">
         <div class="fb-xfbml-parse-ignore">
            <blockquote cite="https://www.facebook.com/123movies.to/"><a
               href="https://www.facebook.com/123movies.to/">123Movies</a></blockquote>
         </div>
      </div>
   </div>-->
   <?php echo $__env->make('home.news-list.hot', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
   <!--                    <ins data-revive-zoneid="72" data-revive-id="a5bfc1ebe0d32b0e7ec681a498616459"></ins>-->
   <!--                    <script async src="//digitaladsmedia.eu/vipx/www/delivery/asyncjs.php"></script>-->
</div>
<div class="clearfix"></div>
</div>