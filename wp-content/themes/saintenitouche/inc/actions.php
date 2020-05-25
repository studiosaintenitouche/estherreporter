<?php

remove_action('wp_head', 'wp_generator'); // Display the XHTML generator that is generated on the wp_head hook, WP version
remove_action('wp_head', 'feed_links_extra', 3); // Display the links to the extra feeds such as category feeds
remove_action('wp_head', 'feed_links', 2); // Display the links to the general feeds: Post and Comment Feed
remove_action('wp_head', 'rsd_link'); // Display the link to the Really Simple Discovery service endpoint, EditURI link
remove_action('wp_head', 'wlwmanifest_link'); // Display the link to the Windows Live Writer manifest file.
remove_action('wp_head', '_admin_bar_bump_cb'); // Remove Admin Scripts in head
remove_action( 'wp_head', 'print_emoji_detection_script', 7 ); // Remove Emoji Scripts in head
remove_action( 'admin_print_scripts', 'print_emoji_detection_script' ); // Remove Emoji Scripts in head
remove_action( 'wp_print_styles', 'print_emoji_styles' ); // Remove Emoji Style in head
remove_action( 'admin_print_styles', 'print_emoji_styles' ); // Remove Emoji Style in head
remove_action( 'wp_head','rest_output_link_wp_head'); // Remove REST Output in head
remove_action( 'wp_head','wp_oembed_add_discovery_links'); // Remove REST Output in head
remove_action( 'template_redirect', 'rest_output_link_header', 11 ); // Remove REST Output in head
remove_action('wp_head', 'wp_print_scripts');
remove_action('wp_head', 'wp_print_head_scripts', 9);
remove_action('wp_head', 'wp_enqueue_scripts', 1);