<div id="bread">
   <ol class="breadcrumb">
      <li><a href="<?php echo e(URL::to('/')); ?>">Home</a></li>
      <li><a href="<?php echo e(route('news-list')); ?>">Bài viết</a></li>
      <li class="active"><?php echo e($detail->title); ?></li>
   </ol>
</div>
<div class="news-block">
   <div class="box news-content news-view">
      <div class="box-content news-view-content">
         <div class="nvc-thumb" style="background-image: url(<?php echo e(Helper::showImage( $detail->image_url )); ?>);"></div>
         <h1 class="title"><?php echo e($detail->title); ?></h1>
         <p class="time"><i class="fa fa-clock-o mr5"></i><?php echo e(date('d/m/Y', strtotime($detail->created_at))); ?><span class="ml10">
            <!--<i class="fa fa-eye mr5"></i>287                            </span>
            <a href="#comment" class="ml10 view-comment" style="color: #333;">-->
            <i class="fa fa-comments mr5"></i><span id="fb-comment-count">0</span>
            </a>
         </p>
         <div class="block-social" style="padding-top: 15px; padding-bottom: 15px;">
            <!-- Go to www.addthis.com/dashboard to customize your tools -->
            <div class="addthis_native_toolbox"></div>
         </div>
         <!--                        <div style="text-align: center; margin: 10px 0 20px 0;">-->
         <!--                            <ins data-revive-zoneid="75" data-revive-id="a5bfc1ebe0d32b0e7ec681a498616459"></ins>-->
         <!--                            <script async src="//digitaladsmedia.eu/vipx/www/delivery/asyncjs.php"></script>-->
         <!--                        </div>-->
         <?php echo $detail->content; ?>

         <div class="tags" style="margin-top: 30px;">
            <i class="fa fa-tags mr5"></i>TAGs:
            <a href="#" title="Ghostbusters">Ghostbusters</a>                        
         </div>
         <div class="block-social" style="padding-top: 15px; padding-bottom: 15px;">
            <!-- Go to www.addthis.com/dashboard to customize your tools -->
            <div class="addthis_native_toolbox"></div>
         </div>
      </div>
      <!--<div class="movies-embed content-padding">
         <h3 class="title">Movies in this articles</h3>
         <div class="me-li">
            <h4><a href="http://123movies.to/film/ghostbusters-2016-14639/"
               title="Ghostbusters (2016)">Ghostbusters (2016)<span
               class="pull-right badge">Play now</span>
               </a>
            </h4>
         </div>
      </div>-->
      <div class="content-padding" style="border-top: 20px solid #e5e5e5;" id="comment">
         <h3 class="title">Comments</h3>
         <div class="fb-comments"
            data-href="http://123movies.to/articles/view/five-secrets-you-need-to-know-before-watching-ghostbusters/364"
            data-width="100%" data-numposts="3"></div>
      </div>
   </div>
   <div class="news-sidebar">
      <!--<div class="box fanpage">
         <div class="fb-page" data-href="https://www.facebook.com/123movies.to" data-width="100%"
            data-height="400" data-small-header="false" data-adapt-container-width="true"
            data-hide-cover="false" data-show-facepile="true" data-show-posts="true"></div>
      </div>-->
      <!--                    <ins data-revive-zoneid="72" data-revive-id="a5bfc1ebe0d32b0e7ec681a498616459"></ins>-->
      <!--                    <script async src="//digitaladsmedia.eu/vipx/www/delivery/asyncjs.php"></script>-->
      <!--<div class="box related-news">
         <div class="box-head">
            <div class="nlh">RELATED NEWS</div>
            <div class="clearfix"></div>
         </div>
         <div class="ns-list">
            <div class="news-list-item">
               <div class="info">
                  <h2>
                     <a href="http://123movies.to/articles/view/the-most-evil-movie-villains-of-all-times/365"
                        title="The Most Evil Movie Villains of All Times">The Most Evil Movie Villains of All Times</a>
                  </h2>
                  <p class="time">
                     <i class="fa fa-clock-o mr5"></i>Posted 2016/07/23                                            
                  </p>
               </div>
               <div class="clearfix"></div>
            </div>           
         </div>
      </div>
   -->
   <?php echo $__env->make('home.news-list.hot', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

   </div>
   <div class="clearfix"></div>
</div>