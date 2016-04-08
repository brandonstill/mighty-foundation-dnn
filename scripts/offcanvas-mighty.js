function offCanvasyMighty() {
  'use strict';
  // hide submenus
  $('.off-canvas-submenu').hide();

  // when user clicks
  $('.off-canvas-list .toggle-me').click(function() {
    $(this).toggleClass('active');
    $(this).next('.off-canvas-submenu').slideToggle('fast');
  });
}

offCanvasyMighty();
