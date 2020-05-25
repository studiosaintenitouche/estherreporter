<?php

//adding setting for copyright text
add_action('customize_register', 'saintenitouche_customizer');

function saintenitouche_customizer($wp_customize) {
    //adding section in wordpress customizer   
    $wp_customize->add_section('colors_section', array(
        'title' => 'Couleurs'
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('background_color', array(
        'default'=> '#b5b995',
    ));

    $wp_customize->add_control('background_color', array(
        'label'   => 'Background',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('title_color', array(
        'default'        => '#b24903',
    ));

    $wp_customize->add_control('title_color', array(
        'label'   => 'Titres',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('text_color', array(
        'default'        => '#262723',
    ));

    $wp_customize->add_control('text_color', array(
        'label'   => 'Texte',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('primary_color', array(
        'default'        => '#b24903',
    ));

    $wp_customize->add_control('primary_color', array(
        'label'   => 'Primaire',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('primary_color_variant', array(
        'default'        => '#b24903',
    ));

    $wp_customize->add_control('primary_color_variant', array(
        'label'   => 'Variante',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('secondary_color', array(
        'default'        => '#262723',
    ));

    $wp_customize->add_control('secondary_color', array(
        'label'   => 'Secondaire',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('secondary_color_variant', array(
        'default'        => '#262723',
    ));

    $wp_customize->add_control('secondary_color_variant', array(
        'label'   => 'Variante',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('primary_btn_color', array(
        'default'        => '#b24903',
    ));

    $wp_customize->add_control('primary_btn_color', array(
        'label'   => 'Bouton primaire',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('primary_btn_color_hover', array(
        'default'        => '#b24903',
    ));

    $wp_customize->add_control('primary_btn_color_hover', array(
        'label'   => 'Bouton primaire hover',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('primary_btn_text_color', array(
        'default'        => '#FFFFFF',
    ));

    $wp_customize->add_control('primary_btn_text_color', array(
        'label'   => 'Texte bouton primaire',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('secondary_btn_color', array(
        'default'        => '#3b3d36',
    ));

    $wp_customize->add_control('secondary_btn_color', array(
        'label'   => 'Bouton secondaire',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('secondary_btn_color_hover', array(
        'default'        => '#3b3d36',
    ));

    $wp_customize->add_control('secondary_btn_color_hover', array(
        'label'   => 'Bouton secondaire hover',
        'section' => 'colors_section',
        'type'    => 'color',
    ));

    //adding setting for copyright text
    $wp_customize->add_setting('secondary_btn_text_color', array(
        'default'        => '#FFFFFF',
    ));

    $wp_customize->add_control('secondary_btn_text_color', array(
        'label'   => 'Texte bouton secondaire',
        'section' => 'colors_section',
        'type'    => 'color',
    ));
}