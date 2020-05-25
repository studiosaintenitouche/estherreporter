<div class="home__wrapper home__wrapper--intro">
    <div class="vertical__center-container">
        <div class="vertical__center"> 
            <div class="container">
                <h1 class="logo img">
                    <img src="./wp-content/themes/saintenitouche/images/samples/logomarine.png" alt="logo esther reporter">
                </h1>
                <nav class="nav">
                    <ul class="nav__list">
                        <li class="nav__item">Vidéos</li>
                        <li class="nav__item">Podcasts</li>
                        <li class="nav__item">Articles</li>
                        <li class="nav__item">A propos</li>
                    </ul>
                </nav>
                <p class="intro"><?php the_field('home_intro_text'); ?></p>
                <ul class="social-medias__list">
                    <li class="social-medias__item socialmedias__item--youtube">
                        <a class="social-medias__link" target=blank href="<?php the_field('youtube_url', 'options'); ?>">
                            <?php get_template_part('partials/icons/youtube-svg'); ?>        
                        </a>
                    </li>
                    <li class="social-medias__item socialmedias__item--instagram">
                        <a class="social-medias__link" target=blank href="<?php the_field('instagram_url', 'options'); ?>">
                            <?php get_template_part('partials/icons/instagram-svg'); ?>        
                        </a>
                    </li>
                    <li class="social-medias__item socialmedias__item--twitter">
                        <a class="social-medias__link" target=blank href="<?php the_field('twitter_url', 'options'); ?>">
                            <?php get_template_part('partials/icons/twitter-svg'); ?>        
                        </a>
                    </li>
            </div>
        </div>   
    </div>
</div>