<?php

function menus_register() {
  register_nav_menus(
    array(
      'primary' => __( 'Primary' ),
      'mobile' => __( 'Mobile' ),
      'socials' => __( 'Socials' ),
      'footer' => __( 'Footer' )
    )
  );
}
add_action( 'init', 'menus_register' );