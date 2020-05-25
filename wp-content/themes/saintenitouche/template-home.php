<?php

/*
Template Name: Accueil
*/

?>
<?php get_header(); ?>
    <div class="home">
        <?php get_template_part('partials/home/intro'); ?>
        <?php get_template_part('partials/home/videos'); ?>
        <?php get_template_part('partials/home/podcasts'); ?>
        <?php get_template_part('partials/home/articles'); ?>
        <?php get_template_part('partials/home/apropos'); ?>
    </div>
<?php get_footer('partials/footer'); ?>