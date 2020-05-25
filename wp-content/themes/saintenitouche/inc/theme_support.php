<?php

if (function_exists('add_theme_support'))
{
    // Add Menu Support
    add_theme_support('menus');

    // Add Thumbnail Theme Support
    add_theme_support('post-thumbnails');
    add_image_size('x-large', 1600, '', true); // X-Large Thumbnail
    add_image_size('large', 1200, '', true); // Large Thumbnail
    add_image_size('medium', 800, '', true); // Large Thumbnail
    add_image_size('small', 500, '', true); // Medium Thumbnail
    add_image_size('x-small', 300, '', true); // X-Small Thumbnail
    add_image_size('xx-small', 300, '', true); // XX-Small Thumbnail
    add_image_size('custom-size', 700, 200, true); // Custom Thumbnail Size call using the_post_thumbnail('custom-size');

    // Enables post and comment RSS feed links to head
    add_theme_support('automatic-feed-links');

    // Localisation Support
    load_theme_textdomain('saintenitouche', get_template_directory() . '/languages');
}

