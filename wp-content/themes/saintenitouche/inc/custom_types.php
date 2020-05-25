<?php

function custom_post_types() {

	// On rentre les différentes dénominations de notre custom post type qui seront affichées dans l'administration
	$socials_labels = array(
		// Le nom au pluriel
		'name'                => _x( 'Réseaux sociaux', 'Post Type General Name'),
		// Le nom au singulier
		'singular_name'       => _x( 'Réseaux sociaux', 'Post Type Singular Name'),
		// Le libellé affiché dans le menu
		'menu_name'           => __( 'Réseaux sociaux'),
		'all_items'           => __( 'Tous les posts'),
		'view_item'           => __( 'Voir les posts'),
		'add_new_item'        => __( 'Ajouter un nouveau post'),
		'add_new'             => __( 'Ajouter'),
		'edit_item'           => __( 'Editer le post'),
		'update_item'         => __( 'Modifier le post'),
		'search_items'        => __( 'Rechercher un post'),
		'not_found'           => __( 'Non trouvé'),
		'not_found_in_trash'  => __( 'Non trouvé dans la corbeille'),
	);
	
	
	$socials_args = array(
		'label'               => __( 'Réseaux sociaux'),
		'description'         => __( 'Tous les posts'),
		'labels'              => $socials_labels,
		'supports'            => array( 'title', 'editor', 'thumbnail','taxonomy', 'custom-fields', ),
        'taxonomies' => array('catagory'),
		'menu_icon'           => 'dashicons-share',
        'show_ui'             => true,
		'hierarchical'        => true,
		'public'              => true,
		'publicly_queryable' => true,
		'has_archive'         => false,
	);
	
	// On enregistre notre custom post type qu'on nomme ici "serietv" et ses arguments
    register_post_type( 'socials', $socials_args );
    

}

add_action( 'init', 'custom_post_types', 0 );