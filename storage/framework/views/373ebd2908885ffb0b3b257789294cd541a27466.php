<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>" />
  <title>Movies| Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/bootstrap/css/bootstrap.min.css')); ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/dist/css/AdminLTE.css')); ?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/dist/css/skins/_all-skins.min.css')); ?>">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/plugins/iCheck/flat/blue.css')); ?>">

  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/dist/css/sweetalert2.min.css')); ?>">  
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/dist/css/select2.min.css')); ?>">
  <!-- Morris chart -->
  
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css')); ?>">
  <!-- Date Picker -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/plugins/datepicker/datepicker3.css')); ?>">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/plugins/daterangepicker/daterangepicker.css')); ?>">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<?php echo e(URL::asset('backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')); ?>">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php echo $__env->make('layout.backend.header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
  <!-- Left side column. contains the logo and sidebar -->
  <?php echo $__env->make('layout.backend.sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

  <!-- Content Wrapper. Contains page content -->
  <?php echo $__env->yieldContent('content'); ?>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.5
    </div>
    <strong>Copyright &copy; 2016 .All rights
    reserved.
  </footer> 
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
<input type="hidden" id="route_update_order" value="<?php echo e(route('update-order')); ?>">
<input type="hidden" id="route_get_slug" value="<?php echo e(route('get-slug')); ?>">
  <div class="control-sidebar-bg"></div>
</div>
<input type="hidden" id="upload_url" value="<?php echo e(config('icho.upload_url')); ?>">
<input type="hidden" id="route_get_cate_by_parent" value="<?php echo e(route('cate.ajax-list-by-parent')); ?>">
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo e(URL::asset('backend/plugins/jQuery/jquery-2.2.3.min.js')); ?>"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?php echo e(URL::asset('backend/dist/js/jquery-ui.min.js')); ?>"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo e(URL::asset('backend/bootstrap/js/bootstrap.min.js')); ?>"></script>

<script src="<?php echo e(URL::asset('backend/dist/js/sweetalert2.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('backend/dist/js/select2.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('backend/dist/js/es6-promise.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('backend/dist/js/finally.js')); ?>"></script>

<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>

<!-- Sparkline -->
<script src="<?php echo e(URL::asset('backend/plugins/sparkline/jquery.sparkline.min.js')); ?>"></script>
<!-- jvectormap -->
<script src="<?php echo e(URL::asset('backend/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js')); ?>"></script>
<script src="<?php echo e(URL::asset('backend/plugins/jvectormap/jquery-jvectormap-world-mill-en.js')); ?>"></script>
<!-- jQuery Knob Chart -->
<script src="<?php echo e(URL::asset('backend/plugins/knob/jquery.knob.js')); ?>"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="<?php echo e(URL::asset('backend/plugins/daterangepicker/daterangepicker.js')); ?>"></script>
<!-- datepicker -->
<script src="<?php echo e(URL::asset('backend/plugins/datepicker/bootstrap-datepicker.js')); ?>"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?php echo e(URL::asset('backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js')); ?>"></script>
<!-- Slimscroll -->
<script src="<?php echo e(URL::asset('backend/plugins/slimScroll/jquery.slimscroll.min.js')); ?>"></script>
<!-- FastClick -->
<script src="<?php echo e(URL::asset('backend/plugins/fastclick/fastclick.js')); ?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo e(URL::asset('backend/dist/js/app.min.js')); ?>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo e(URL::asset('backend/dist/js/pages/dashboard.js')); ?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo e(URL::asset('backend/dist/js/demo.js')); ?>"></script>
<script type="text/javascript" type="text/javascript">
$(document).ready(function(){
  $.ajaxSetup({
      headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
  });
});
  
</script>

<?php echo $__env->yieldContent('javascript_page'); ?>
</body>
</html>