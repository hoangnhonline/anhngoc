@extends('layout.backend')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Phim    
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li><a href="{{ route('movies.index') }}">Phim</a></li>
      <li class="active">Tạo mới</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <a class="btn btn-default" href="{{ route('movies.index') }}" style="margin-bottom:5px">Quay lại</a>
    <form role="form" method="POST" action="{{ route('movies.store') }}">
    <div class="row">
      <!-- left column -->

      <div class="col-md-7">
        <!-- general form elements -->
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tạo mới</h3>
          </div>
          <!-- /.box-header -->               
            {!! csrf_field() !!}

            <div class="box-body">
              @if (count($errors) > 0)
                  <div class="alert alert-danger">
                      <ul>
                          @foreach ($errors->all() as $error)
                              <li>{{ $error }}</li>
                          @endforeach
                      </ul>
                  </div>
              @endif
                <div class="form-group">
                  <label>Danh mục cha <span class="red-star">*</span></label>
                  <select class="form-control" name="parent_id" id="parent_id">                  
                    <option value="" {{ old('parent_id') == 0 ? "selected" : "" }}>--chọn--</option>
                    @if($parentCateArr->count() > 0)
                      @foreach( $parentCateArr as $value )
                      <option value="{{ $value->id }}" {{ ( old('parent_id') == $value->id || $parent_id == $value->id ) ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>
                <div class="form-group">
                  <label for="email">Danh mục con <span class="red-star">*</span></label>
                  <select class="form-control select2" name="cate_id" id="cate_id">
                    <option value="">-- chọn --</option>
                    @if( $cateArr->count() > 0)
                      @foreach( $cateArr as $value )
                      <option value="{{ $value->id }}" {{ $value->id == old('cate_id') ? "selected" : "" }}>{{ $value->name }}</option>
                      @endforeach
                    @endif
                  </select>
                </div>
                <div class="form-group">
                  <label for="email">Site nguồn <span class="red-star">*</span></label>
                  <select class="form-control select2" name="site_id">
                    <option value="">-- chọn --</option>
                    <option value="1" {{ 1 == old('site_id') ? "selected" : "" }}>-- xvideos.com --</option>
                    <option value="2" {{ 2 == old('site_id') ? "selected" : "" }}>-- youporn.com --</option>
                    <option value="3" {{ 3 == old('site_id') ? "selected" : "" }}>-- redtube.com --</option>
                    <option value="4" {{ 4 == old('site_id') ? "selected" : "" }}>-- tnaflix.com --</option>
                    <option value="5" {{ 5 == old('site_id') ? "selected" : "" }}>-- javhihi.com --</option>
                    
                  </select>
                </div>                 
                 <!-- text input -->
                <div class="form-group">
                  <label>URL phim <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="url" id="url" value="{{ old('url') }}">
                </div>
                <div class="form-group loading" style="display:none">
                  <img src="{{ URL::asset('backend/dist/img/loading.gif')}}" alt="loading" title="loading" />
                </div>
                <div class="form-group" >
                  
                  <label>Tiêu đề <span class="red-star">*</span></label>
                  <input type="text" class="form-control" name="title" id="title" value="{{ old('title') }}">
                </div>
                <div class="form-group">
                  
                  <label>Slug <span class="red-star">*</span></label>
                  
                  <input type="text" class="form-control" name="slug" id="slug" value="{{ old('slug') }}">
                </div>
                <div class="form-group">
                  <label>Chất lượng</label> 
                  <label class="radio-inline"><input type="radio" value="1" name="quality" {{ 1 == old('quality') ? "checked" : "" }} >HD</label>
                  <label class="radio-inline"><input type="radio" value="2" name="quality" {{ 2 == old('quality') ? "checked" : "" }}>SD</label>
                  <label class="radio-inline"><input type="radio" value="3" name="quality" {{ 3 == old('quality') ? "checked" : "" }}>CAM</label>
                </div>
                <div class="form-group">
                  <label>Thời lượng</label>
                  <input type="text" class="form-control" name="duration" id="duration" value="{{ old('duration') }}">
                </div>
                <!-- textarea -->
                <div class="form-group">
                  <label>Mô tả</label>
                  <textarea class="form-control" rows="4" name="description" id="description">{{ old('description') }}</textarea>
                </div>            

                
                <div class="form-group">
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" name="is_hot" value="1" {{ old('is_hot') == 1 ? "checked" : "" }}>
                      Phim nổi bật
                    </label>
                  </div>               
                </div>
                <div class="form-group">
                  <label>Ẩn/hiện</label>
                  <select class="form-control" name="status" id="status">                  
                    <option value="0" {{ old('status') == 0 ? "selected" : "" }}>Ẩn</option>
                    <option value="1" {{ old('status') == 1 || old('status') == NULL ? "selected" : "" }}>Hiện</option>                  
                  </select>
                </div>                
            </div>          
        
            <div class="box-footer">
              <button type="submit" class="btn btn-primary">Lưu</button>
              <a class="btn btn-default" class="btn btn-primary" href="{{ route('movies.index')}}">Hủy</a>
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
                <input type="text" class="form-control" name="meta_title" id="meta_title" value="{{ old('meta_title') }}">
              </div>
              <!-- textarea -->
              <div class="form-group">
                <label>Meta desciption</label>
                <textarea class="form-control" rows="4" name="meta_description" id="meta_description">{{ old('meta_description') }}</textarea>
              </div>  

              <div class="form-group">
                <label>Meta keywords</label>
                <textarea class="form-control" rows="4" name="meta_keywords" id="meta_keywords">{{ old('meta_keywords') }}</textarea>
              </div>  
              <div class="form-group">
                <label>Custom text</label>
                <textarea class="form-control" rows="4" name="custom_text" id="custom_text">{{ old('custom_text') }}</textarea>
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
<input type="hidden" id="route_upload_tmp_image" value="{{ route('image.tmp-upload') }}">
<input type="hidden" id="route_get_movies_external" value="{{ route('general.get-movies-external') }}">

@stop
@section('javascript_page')
<script type="text/javascript">
    $(document).ready(function(){
      $('#btnUploadImage').click(function(){        
        $('#file-image').click();
      });
      $('#btnUploadIcon').click(function(){        
        $('#file-icon').click();
      });
      var files = "";
      $('#file-image').change(function(e){
         files = e.target.files;
         
         if(files != ''){
           var dataForm = new FormData();        
          $.each(files, function(key, value) {
             dataForm.append('file', value);
          });   
          
          dataForm.append('date_dir', 0);
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
      var filesIcon = '';
      $('#file-icon').change(function(e){
         filesIcon = e.target.files;
         
         if(filesIcon != ''){
           var dataForm = new FormData();        
          $.each(filesIcon, function(key, value) {
             dataForm.append('file', value);
          });
          
          dataForm.append('date_dir', 0);
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
                $('#thumbnail_icon').attr('src',$('#upload_url').val() + response.image_path);
                $('#icon_url').val( response.image_path );
                $( '#icon_name' ).val( response.image_name );
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
      
      $('#title').change(function(){
         var name = $.trim( $(this).val() );
         if( name != '' && $('#slug').val() == ''){
            $.ajax({
              url: $('#route_get_slug').val(),
              type: "POST",
              async: false,      
              data: {
                str : name
              },              
              success: function (response) {
                if( response.str ){                  
                  $('#slug').val( response.str );
                }                
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
      $('#parent_id').change(function(){
        $.ajax({
            url: $('#route_get_cate_by_parent').val(),
            type: "POST",
            async: false,
            data: {          
                parent_id : $(this).val(),
                type : 'list'
            },
            success: function(data){
                $('#cate_id').html(data).select2('refresh');                      
            }
        });
      });
      $('#url').blur(function(){
        if( $(this).val() != '' ){
          $('.loading').show();
          $.ajax({
              url: $('#route_get_movies_external').val(),
              type: "POST",
              async: false,
              data: {          
                  url : $(this).val()                
              },              
              success: function(response){      
                  $('#title').val(response.title);
                  $('#slug').val(response.slug);
                  $('.loading').hide();                 
                                     
              }
          });
        }
      });
    });
    
</script>
@stop
