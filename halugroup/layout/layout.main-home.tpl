<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
      <section class="awe-section-1">
         <div class="padding-pl0-767">
		 [SLIDER]
         </div>
      </section>
      <section class="awe-section-2">
         <div class="section-abouts space-20 bg-gray">
            <div class="wraper">
			[GIOITHIEU]
            </div>
         </div>
      </section>
       <section class="awe-section-4">
         <div class="bg-gray home-product">
            <div class="wraper">
               <div class="container space-0">
                  <div class="title-text bg-grey">
                     <h2 style="margin-top: 20px;margin-bottom: 10px;">{LANG.shopview}</h2>
                  </div>
                  <div class="pt-20">
					 {MODULE_CONTENT}
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="awe-section-3">
         <div class="wraper">
            <div class="container space-40">
               <div class="row">
                  <div class="col-md-12">
				  [COLUMN_NEWS]
                  </div>
                  <div class="col-md-12">
				  [COLUMN_PHOTOS]
                  </div>
               </div>
            </div>
         </div>
      </section>
     
      <section class="awe-section-5">
         <div class="bg-grey-gradient section-thanhtuu pb-30">
            <div class="wraper">
               <div class="container ">
				  [THANHTUU]
               </div>
            </div>
         </div>
      </section>
      <section class="awe-section-6">
         <div class="home-project" data-lazyload2="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/bg-contrinhdathicon.png" style="background-image: url({NV_BASE_SITEURL}themes/{TEMPLATE}/images/loading.svg);">
            <div class="wraper">
               <div class="container">
			   [DUAN] 
               </div>
            </div>
         </div>
      </section>
      <div class="bizweb-product-reviews-module"></div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->