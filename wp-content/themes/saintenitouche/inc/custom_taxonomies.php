<?php



  register_taxonomy(
    'type',
    'posts',
    array(
      'label' => 'Type',
      'labels' => array(
      'name' => 'Types',
      'singular_name' => 'Type',
      'all_items' => 'Tous les types',
      'edit_item' => 'Éditer le type',
      'view_item' => 'Voir le type',
      'update_item' => 'Mettre à jour le type',
      'add_new_item' => 'Ajouter un type',
      'new_item_name' => 'Nouveau type',
      'search_items' => 'Rechercher parmi les types',
      'popular_items' => 'Types les plus utilisés',
    ),
    'has_archive' => true,
    'hierarchical' => true,
    'rewrite' => [
      'slug' => __('type'),
      'hierarchical' => true,
      'with_front' => true
  ],
    )
  );
  register_taxonomy_for_object_type( 'type', 'post' );