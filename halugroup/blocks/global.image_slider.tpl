<!-- BEGIN: main -->
<div class="slider-brands-wrapper grid">
                        <div id="owl-home-brands-slider" class="owl-carousel owl-theme">
						<!-- BEGIN: loop -->
						<!-- BEGIN: image -->
                           <div class="item grid__item">
                              <div class="brand-wrapper text-center">
							     <!-- BEGIN: link -->
                                 <a href="{IMAGE.link}" title="" target="_blank"><img src="{IMAGE.path}" alt="" /></a>
                                 <!-- END: link -->
                                 <!-- BEGIN: nolink -->
                                 <a href="#"><img src="{IMAGE.path}" alt="" /></a>
                                 <!-- END: nolink -->
                              </div>
                           </div>
                        <!-- END: image -->
						<!-- END: loop -->
                        </div>
                     </div>
<!-- END: main -->

<!-- BEGIN: config -->
<tr class="warning">
    <td colspan="2" id="image_row">
        <!-- BEGIN: image -->
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-8">
                        <div class="input-group">
                            <input class="form-control" type="text" name="config_image[{IMAGE.index}][path]" value="{IMAGE.path}" id="image_{IMAGE.index}" placeholder="{LANG.image}" /> <span class="input-group-btn">
                                <button class="btn btn-default" onclick="nv_selectfile($(this)); return !1;" data-index="{IMAGE.index}" data-currentpath="{IMAGE.currentpath}" type="button">
                                    <em class="fa fa-folder-open-o fa-fix">&nbsp;</em>
                                </button>
                            </span>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <input class="form-control" name="config_image[{IMAGE.index}][description]" value="{IMAGE.description}" type="text" placeholder="{LANG.description}">
                    </div>
                    <div class="col-sm-8">
                        <input type="url" class="form-control" name="config_image[{IMAGE.index}][link]" value="{IMAGE.link}" placeholder="{LANG.link}" />
                    </div>
                </div>
            </div>
        </div> <!-- END: image -->
    </td>
</tr>
<tr>
    <td colspan="2" class="text-center"><button class="btn btn-primary btn-xs" onclick="nv_add_image(); return !1;">{LANG.add}</button></td>
</tr>
<script>
function nv_selectfile($this)
{
	var area = "image_" + $this.data('index');
	var path = "{NV_UPLOADS_DIR}";
	var currentpath = $this.data('currentpath');
	var type = "image";
	nv_open_browse(script_name + "?" + nv_name_variable
			+ "=upload&popup=1&area=" + area + "&path="
			+ path + "&type=" + type + "&currentpath="
			+ currentpath, "NVImg", 850, 420,
			"resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
}

var index = {INDEX};
function nv_add_image()
{
	var html = '';
	
	html += '<div class="panel panel-default">';
	html += '	<div class="panel-body">';
	html += '		<div class="row">';
	html += '			<div class="col-sm-8">';
	html += '				<div class="input-group">';
	html += '					<input class="form-control" type="text" name="config_image[' + index + '][path]" id="image_' + index + '" placeholder="{LANG.image}" /> <span class="input-group-btn">';
	html += '						<button class="btn btn-default" onclick="nv_selectfile($(this)); return !1;" data-index="' + index + '" data-currentpath="{NV_UPLOADS_DIR}" type="button">';
	html += '							<em class="fa fa-folder-open-o fa-fix">&nbsp;</em>';
	html += '						</button>';
	html += '					</span>';
	html += '				</div>';
	html += '			</div>';
	html += '			<div class="col-sm-8">';
	html += '				<input class="form-control" name="config_image[' + index + '][description]" type="text" placeholder="{LANG.description}">';
	html += '			</div>';
	html += '			<div class="col-sm-8">';
	html += '				<input class="form-control" name="config_image[' + index + '][link]" type="url" placeholder="{LANG.link}">';
	html += '			</div>';
	html += '		</div>';
	html += '	</div>';
	html += '</div>';
	
	index++;
	
	$('#image_row').append(html);
}
</script>
<!-- END: config -->