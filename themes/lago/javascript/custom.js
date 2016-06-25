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

    // load track page content via ajax
    $('.track_chooser_child').on('click', function(e) {

        e.preventDefault();
        var url = $(this).attr('href');

        $.ajax(url)
            .done(function (response) {
                // populate this div with ajax'd content
                $('.track_chooser_activity_detail_page_info').hide().html(response).stop().fadeIn(500);

                $('html, body').animate({
                    scrollTop: $('.track_chooser_difficulty_panel').offset().top
                });

                // update url to reflect clicked link
                //window.history.pushState(
                //    {url: url},
                //    document.title,
                //    url
                //);
            })
            // if ajax request fails then output error message
            .fail (function (xhr) {
                alert('Error: ' + xhr.responseText);
            });
    });

});
