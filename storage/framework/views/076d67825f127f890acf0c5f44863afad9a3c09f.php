<?php $__env->startSection('content'); ?>

	<?php echo $__env->make('home.news-list.content', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
	
<?php $__env->stopSection(); ?>

<?php $__env->startSection('javascript_page'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.frontend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>