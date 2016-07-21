<option value="0">-- <?php echo e($type == "form" ? "chọn" : "Tất cả"); ?> --</option>
<?php if( $items->count() > 0 ): ?>
	<?php foreach( $items as $value ): ?>
	<option value="<?php echo e($value->id); ?>"><?php echo e($value->name); ?></option>
	<?php endforeach; ?>
<?php endif; ?>