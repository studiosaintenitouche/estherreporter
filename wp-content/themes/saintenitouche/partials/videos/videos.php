<?php
  
?>
<div class="home__wrapper home__wrapper--videos">
    <h2 class="title">Mes dernières vidéos</h2>
    <ul class="video__list">
    <?php
        while($videos_list->have_posts()): $videos_list->the_post();
        ?>
            <li class="video__item">
                    <div class="video">
                            <iframe width="560" height="315" src="<?php the_field('youtube_code'); ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>                 
                </li>
        <?php
        endwhile;
        ?>
    </ul>
    <div class="video-buttons">
        <button type="button" id="btn-video--prev" class="video-btn video-btn--prev">←</button>
        <button type="button" id="btn-video--next" class="video-btn video-btn--next">→</button>
    </div> 
</div>
