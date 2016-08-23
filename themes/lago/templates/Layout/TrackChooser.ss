<h3>$Title</h3>

<!--- left panel --->
<div class="track_chooser_panel">

    <!--- difficulty levels --->
    <div class="track_chooser_difficulty_panel">
        <!--- following wrapper content loaded via ajax --->
        <div class="track_chooser_activity_detail_page_info">
            <% include ActivityDetailAjax %>
        </div>

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

    <!--- activity details --->
    <%--<% if $Children %>--%>
         <%--<div class="track_chooser_children_wrapper">--%>
             <%--<h3>$suggestions_heading</h3>--%>
             <%--<ul>--%>
                 <%--<% loop $Children %>--%>
                     <%--<a href="$Link" data-difficulty-id="$track_difficulty.ID" class="track_chooser_child">--%>
                         <%--<% if $cover_img %>--%>
                             <%--<img src="$cover_img.URL" alt="$Title cover image">--%>
                         <%--<% end_if %>--%>
                         <%--<li>$Title</li>--%>
                     <%--</a>--%>
                 <%--<% end_loop %>--%>
             <%--</ul>--%>
         <%--</div>--%>
    <%--<% end_if %>--%>

    <!--- tracks --->
    <% if $tracks %>
        <ul>
            <% loop $tracks %>
                <li>
                    <h3>$track_name</h3>
                    <% if $warning %>
                        <p>Caution</p>
                    <% end_if %>
                    <p>$elevation</p>
                    <p>$difficulty</p>
                    <p>$time</p>
                    <% if $dogs_allowed%>
                        <p>Dogs allowed</p>
                    <% end_if %>
                    <p>maps_address</p>
                </li>
            <% end_loop %>
        </ul>        
    <% end_if %>
    span    
</div>

 <!--- map section --->
<div id="googleMap"></div> 