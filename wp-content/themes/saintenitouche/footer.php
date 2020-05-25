		</main>
		<footer>
		<ul class="social-medias__list--footer">
			<li class="social-medias__item--footer socialmedias__item--youtube--footer">
				<a class="social-medias__link--footer" target=blank href="<?php the_field('youtube_url', 'options'); ?>">
			<?php get_template_part('partials/icons/youtube-svg'); ?>
				</a>
			</li>
			<li class="social-medias__item--footer socialmedias__item--instagram--footer">
				<a class="social-medias__link--footer" target=blank href="<?php the_field('instagram_url', 'options'); ?>">
			<?php get_template_part('partials/icons/instagram-svg'); ?>
				</a>
			</li>
			<li class="social-medias__item--footer socialmedias__item--twitter--footer">
				<a class="social-medias__link--footer" target=blank href="<?php the_field('twitter_url', 'options'); ?>">
			<?php get_template_part('partials/icons/twitter-svg'); ?>
				</a>
			</li>
		</footer>
		<?php wp_footer(); ?>
	</body>
	
</html>
