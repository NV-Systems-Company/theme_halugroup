<!-- BEGIN: main -->
<div id="products" class="clearfix">
    <!-- BEGIN: displays -->
    <div class="form-group form-inline pull-right">
        <label class="control-label">{LANG.displays_product}</label>
        <select name="sort" id="sort" class="form-control input-sm" onchange="nv_chang_price();">
            <!-- BEGIN: sorts -->
                <option value="{key}" {se}> {value}</option>
            <!-- END: sorts -->
        </select>
    </div>
    <div class="clearfix">&nbsp;</div>
    <!-- END: displays -->
<div class="carousel-resize">
    <!-- BEGIN: items -->
	<div class="product-box  ">
                           <div class="product-thumbnail">
                              <a href="{LINK}" title="{TITLE}" class="image_thumb">
                              <img class="img-responsive center-block " src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/loading.svg" data-lazyload="{IMG_SRC}" alt="{TITLE}" />								<div class="box_bg1"></div>								<div class="box_bg2"></div>								<div class="box_bg3"></div>								<div class="box_bg4"></div>
                              </a>
                              <div class="product-action clearfix hidden-md hidden-sm hidden-xs">
                                 <!-- BEGIN: adminlink -->
                                    <p>{ADMINLINK}</p>
                                 <!-- END: adminlink -->
                              </div>
                           </div>
                           <div class="product-info a-left">
                              <h3 class="product-name text2line"><a href="{LINK}" title="{TITLE}">{TITLE0}</a></h3>
                              <div class="price-box clearfix">
                                 <div class="special-price">         
				<!-- BEGIN: price -->
				<p class="price" style="margin-bottom:0px">
                    <!-- BEGIN: discounts -->
                    <span class="money">{PRICE.sale_format} {PRICE.unit}</span>
                    <span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
                    <!-- END: discounts -->
					<!-- BEGIN: no_discounts -->
					<span class="money">{PRICE.price_format} {PRICE.unit}</span>
					<!-- END: no_discounts -->
				</p>
				<!-- END: price -->
                <!-- BEGIN: contact -->
                <p class="price">{LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span></p>
                <!-- END: contact -->
                                 </div>
                              </div>
                           </div>
                        </div>
    <!-- END: items -->
	 </div>
</div>

<!-- BEGIN: modal_loaded -->
<div class="modal fade" id="idmodals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">{LANG.add_product}</h4>
			</div>
			<div class="modal-body">
				<em class="fa fa-spinner fa-spin">&nbsp;</em>
			</div>
		</div>
	</div>
</div>
<!-- END: modal_loaded -->

<!-- BEGIN: pages -->
<div class="text-center">
    {generate_page}
</div>
<!-- END: pages -->
<div class="msgshow" id="msgshow">&nbsp;</div>

<!-- END: main -->
