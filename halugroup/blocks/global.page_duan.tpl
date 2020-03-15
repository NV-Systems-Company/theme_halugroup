<!-- BEGIN: main -->

<div class="title-text bg-grey">
                     <h2>{BLOCK_TITLE}</h2>
                  </div>
<div class="owl-carousel owl-pro" data-nav="true" data-lg-items="4" data-md-items="4" data-sm-items="4" data-xs-items="4" data-xss-items="2" data-margin="10">
 <!-- BEGIN: loop -->
                     <div class="item">
					    <!-- BEGIN: image-->
                        <a class="thumb img-shine" href="{ROW.link}" title="{ROW.title}">
                        <img class="img-responsive basic" data-src="{ROW.image}" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/loading.svg" alt="{ROW.title}"/>
                        </a>
						<!-- END: image-->
                        <h3><a href="{ROW.link}">{ROW.title_cut}</a></h3>
                     </div>
<!-- END: loop -->
                  </div>
<!-- END: main -->