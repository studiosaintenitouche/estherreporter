// Gulp.js configuration
'use strict';

const // source and build folders
	dir = {
		src: '/Users/felisepichot/desktop/DEV/SERVER/estherreporter/wp-content/themes/saintenitouche/',
		build: '/Users/felisepichot/desktop/DEV/SERVER/estherreporter/wp-content/themes/saintenitouche/'
	},
	// Gulp and plugins
	gulp = require('gulp'),
	gutil = require('gulp-util'),
	newer = require('gulp-newer'),
	imagemin = require('gulp-imagemin'),
	sass = require('gulp-sass'),
	postcss = require('gulp-postcss'),
	deporder = require('gulp-deporder'),
	concat = require('gulp-concat'),
	babel = require('gulp-babel'),
	stripdebug = require('gulp-strip-debug'),
	uglify = require('gulp-uglify'),
	minify = require('gulp-minify');

// Browser-sync
var browsersync = false;

// image settings
const images = {
	src: dir.src + 'images/**/*',
	build: dir.build + 'images/'
};

// image processing
gulp.task('images', () => {
	return gulp.src(images.src).pipe(newer(images.build)).pipe(imagemin()).pipe(gulp.dest(images.build));
});

// CSS settings
var css = {
	src: dir.src + 'css/scss/saintenitouche.sass',
	watch: dir.src + 'css/scss/**/*',
	build: dir.build + 'css/',
	sassOpts: {
		outputStyle: 'nested',
		indentedSyntax: false,
		imagePath: images.build,
		precision: 3,
		errLogToConsole: true
	},
	processors: [
		require('postcss-assets')({
			loadPaths: ['images/'],
			basePath: dir.build,
			baseUrl: '/wp-content/themes/saintenitouche/'
		}),
		require('autoprefixer')({
			browsers: ['last 2 versions', '> 2%']
		}),
		require('css-mqpacker'),
		require('cssnano')
	]
};

// CSS processing
gulp.task('css', ['images'], () => {
	return gulp.src(css.src).pipe(sass(css.sassOpts)).pipe(postcss(css.processors)).pipe(gulp.dest(css.build)).pipe(
		browsersync
			? browsersync.reload({
				stream: true
			})
			: gutil.noop()
	);
});

// JavaScript settings
const js = {
	src: {
		jquery: dir.src + 'js/lib/jquery/*',
		slick: dir.src + 'js/lib/slick/*',
		formvalidation: dir.src + 'js/lib/formvalidation/**/*',
		bootstrap: dir.src + 'js/lib/bootstrap/**/*',
		gsap: dir.src + 'js/lib/gsap/**/*',
		menu: dir.src + 'js/lib/menu/**/*',
		filter: dir.src + 'js/lib/filter/**/*',
		loader: dir.src + 'js/lib/loader/**/*',
		custom: dir.src + 'js/lib/custom/**/*',
		scrollmagic: dir.src + 'js/lib/scrollmagic/**/*',
	},
	build: dir.build + 'js/',
	filename: 'saintenitouche.js'
};

// JavaScript processing
gulp.task('js', () => {
	return gulp
		.src([
			js.src.jquery,
			js.src.slick,
			js.src.custom,
		])
		.pipe(deporder())
		.pipe(concat(js.filename))
		.pipe(stripdebug())
		.pipe(minify())
		.pipe(uglify())
		.pipe(gulp.dest(js.build))
		.pipe(
			browsersync
				? browsersync.reload({
					stream: true
				})
				: gutil.noop()
		);
});

// run all tasks
gulp.task('build', ['css', 'js']);

// default task
gulp.task('default', ['css', 'js']);
