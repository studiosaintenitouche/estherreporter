<?php

add_filter('wp_nav_menu_items','toggle_menu', 10, 2);
function toggle_menu( $nav, $args ) {
    if( $args->theme_location == 'primary' )
        return $nav.'<li class="menu-item display-mobile"><div id="menu-toggle" class="menu-toggle menu-toggle--3"><span class="menu-toggle-line"></span><span class="menu-toggle-line"></span><span class="menu-toggle-line"></span><span class="menu-toggle-menu"><span class="menu-toggle-menu-menu">menu</span><span  class="menu-toggle-menu-fermer">fermer</span></span></div></li>';
    return $nav;
}
