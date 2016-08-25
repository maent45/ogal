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

            var map;
            var marker;

            function initialize() {

                var mapOptions = {
                    center: new google.maps.LatLng(40.680898,-8.684059),
                    zoom: 11,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);

            }

            google.maps.event.addDomListener(window, 'load', initialize);

            function searchAddress() {

                var addressInput = $('.track_thumbnail').attr('data-static-address');

                var geocoder = new google.maps.Geocoder();

                geocoder.geocode({address: addressInput}, function(results, status) {

                    if (status == google.maps.GeocoderStatus.OK) {

                        var myResult = results[0].geometry.location;

                        createMarker(myResult);

                        map.setCenter(myResult);

                        map.setZoom(17);
                    }
                });

            }

            function createMarker(latlng) {

                if(marker != undefined && marker != ''){
                    marker.setMap(null);
                    marker = '';
                }

                marker = new google.maps.Marker({
                    map: map,
                    position: latlng
                });
            }

        </script>

    </body>
</html>
