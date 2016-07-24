<div id="bread">
    <ol class="breadcrumb">
        <li><a href="<?php echo e(URL::to('/')); ?>" title="Trang chủ">Trang chủ</a></li>
        <li>
        	<a href="<?php echo e($parentDetail->slug); ?>" title="<?php echo e($parentDetail->name); ?>"><?php echo e($parentDetail->name); ?></a>
        </li>
        <li>
            <a href="<?php echo e($cateDetail->slug); ?>" title="<?php echo e($cateDetail->name); ?>"><?php echo e($cateDetail->name); ?></a>
        </li>
        <li class="active"><?php echo e($detail->title); ?></li>
    </ol>
</div>