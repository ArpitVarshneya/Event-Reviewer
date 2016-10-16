function updateCountdown() {
    // 140 is the max message length
    var remaining = 140 - jQuery('.message').val().length;
    jQuery('.countdown').text(remaining + ' characters remaining.');
}

jQuery(document).ready(function($) {
    updateCountdown();
    $('.message').change(updateCountdown);
    $('.message').keyup(updateCountdown);
    $("#word_count").on('keydown', function(e) {
	    var words = $.trim(this.value).length ? this.value.match(/\S+/g).length : 0;
	    if (words <= 100) {
	        $('#display_count').text(words);
	        $('#word_left').text(200-words)
	    }else{
	        if (e.which !== 8) e.preventDefault();
	    }
	});
});