<?php
    $podcasts_list = new WP_Query(
    array(
        'post_type' => 'podcasts',
        'posts_per_page' => 6 )
    );
?>

<div class="home__wrapper home__wrapper--podcasts">
    <div class="container">
        <h2 class="title">Mes derniers podcasts</h2>
        <ul class="podcasts__list post__list">   
            <?php while($podcasts_list->have_posts()): $podcasts_list->the_post(); ?>
                <li class="podcasts__item post__item">
                    <div class="podcast">
                        <div class="podcast__container post__container">
                            <div class="podcast__image img post__image">
                                <img src=<?php the_post_thumbnail_url() ?> alt="image podcast">
                            </div>
                            <div class="podcast__content post__content">
                                <h3 class="podcast__title post__title"><?php the_title(); ?></h3>
                                <div class="podcast__date post__date"><?php the_time('j F Y'); ?></div>
                                <p class="podcast__excerpt post__excerpt"><?php the_field('podcast_excerpt'); ?></p>
                                <a class="podcast__link post__link" target="blank" href="<?php the_field('podcast_link'); ?>">Ecouter le podcast →</a>
                            </div>
                        </div>
                    </div>
                </li>
            <?php
                endwhile;
                wp_reset_postdata();
            ?>
        </ul>
        <div class="link-more__container">
            <a class="link-more" href="<?php echo get_post_type_archive_link('podcasts'); ?>">Tous mes podcasts →</a>
        </div>
    </div>    
</div>