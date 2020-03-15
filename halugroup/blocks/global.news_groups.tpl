<!-- BEGIN: main -->
<div class="title-text space-20">
                        <h2><a href="{LINK_MODU}">{BLOCK_TITLE}</a></h2>
                        <a class="read-more" href="{LINK_MODU}">{LANG.allview} <i class="fa fa-angle-double-right"></i></a>
                     </div>

                     <div class="home-blog clearfix">
					 <!-- BEGIN: loop -->
                        <div class="item">
                           <a class="thumb img-shine" href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>
                           <img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/loading.svg" data-src="{ROW.thumb}" class="img-responsive basic" alt="{ROW.title}" />
                           </a>
                           <div class="text">
                              <h3 style="margin-bottom:10px;"><a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>{ROW.title_clean}</a></h3>
                              <div class="date">{ROW.day} <span>{ROW.publtime}</span></div>
                              <p> {ROW.hometext_clean}</p>
                           </div>
                        </div>
                 <!-- END: loop -->
                     </div>
<!-- END: main -->