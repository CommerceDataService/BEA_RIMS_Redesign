// $('html').click(function() {
//    $('.tooltip-function').hide(); 
// });

// $('.tooltip-function').click(function(event){
//      event.stopPropagation();
// });

// $('#menutoggle').click(function(event){
//      $('#menucontainer').toggle();
// });

// $(document).click(function(event) { 
//     if(!$(event.target).closest('.custom-tooltip').length) {
//         if($('.custom-tooltip').is(":in")) {
//             $('.custom-tooltip').hide();
//         }
//     }        
// });

// $('.tooltip-inner').on('click', function () {
//   $(this.hash).toggleClass('in').focus();
// });

// $('a').on('focusout', function () {
//   $(this).removeClass('in');
// });

$(document).on('click', function(event) {
	// console.log($(document).selectall(.custom-tooltip)
  if (!$(event.target).closest('.custom-tooltip').length) {
    // Hide the menus.
  }
});