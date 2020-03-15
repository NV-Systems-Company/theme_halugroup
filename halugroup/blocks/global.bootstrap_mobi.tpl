<!-- BEGIN: submenu -->
<ul class="sub-menu-1" style="display: none">
	 <!-- BEGIN: loop -->
                           <li class="dropdown-submenu nav-item-lv2">
                              <a class="nav-link" href="{SUBMENU.link}" title="{SUBMENU.note}" {SUBMENU.target}><span>{SUBMENU.title_trim}</span></a>
							  <!-- BEGIN: submenu -->
                              <span class="open-close2">
                              <i class="fa fa-angle-down" aria-hidden="true"></i>
                              </span>
							  <!-- END: submenu -->
							  <!-- BEGIN: item -->
                             {SUB}
                              <!-- END: item -->
                           </li>
		<!-- END: loop -->
</ul>
<!-- END: submenu -->

<!-- BEGIN: main -->
<ul class="nav hidden-lg nav-mobile">
                     <li class="nav-item active">
                        <a class="nav-link" title="{LANG.Home}" href="{THEME_SITE_HREF}">{LANG.Home}</a>
                     </li>
					 <!-- BEGIN: top_menu -->
                     <li class="nav-item">
                        <a {TOP_MENU.dropdown_data_toggle} href="{TOP_MENU.link}" role="button" aria-expanded="false" title="{TOP_MENU.note}" {TOP_MENU.target} class="nav-link">{TOP_MENU.title_trim}</a>
                        <!-- BEGIN: has_sub -->
						<span class="open-close2">
                        <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </span>
						<!-- END: has_sub -->
						<!-- BEGIN: sub -->
                       {SUB}
                       <!-- END: sub -->
                     </li>
              <!-- END: top_menu --> 
                  </ul>
<!-- END: main -->
