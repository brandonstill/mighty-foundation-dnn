$( document ).ready(function() {
  'use strict';

  // Includes
  var reset = require('./reset.js');
  var foundation = require('./foundation.js');
  // var slider = require('./slider.js');
  var offCanvasMighty = require('./offcanvas-mighty.js');

  $('.js-companies__slider').slick({
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: false,
    dots: false,
    infinite: true,
    responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: false,
        speed: 3000,
        dots: false
      }
    },
    {
      breakpoint: 600,
      settings: {
        speed: 3000,
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        speed: 3000,
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }],
    slidesToShow: 5,
    slidesToScroll: 5,
    speed: 3000,
    rtl: false
  });

});

