<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sun, 04 May 2014 12:41:32 GMT
 */

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );



if( ! nv_function_exists( 'nv_aboutskyway_embed' ) )
{
	function nv_aboutskyway_embed_config( $module, $data_block, $lang_block )
    {
	    if( defined( 'NV_EDITOR' ) )
		{
			require NV_ROOTDIR . '/' . NV_EDITORSDIR . '/' . NV_EDITOR . '/nv.php';
		}

		$event = htmlspecialchars( nv_editor_br2nl( $data_block['event'] ) );
		if( defined( 'NV_EDITOR' ) and nv_function_exists( 'nv_aleditor' ) )
		{
			$event = nv_aleditor( 'config_event', '100%', '150px', $event, 'Basic' );
		}
		else
		{
			$event = '<textarea style="width: 100%" name="config_event" id="config_event" cols="20" rows="8">' . $event . '</textarea>';
		}
        $html = "";
		$html = '<div class="form-group">';
		$html .= '<label class="control-label col-sm-6">' . $lang_block['image'] . ':</label>';
		$html .= '<div class="col-sm-18"><input class="form-control w300" style="float:left" type="text" name="config_modimg" id="modimg" value="' . $data_block['modimg'] . '"/>
						<input class="btn btn-info" style="style="float:left" type="button" value="Selectimg" name="img"/></div>';
		$html .= '</div>';
		
        $html .= '<script type="text/javascript">
				 $("input[name=img]").click(function() 
					{
					var area = "modimg";
					var path= "' . NV_UPLOADS_DIR . '/home";
					var type= "image";
					nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&path=" + path + "&type=" + type, "NVImg", "850", "420", "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
					return false;
					});
			</script>';
			
		$html .= '<div class="form-group">';
		$html .= '<label class="control-label col-sm-6">' . $lang_block['content'] . ':</label>';
		$html .= '<div class="col-sm-18">' . $event . '</div>';
		$html .= '</div>';
		
		return $html;
	}

	function nv_aboutskyway_embed_submit( $module, $lang_block )
	{
		global $nv_Request;
		$event = $nv_Request->get_editor( 'config_event', '', NV_ALLOWED_HTML_TAGS );
		$event = strtr( $event, array(
			"\r\n" => '',
			"\r" => '',
			"\n" => '' ) );
		$return = array();
		$return['error'] = array();
		$return['config']['modimg'] = $nv_Request->get_string( 'config_modimg', 'post', 0 );
		$return['config']['event'] = $event;
		return $return;
	}

	function nv_aboutskyway_embed( $block_config )
	{
		global $global_config, $site_mods, $lang_global, $blockID;

		if( file_exists( NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.img_about.tpl' ) )
		{
			$block_theme = $global_config['module_theme'];
		}
		elseif( file_exists( NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.img_about.tpl' ) )
		{
			$block_theme = $global_config['site_theme'];
		}
		else
		{
			$block_theme = 'default';
		}

		$xtpl = new XTemplate( 'global.img_about.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks' );
		$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
		$xtpl->assign( 'BLOCK_THEME', $block_theme );
		$xtpl->assign('LANG', $lang_global);
		$xtpl->assign( 'BLOCKID', $blockID );
		$xtpl->assign( 'DATA', $block_config );
		$xtpl->assign( 'BLOCK_TITLE', $block_config['title'] );
		$xtpl->assign('LINK_ABOUT', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=about');
		
		$imgsrc = $block_config['modimg'];
		$xtpl->assign( 'IMGSRC', $imgsrc );
		if( ! empty( $block_config['event'] ) )
		{
			$xtpl->parse( 'main.event' );
		}
		$xtpl->parse( 'main' );
		return $xtpl->text( 'main' );
	}
}

if( defined( 'NV_SYSTEM' ) )
{
	$content = nv_aboutskyway_embed( $block_config );
}