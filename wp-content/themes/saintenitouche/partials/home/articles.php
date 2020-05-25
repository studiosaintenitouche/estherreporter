<?php
    $post_list = new WP_Query(
    array(
        'post_type' => 'post',
        'posts_per_page' => 6 )
    );
?>
<div class="home__wrapper home__wrapper--articles">
    <div class="container">
        <h2 class="title">Mes derniers articles</h2>
        <ul class="articles__list post__list">
            <?php while($post_list->have_posts()): $post_list->the_post(); ?>
                <li class="articles__item post__item">
                    <div class="article">
                        <div class="article__container post__container">
                            <div class="article__image img post__image">
                                <img src=<?php the_post_thumbnail_url() ?>  alt="image article">
                            </div>
                            <div class="article__content post__content">
                                <h3 class="article__title post__title"><?php the_title(); ?></h3>
                                <div class="article__date post__date"><?php the_time('j F Y'); ?></div>
                                <p class="article__excerpt post__excerpt"><?php the_field('post_excerpt'); ?></p>
                                <a class="article__link post__link" target="blank" href="<?php the_field('post_link'); ?>">Lire l'article →</a>
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
            <a class="link-more" href="<?php echo get_post_type_archive_link('post'); ?>">Tous mes articles →</a>
        </div>
    </div>
</div>