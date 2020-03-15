<!-- BEGIN: main -->
<div id="category">

    <!-- BEGIN: displays -->
    <div class="form-group form-inline pull-right">
        <label class="control-label">{LANG.displays_product}</label>
        <select name="sort" id="sort" class="form-control input-sm" onchange="nv_chang_price();">
            <!-- BEGIN: sorts -->
                <option value="{key}" {se}> {value}</option>
            <!-- END: sorts -->
        </select>
        <label class="control-label">{LANG.title_viewnum}</label>
        <select name="viewtype" id="viewtype" class="form-control input-sm" onchange="nv_chang_viewtype();">
            <!-- BEGIN: viewtype -->
                <option value="{VIEWTYPE.key}" {VIEWTYPE.selected}> {VIEWTYPE.value}</option>
            <!-- END: viewtype -->
        </select>
    </div>
    <div class="clear">&nbsp;</div>
    <!-- END: displays -->
<section class="products-view products-view-grid">
   <div class="row">
	<!-- BEGIN: grid_rows -->
    <div class="col-sm-12 col-md-{num}">
         <div class="product-box  ">
            <div class="product-thumbnail">
               <a href="{link_pro}" title="{title_pro}" class="image_thumb">
                  <picture>
                     <source media="(max-width: 480px)" srcset="{img_pro}" data-lazyload3="{img_pro}">
                     <img class="img-responsive center-block " src="{img_pro}" alt="{title_pro}">					<div class="box_bg1"></div>					<div class="box_bg2"></div>					<div class="box_bg3"></div>					<div class="box_bg4"></div>
                  </picture>					
               </a>
               <div class="product-action clearfix hidden-md hidden-sm hidden-xs">
                  <!-- BEGIN: adminlink -->
                  <p>{ADMINLINK}</p>
                  <!-- END: adminlink -->
               </div>
            </div>
            <div class="product-info a-left">
               <h3 class="product-name"><a href="{link_pro}" title="{title_pro}">{title_pro0}</a></h3>
               <div class="price-box clearfix">
                  <div class="special-price">
				  <!-- BEGIN: price -->
				<p class="price">
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
                <p class="price">
                    {LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span>
                </p>
                <!-- END: contact -->
                  </div>
               </div>
            </div>
         </div>
      </div>
	<!-- END: grid_rows -->
</div>
   <div class="text-xs-right text-center col-md-12">
   </div>
</section>
	<div class="clearfix">
	</div>
	<div class="text-center">
		{pages}
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

<div class="msgshow" id="msgshow">
</div>
<!-- END: main -->
