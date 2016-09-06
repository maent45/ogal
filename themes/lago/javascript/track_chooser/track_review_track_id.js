/*
*
* Updates the TrackID hiddenField value based on the ID of the clicked track
*
* */

if ($('body').hasClass('TrackChooser')) {

    var hiddenField_TrackID = $('input[name="TrackID"]');
    var track_reviews_wrapper = $('.user_reviews');

    $('.track_thumbnail').on('click', function() {

        var self_id = $(this).attr('id');

        track_reviews_wrapper.show();

        console.log(hiddenField_TrackID.val());

        hiddenField_TrackID.val(self_id);

    });

}

