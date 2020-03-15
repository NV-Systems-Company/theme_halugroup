<!-- BEGIN: main -->
<div class="home-slider owl-carousel" data-lg-items='1' data-md-items='1' data-sm-items='1' data-xs-items="1" data-margin='0' data-dot="false" data-nav="true">
<!-- BEGIN: loop -->
<!-- BEGIN: image_only -->
               <div class="item">
                  <a href="#" class="clearfix">
                     <picture>
                        <source media="(max-width: 480px)" srcset="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/loading.svg" data-lazyload3="{ROW.image}">
                        <img class="img-responsive center-block basic"  src="{ROW.image}" alt="{ROW.description}" />
                     </picture>
                  </a>
               </div>
<!-- END: image_only -->   
<!-- BEGIN: image_link -->
               <div class="item">
                  <a href="{ROW.link}"<!-- BEGIN: target --> target="{ROW.target}"<!-- END: target --> class="clearfix">
                     <picture>
                        <source media="(max-width: 480px)" srcset="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/loading.svg" data-lazyload3="{ROW.image}">
                        <img class="img-responsive center-block basic"  src="{ROW.image}" alt="{ROW.description}" />
                     </picture>
                  </a>
               </div>
<!-- END: image_link -->   
<!-- END: loop -->
</div>
<!-- END: main -->