$(document).ready(function() {

    if ($('body').hasClass('TrackChooser')) {

        // filter tracks by difficulty levels
        $('.track_chooser_difficulty_filter').on('click', function(e) {
            e.preventDefault();

            var self_difficulty = $(this).attr('data-difficulty-id');

            $('.track_chooser_child').each(function() {

                if ($(this).attr('data-difficulty-id') === self_difficulty) {

                    $(this).css({'display':'inline-block','opacity':'0'}).stop().animate({'opacity':'1'});
                } else {
                    $(this).css({'display':'none','opacity':'1'}).stop().animate({'opacity':'0'});
                }
            });

        });

        // show all tracks
        $('.track_chooser_difficulty_filter_all').on('click', function(e) {
            e.preventDefault();
            $('.track_chooser_child').css({'display':'inline-block','opacity':'0'}).stop().animate({'opacity':'1'});
        });
    }

});
