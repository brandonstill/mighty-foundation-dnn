$( document ).ready(function() {
  'use strict';

  // Includes
  var reset = require('./reset.js');
  var foundation = require('./foundation.js');
  var offCanvasMighty = require('./offcanvas-mighty.js');
  // var slider = require('./slider.js');

  // do something here
  
  // Quote Form Required Fields English
  $('.en .quotrr .firstName label').html('First Name*');
  $('.en .quotrr .lastName label').html('Last Name*');
  $('.en .quotrr .email label').html('Email*');
  $('.en .quotrr .phone label').html('Phone*');

  // Quote Form Error Handling
  function validize() {
    $('.en .quotrr .validation').addClass('fillme').html('Please fill out required fields*<br>');
  } 

  if ($('.quotrr').length > 0) {
    $('.trigger input').bind('click', function () {  
      $('.quotrr .validation').html('');  
      if (!$('.quotrr .firstName .wq-input-field').val()) { 
        $('.quotrr .firstName .wq-input-field').parent().addClass('fillme');
        validize();
      }
      if (!$('.quotrr .lastName .wq-input-field').val()) { 
        $('.quotrr .lastName .wq-input-field').parent().addClass('fillme');
        validize();
      }
      if (!$('.quotrr .email .wq-input-field').val()) { 
        $('.quotrr .email .wq-input-field').parent().addClass('fillme');
        validize();
      }
      if (!$('.quotrr .phone .wq-input-field').val()) { 
        $('.quotrr .phone .wq-input-field').parent().addClass('fillme');
        validize();
      }
    });
  }

});

