<?php get_header(); ?>

	<?php if (have_posts()): while (have_posts()) : the_post(); ?>
		<article?>
			<h1>
				<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a>
			</h1>
		</article>

	<?php endwhile; ?>
	<?php endif; ?>

<?php get_footer(); ?>
