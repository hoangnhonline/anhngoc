<?php $__env->startSection('slider'); ?>
	<?php echo $__env->make('home.index.slider', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('top-news'); ?>
	<?php echo $__env->make('home.index.top-news', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
	<?php echo $__env->make('home.index.content', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript_page'); ?>
<script type="text/javascript" src="<?php echo e(URL::asset('assets/js/slide.min.js')); ?>"></script>
<script type="text/javascript">
var swiper = new Swiper('#slider', {
     pagination: '.swiper-pagination',
     paginationClickable: true,
     loop: true,
     autoplay: 4000
 });
 
 $(function () {
     $('.tn-news, .tn-notice').perfectScrollbar();
 });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.frontend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>