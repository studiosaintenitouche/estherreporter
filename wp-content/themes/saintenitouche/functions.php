<?php

/*
 *  Author: Paul Pichot | @paul_pichot
 *  URL: saintenitouche.com | @saintenitouche
 *  Custom functions, support, custom post types and more.
 */

/*------------------------------------*\
	External Modules/Files
\*------------------------------------*/

include('inc/actions.php');
include('inc/admin-menu.php');
include('inc/allow_svg.php');
include('inc/dashboard.php');
include('inc/menus_register.php');
include('inc/menu_toggle.php');
include('inc/custom_fields.php');
include('inc/custom_types.php');
include('inc/custom_taxonomies.php');
include('inc/customizer.php');
include('inc/options_page.php');
include('inc/theme_support.php');


/*------------------------------------*\
	Functions
\*------------------------------------*/

// Remove Admin bar
show_admin_bar(false);






// Remove Gutemberg Styles
function custom_theme_assets() {
    wp_dequeue_style( 'wp-block-library' );
}
add_action( 'wp_enqueue_scripts', 'custom_theme_assets', 100 );







// Remove WP_EMBED Script from footer
function remove_wp_embed() {
	if (!is_admin()) {
		wp_deregister_script('wp-embed');
	}
}
add_action('init', 'remove_wp_embed');

function prefix_add_footer_styles() {
    wp_enqueue_style( 'saintenitouche', get_template_directory_uri() . '/css/saintenitouche.css' );
};
add_action( 'get_footer', 'prefix_add_footer_styles' );






// CUSTOM JAVASCRIPT
function javascripts() {

	wp_enqueue_script( 'saintenitouche', get_template_directory_uri() . '/js/saintenitouche.js');

	// THEMES VARIABLES
	$custom_variables = array( 'theme_url' => get_stylesheet_directory_uri() );
	wp_localize_script( 'saintenitouche', 'theme_variables', $custom_variables );
}
add_action( 'wp_footer', 'javascripts' );





//TEMPLATE NAME
function prefix_conditional_body_class( $classes ) {
    if( is_page_template('template-map.php') )
        $classes[] = 'map map-full-height';

    return $classes;
}
add_filter( 'body_class', 'prefix_conditional_body_class' );






//Remove JQuery migrate
function remove_jquery_migrate( $scripts ) {
	if ( ! is_admin() && isset( $scripts->registered['jquery'] ) ) {
	$script = $scripts->registered['jquery'];
	
	if ( $script->deps ) { // Check whether the script has any dependencies
	$script->deps = array_diff( $script->deps, array( 'jquery-migrate' ) );
	}
	}
	}
	
	add_action( 'wp_default_scripts', 'remove_jquery_migrate' );
   

?>
