// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
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
