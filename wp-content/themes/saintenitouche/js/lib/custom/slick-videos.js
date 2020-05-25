var buttonPrev = document.getElementById('btn-video--prev');
var buttonNext = document.getElementById('btn-video--next');

$(document).ready(function(){
    $('.video__list').slick({
      slidesToShow: 1,
      centerMode: true,
      infinite: true,
      focusOnSelect: true,
      adaptiveHeight: false,
      prevArrow: buttonPrev,
      nextArrow: buttonNext,
      dots: true,
      responsive: [
        {
          breakpoint: 880,
          settings: {
            slidesToShow: 1
          }
        }
      ]
    });
});

  