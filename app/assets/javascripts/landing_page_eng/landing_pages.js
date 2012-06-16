// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// slideshow.js
$(document).ready(function () {
    //Create an array of titles
    var titles = $('#slide-show-slides div.slide-show-slide').find("h2").map(function() { return $(this).text(); });
    //Add an unordered list to contain the navigation
    //Invoke the cycle plugin on #slide-show-images
    $('#slide-show-slides').before('<ul id="pager"></ul>').cycle({
        //Specify options
        fx:     'scrollLeft', //Name of transition effect
        timeout: 1,           //Disable auto advance
        pager:  '#pager',     //Selector for element to use as pager container
        pagerAnchorBuilder: function (index) {               //Build the pager
        return '<li><a href="#">' + titles[index] + '</a></li>';
    },
    updateActivePagerLink: function(pager, currSlideIndex) {
        $(pager).find('li').removeClass('active').filter('li:eq('+currSlideIndex+')').addClass('active');
    }
    });
});

(function() {
	jQuery(function() {
		$('form').on('click', '.remove_fields', function(event) {
			$(this).prev('input[type=hidden]').val('1');
			$(this).closest('fieldset').hide();
			return event.preventDefault();
		});
		return $('form').on('click', '.add_fields', function(event) {
			var regexp, time;
			time = new Date().getTime();
			regexp = new RegExp($(this).data('id'), 'g');
			$(this).before($(this).data('fields').replace(regexp, time));
			return event.preventDefault();
		});
	});

}).call(this);

