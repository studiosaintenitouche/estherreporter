<?php

?>
            <div class="container">
            <h2 class="title">Mes derniers podcasts</h2>
            <ul class="podcasts__list post__list">
             
                    <?php
        while(have_posts()): the_post();
        ?>
            <li class="podcasts__item post__item">
                <div class="podcast">
                    <a class="podcast__link post__link" href="<?php get_field('podcast_link'); ?>">
                        <div class="podcast__container post__container">
                        <div class="podcast__image img post__image">
                            <img src=<?php the_field('podcast_image'); ?> alt="image podcast">
                        </div>
                        <div class="podcast__content post__content">
                            <h3 class="podcast__title post__title"><?php the_title(); ?></h3>
                            <div class="podcast__date post__date">7 avril 2020</div>
                            <p class="podcast__excerpt post__excerpt"><?php the_field('podcast_excerpt'); ?></p>
                        </div>
                        </div>
                    </a>
                </div>
            </li>
        <?php
        endwhile;
        ?>
    </ul>
</div>    