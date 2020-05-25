document.body.style.opacity = '1';
$(window).on('load', function() {
	document.body.classList.add('loaded');
	document.body.classList.remove('loading');
	$('.loader-container').fadeOut(1000, 'easeInOutCirc');
});
