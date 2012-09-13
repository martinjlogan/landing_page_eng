// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
  $('form').on('click', '.remove_fields', function(event) {
     $(this).prev('input[type=hidden]').val('1');
     $(this).closest('fieldset').hide();
     return event.preventDefault();
    });
  $('form').on('click', '.add_fields', function(event) {
     var regexp, time;
     time = new Date().getTime();
     regexp = new RegExp($(this).data('id'), 'g');
     $(this).before($(this).data('fields').replace(regexp, time));
     return event.preventDefault();
 });
});



// slideshow.js
$(function() {
 //create an array of titles
 var titles = $('#slide-show-slides div.slide-show-slide').find("h2").map(function() { return $(this).text(); });
    //add an unordered list to contain the navigation
    //invoke the cycle plugin on #slide-show-images
    $('#slide-show-slides').before('<ul id="pager"></ul>').cycle({
        //specify options
        fx:     'scrollleft', //name of transition effect
        timeout: 10000,           //disable auto advance
        //pager:  '#pager',     //selector for element to use as pager container
        //pageranchorbuilder: function (index) {               //build the pager
       // return '<li><a href="#">' + titles[index] + '</a></li>';
    //},
    //updateactivepagerlink: function(pager, currslideindex) {
    //    $(pager).find('li').removeclass('active').filter('li:eq('+currslideindex+')').addclass('active');
   // }
    });
});


