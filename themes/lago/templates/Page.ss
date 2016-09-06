<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->

    <% include Head %>

    <body class="$ClassName">

        <% include Nav %>

        <div class="main" role="main">
            <h2 class="main_page_title">$MenuTitle</h2>

            $Layout
        </div>

        <% include Footer %>

        <% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>
        <script type="text/javascript" src="{$ThemeDir}/javascript/custom.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=$maps_api_key"></script>
        <script type="text/javascript" src="{$ThemeDir}/javascript/track_chooser/track_address_geocoding.js"></script>
    <script type="text/javascript" src="{$ThemeDir}/javascript/track_chooser/track_review_track_id.js"></script>

        <script>
            function initialize() {
                var mapProp = {
                    center:new google.maps.LatLng(51.508742,-0.120850),
                    zoom:5,
                    mapTypeId:google.maps.MapTypeId.ROADMAP
                };
                var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>

    </body>
</html>
