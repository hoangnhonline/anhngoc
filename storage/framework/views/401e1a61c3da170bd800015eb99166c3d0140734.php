<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Tags
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="<?php echo e(route( 'tag.index' )); ?>">Tags</a></li>
    <li class="active">Danh sách</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <?php if(Session::has('message')): ?>
      <p class="alert alert-info" ><?php echo e(Session::get('message')); ?></p>
      <?php endif; ?>
      <a href="<?php echo e(route('tag.create')); ?>" class="btn btn-info" style="margin-bottom:5px">Tạo mới</a>
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Bộ lọc</h3>
        </div>
        <div class="panel-body">
          <form class="form-inline" role="form" method="GET" action="<?php echo e(route('tag.index')); ?>">
            <div class="form-group">
              <label for="email">Loại :</label>
              <select class="form-control" name="type">                                
                <option value="1" <?php echo e(1 == $type ? "selected" : ""); ?>>Phim</option>
                <option value="2" <?php echo e(2 == $type ? "selected" : ""); ?>>Truyện</option>
                <option value="3" <?php echo e(3 == $type ? "selected" : ""); ?>>Ảnh</option>                
              </select>
            </div>
            <div class="form-group">
              <label for="email">Từ khóa :</label>
              <input type="text" class="form-control" name="tag" value="<?php echo e($tag); ?>">
            </div>       
            <button type="submit" class="btn btn-default">Lọc</button>
          </form>         
        </div>
      </div>
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Danh sách</h3>
        </div>
        
        <!-- /.box-header -->
        <div class="box-body">
          <div style="text-align:right">
            <?php echo e($items->appends( ['tag' => $tag, 'type' => $type] )->links()); ?>

          </div>
          <table class="table table-bordered" id="table-list-data">
            <tr>
              <th style="width: 1%">#</th>
              <th>Tag</th> 
              <th>Slug</th>
              <th>Mô tả</th>
              <th width="1%;white-space:nowrap">Thao tác</th>
            </tr>
            <tbody>
            <?php if( $items->count() > 0 ): ?>
              <?php $i = 0; ?>
              <?php foreach( $items as $item ): ?>
                <?php $i ++; ?>
              <tr id="row-<?php echo e($item->id); ?>">
                <td><span class="order"><?php echo e($i); ?></span></td>                
                <td>                  
                  <a href="<?php echo e(route( 'tag.edit', [ 'id' => $item->id ])); ?>"><?php echo e($item->tag); ?></a>
                  
                </td>                
                <td><?php echo e($item->slug); ?></td>
                <td><?php echo e($item->description); ?></td>
                <td style="white-space:nowrap">                  
                  <a href="<?php echo e(route( 'tag.edit', [ 'id' => $item->id ])); ?>" class="btn btn-warning">Chỉnh sửa</a>                  
                  <?php if( $item->objects->count() == 0): ?>
                  <a onclick="return callDelete('<?php echo e($item->tag); ?>','<?php echo e(route( 'tag.destroy', [ 'id' => $item->id ])); ?>');" class="btn btn-danger">Xóa</a>                  
                  <?php endif; ?>
                </td>
              </tr> 
              <?php endforeach; ?>
            <?php else: ?>
            <tr>
              <td colspan="9">Không có dữ liệu.</td>
            </tr>
            <?php endif; ?>

          </tbody>
          </table>          
          <div style="text-align:right">          
            <?php echo e($items->appends( ['tag' => $tag, 'type' => $type] )->links()); ?>

          </div>
        </div>        
      </div>
      <!-- /.box -->     
    </div>
    <!-- /.col -->  
  </div> 
</section>
<!-- /.content -->
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('javascript_page'); ?>
<script type="text/javascript">
function callDelete(name, url){  
  swal({
    title: 'Bạn muốn xóa "' + name +'"?',
    text: "Dữ liệu sẽ không thể phục hồi.",
    type: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Yes'
  }).then(function() {
    location.href= url;
  })
  return flag;
}
$(document).ready(function(){
  $('#table-list-data tbody').sortable({
        placeholder: 'placeholder',
        handle: ".move",
        start: function (event, ui) {
                ui.item.toggleClass("highlight");
        },
        stop: function (event, ui) {
                ui.item.toggleClass("highlight");
        },          
        axis: "y",
        update: function() {
            var rows = $('#table-list-data tbody tr');
            var strOrder = '';
            var strTemp = '';
            for (var i=0; i<rows.length; i++) {
                strTemp = rows[i].id;
                strOrder += strTemp.replace('row-','') + ";";
            }     
            updateOrder("loai_sp", strOrder);
        }
    });
});
function updateOrder(table, strOrder){
  $.ajax({
      url: $('#route_update_order').val(),
      type: "POST",
      async: false,
      data: {          
          str_order : strOrder,
          table : table
      },
      success: function(data){
          var countRow = $('#table-list-data tbody tr span.order').length;
          for(var i = 0 ; i < countRow ; i ++ ){
              $('span.order').eq(i).html(i+1);
          }                        
      }
  });
}
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.backend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>