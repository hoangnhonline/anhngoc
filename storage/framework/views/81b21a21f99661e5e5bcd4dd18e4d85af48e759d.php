<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Settings    
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="<?php echo e(route('movies.index')); ?>">Settings</a></li>
      <li class="active">Chỉnh sửa</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">    
    <form role="form" method="POST" action="<?php echo e(route('settings.update')); ?>">
    <div class="row">
      <!-- left column -->

      <div class="col-md-7">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Chỉnh sửa</h3>
          </div>
          <!-- /.box-header -->               
            <?php echo csrf_field(); ?>

            <input type="hidden" name="id" value="<?php echo e($detail->id); ?>">
            <div class="box-body">
              <?php if(count($errors) > 0): ?>
                  <div class="alert alert-danger">
                      <ul>
                          <?php foreach($errors->all() as $error): ?>
                              <li><?php echo e($error); ?></li>
                          <?php endforeach; ?>
                      </ul>
                  </div>
              <?php endif; ?>
                                      
                 <!-- text input -->
                <div class="form-group">
                  <label>URL phim <span class="red-star">*</span></label>
                  <div class="input-group">                 
                    <input type="text" class="form-control" name="url" id="url" value="<?php echo e($detail->url); ?>">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="button" id="btnLoadMovies"><span id="spanLoad" class="glyphicon glyphicon-download-alt"></span></button>
                    </span>
                  </div>
                </div>
                <div class="form-group loading" style="display:none">
                  <img src="<?php echo e(URL::asset('backend/dist/img/loading.gif')); ?>" alt="loading" title="loading" />
                </div>
                <div class="form-group" >
                  
                  <label>Tiêu đề <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="title" id="title" value="<?php echo e($detail->title); ?>">
                </div>
                <span class=""></span>
                <div class="form-group">                  
                  <label>Slug <span class="red-star">*</span></label>                  
                  <input type="text" class="form-control" name="slug" id="slug" value="<?php echo e($detail->slug); ?>">
                </div>
                
                <div class="form-group" style="margin-top:10px;margin-bottom:10px">  
                  <label class="col-md-3 row">Thumbnail </label>    
                  <div class="col-md-9">
                    <img id="thumbnail_image" src="<?php echo e($detail->image_url ? Helper::showImage($detail->image_url) : URL::asset('backend/dist/img/img.png')); ?>" class="img-thumbnail" width="145" height="85">
                    
                    <input type="file" id="file-image" style="display:none" />
                 
                    <button class="btn btn-default" id="btnUploadImage" type="button"><span class="glyphicon glyphicon-upload" aria-hidden="true"></span> Upload</button>
                  </div>
                  <div style="clear:both"></div>
                </div>
                <div style="clear:both"></div>
                <div class="form-group">
                  <label>Chất lượng</label> 
                  <label class="radio-inline"><input type="radio" value="1" name="quality" <?php echo e(1 == $detail->quality || !$detail->quality ? "checked" : ""); ?> >HD</label>
                  <label class="radio-inline"><input type="radio" value="2" name="quality" <?php echo e(2 == $detail->quality ? "checked" : ""); ?>>SD</label>
                  <label class="radio-inline"><input type="radio" value="3" name="quality" <?php echo e(3 == $detail->quality ? "checked" : ""); ?>>CAM</label>
                </div>
                <div class="form-group">
                  <label>Thời lượng</label>
                  <input type="text" class="form-control" name="duration" id="duration" value="<?php echo e($detail->duration); ?>">
                </div>
                <!-- textarea -->
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea class="form-control" rows="4" name="description" id="description"><?php echo e($detail->description); ?></textarea>
                </div> 
                <div class="form-group">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="is_hot" value="1" <?php echo e($detail->is_hot == 1 ? "checked" : ""); ?>>
                      Phim nổi bật
                    </label>
                  </div>               
                </div>
                <div class="form-group">
                  <label>Ẩn/hiện</label>
                  <select class="form-control" name="status" id="status">                  
                    <option value="0" <?php echo e($detail->status == 0 ? "selected" : ""); ?>>Ẩn</option>
                    <option value="1" <?php echo e($detail->status == 1 || $detail->status == NULL ? "selected" : ""); ?>>Hiện</option>                  
                  </select>
                </div>
                <div class="form-group">
                  <label>Tags</label>
                  <select class="form-control select2" name="tags[]" id="tags" multiple="multiple">                  
                    <?php if( $tagArr->count() > 0): ?>
                      <?php foreach( $tagArr as $value ): ?>
                      <option value="<?php echo e($value->id); ?>" <?php echo e(in_array($value->id, $tagSelected) || (old('tags') && in_array($value->id, old('tags'))) ? "selected" : ""); ?>><?php echo e($value->tag); ?></option>
                      <?php endforeach; ?>
                    <?php endif; ?>
                  </select>
                </div>
                <div class="form-group">
                  <label>Chi tiết</label>
                  <textarea class="form-control" rows="4" name="content" id="content"><?php echo e($detail->content); ?></textarea>
                </div>
                  
            </div>          
            <input type="hidden" name="image_url" id="image_url" value="<?php echo e($detail->image_url); ?>"/>          
            <input type="hidden" name="image_name" id="image_name" value="<?php echo e($detail->image_name); ?>"/>
            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Lưu</button>
              <a class="btn btn-default" class="btn btn-primary" href="<?php echo e(route('movies.index')); ?>">Hủy</a>
            </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <div class="col-md-5">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Thông tin SEO</h3>
          </div>
          <!-- /.box-header -->
            <div class="box-body">
              <div class="form-group">
                <label>Meta title </label>
                <input type="text" class="form-control" name="meta_title" id="meta_title" value="<?php echo e($detail->meta_title); ?>">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Meta desciption</label>
                <textarea class="form-control" rows="4" name="meta_description" id="meta_description"><?php echo e($detail->meta_description); ?></textarea>
              </div>  

              <div class="form-group">
                <label>Meta keywords</label>
                <textarea class="form-control" rows="4" name="meta_keywords" id="meta_keywords"><?php echo e($detail->meta_keywords); ?></textarea>
              </div>  
              <div class="form-group">
                <label>Custom text</label>
                <textarea class="form-control" rows="4" name="custom_text" id="custom_text"><?php echo e($detail->custom_text); ?></textarea>
              </div>
            
        </div>
        <!-- /.box -->     

      </div>
      <!--/.col (left) -->      
    </div>
    </form>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<input type="hidden" id="route_upload_tmp_image" value="<?php echo e(route('image.tmp-upload')); ?>">
<input type="hidden" id="route_get_movies_external" value="<?php echo e(route('general.get-movies-external')); ?>">

<?php $__env->stopSection(); ?>
<?php $__env->startSection('javascript_page'); ?>
<script src="<?php echo e(URL::asset('backend/dist/js/ckeditor/ckeditor.js')); ?>"></script>
<script type="text/javascript">
    $(document).ready(function(){
      $(".select2").select2();
      var editor = CKEDITOR.replace( 'content',{
          language : 'vi',
          filebrowserBrowseUrl: '../dist/js/kcfinder/browse.php?type=files',
          filebrowserImageBrowseUrl: '../dist/js/kcfinder/browse.php?type=images',
          filebrowserFlashBrowseUrl: '../dist/js/kcfinder/browse.php?type=flash',
          filebrowserUploadUrl: '../dist/js/kcfinder/upload.php?type=files',
          filebrowserImageUploadUrl: '../dist/js/kcfinder/upload.php?type=images',
          filebrowserFlashUploadUrl: '../dist/js/kcfinder/upload.php?type=flash'
      });
      $('#btnUploadImage').click(function(){        
        $('#file-image').click();
      });      
      var files = "";
      $('#file-image').change(function(e){
         files = e.target.files;
         
         if(files != ''){
           var dataForm = new FormData();        
          $.each(files, function(key, value) {
             dataForm.append('file', value);
          });   
          
          dataForm.append('date_dir', 1);
          dataForm.append('folder', 'tmp');

          $.ajax({
            url: $('#route_upload_tmp_image').val(),
            type: "POST",
            async: false,      
            data: dataForm,
            processData: false,
            contentType: false,
            success: function (response) {
              if(response.image_path){
                $('#thumbnail_image').attr('src',$('#upload_url').val() + response.image_path);
                $( '#image_url' ).val( response.image_path );
                $( '#image_name' ).val( response.image_name );
              }
              console.log(response.image_path);
                //window.location.reload();
            },
            error: function(response){                             
                var errors = response.responseJSON;
                for (var key in errors) {
                  
                }
                //$('#btnLoading').hide();
                //$('#btnSave').show();
            }
          });
        }
      });
      
      
   
    });
    
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.backend', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>