<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->

    <% include Head %>

    <body class="$ClassName">

        <% include Header %>

        <div class="main" role="main">
            $Layout
        </div>

        <% include Footer %>

        <% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>
        <script type="text/javascript" src="{$ThemeDir}/javascript/custom.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=$maps_api_key"></script>

        <script>

            // initialize the map
            function initialize() {
                var mapProp = {
                    center:new google.maps.LatLng(51.508742, -0.120850),
                    zoom: 7,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                // create map object
                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

                // create new instance of geocoder
                var geocoder = new google.maps.Geocoder();

                $('.track_thumbnail').on('click', function() {
                    // call geocodeTrackAddress method
                    geocodeTrackAddress(geocoder, map);
                });

            }

            /* GEOCODE STATIC ADDRESS */
            function geocodeTrackAddress(geocoder, resultsMap) {

                var track_address = $('.track_thumbnail').attr('data-static-address');

                geocoder.geocode({'address': track_address}, function(results, status) {

                    if (status === 'OK') {
                        resultsMap.setCenter(results[0].geometry.location);

                        // create map marker and add to location
                        var marker = new google.maps.Marker({
                            map: resultsMap,
                            position: results[0].geometry.location
                        });

                    } else {

                        alert('Geocode was not successful for the following reason: ' + status);

                    }

                });

            }
            /* END GEOCODE STATIC ADDRESS */

            $('.track_thumbnail').on('click', function() {
                console.log($(this).attr('data-static-address'));
            });

            // event listener to load map
            google.maps.event.addDomListener(window, 'load', initialize);

        </script>

    </body>
</html>
