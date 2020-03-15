<noscript>
<div class="alert alert-danger">{LANG.nojs}</div>
</noscript>
      <div class="fixed-right">
         [ZALO]
      </div>
     
      <header class="header sticker">
       
         <div class="middle-header">
            <div class="wraper">
               <div class="container">
                  <div class="header-main">
                     <div class="menu-bar hidden-lg">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                     </div>
                     <div class="logo">
					    <!-- BEGIN: image -->
                        <a title="{SITE_NAME}" href="{THEME_SITE_HREF}" class="logo-wrapper">		
                        <img class="img-responsive" src="{LOGO_SRC}" alt="{SITE_NAME}" />
                        </a>
						<!-- END: image -->
                     </div>
                     
                  
                     
                     <div class="box-right">
                        <div class="search headerSearch" style="border:0px;padding:0px;margin-bottom:0px;" onclick="">
                           <i class="fa fa-search"></i>
                           <div class="header_search search_form">
                                 <input type="text" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..." class="input-group-field st-default-search-input search-text">
                                 <span class="input-group-btn">
                                 <button type="button" class="btn icon-fallback-text" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y">
                                 <i class="fa fa-search"></i>
                                 </button>
                                 </span>
                           </div>
                        </div>
                        <div class="mini-cart text-xs-center" onclick="">
                        
                           <div class="heading-cart">
                            [CART]
                           </div>
                        </div>
						<div class="box-user box-u">
                           <div class="social-icons">
                            [SOCIAL_ICONS]
                           </div>
                        </div>
                        <div class="box-user" style="margin-top:4px">
                           [PERSONALAREA]
                        </div>
						<div id="tip" data-content="">
                        <div class="bg"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <div class="main-nav">
         <div class="wraper">
            <div class="container">
               <nav>
                 [MENU_SITE]
				 [MENU_MOBI]
               </nav>
            </div>
         </div>
      </div>
	        <div class="wraper">
			  <!-- BEGIN: breadcrumbs -->
				 <div class="breadcrumb-container">
					<ul class="breadcrumb" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">					
						<li class="home">
							<a itemprop="url" href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a>	
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</li>
						<!-- BEGIN: loop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a><i class="fa fa-angle-right" aria-hidden="true"></i></li><!-- END: loop -->
					</ul>
				</div>
				<!-- END: breadcrumbs -->
           </div>
[THEME_ERROR_INFO]
