<% include Header %>

<div class="track_chooser_reviews_wrapper">
    <!--- left panel --->
    <div class="track_chooser_panel">
        <!--- search input --->
        <div class="search_wrapper">
            <input type="text" placeholder="Search">
        </div>

        <!--- difficulty levels --->
        <div class="track_chooser_difficulty_panel">

            <h3>$difficulty_levels_heading</h3>
            <% if $difficulty_levels %>
                <ul>
                    <a href="#" class="track_chooser_difficulty_filter_all">
                        <li>All</li>
                    </a>
                    <% loop $difficulty_levels %>
                        <a href="#" data-difficulty-id="$ID" class="track_chooser_difficulty_filter">
                            <li>$difficulty_level</li>
                        </a>
                    <% end_loop %>
                </ul>
            <% end_if %>

        </div>

        <% if $tracks %>
            <!--- tracks detail view --->
            <ul class="track_detail_view_wrapper">
                <% loop $tracks %>
                    <li class="track" id="$ID">

                        <h3>$track_name</h3>

                        <%--<button type="submit">Add to trip</button>--%>

                        <div class="track_header_desc">
                            <% if $warning %>
                                <p>Caution</p>
                            <% end_if %>
                            <p>$elevation</p>

                            <% if $track_difficulty %>
                                <% loop $track_difficulty %>
                                    <p>$difficulty_level</p>
                                <% end_loop %>
                            <% end_if %>

                            <p>$time</p>
                            <% if $dogs_allowed%>
                                <p>Dogs allowed</p>
                            <% end_if %>
                            <p>$maps_address</p>
                        </div>

                        <% if $track_desc %>
                            $track_desc
                        <% end_if %>

                        $image.SetWidth(768)
                    </li>
                <% end_loop %>
            </ul>

            <!--- tracks thumbnails --->
            <ul class="tracks_thumbnails_wrapper">
                <h3>Suggestions</h3>
                <% loop $tracks %>
                    <a href="#" class="track_thumbnail" id="$ID" data-difficulty-id="$track_difficulty.ID" data-static-address="$maps_address">
                        <li>
                            <div>$image.SetWidth(450)</div>
                            <p>$track_name</p>
                        </li>
                    </a>
                <% end_loop %>
            </ul>

        <% end_if %>

    </div>

    <!--- user reviews section --->
    <div class="user_reviews">
        <h3>User Reviews</h3>
        <div class="user_reviews_reviewer_profile">
            <img src="$ThemeDir/images/spiderman-icon.png">
            <p>Boy Spiderman</p>
        </div>
        <div class="user_reviews_review">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
        </div>
    </div>

</div>

 <!--- map section --->
<div id="googleMap"></div>

<%--$commentsForm--%>
<%--<% loop $comments %>--%>
    <%--$comments--%>
<%--<% end_loop %>--%>