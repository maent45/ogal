<h1>$Title</h1>

<!--- difficulty levels --->
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

<!--- activity details --->
<% if $Children %>
    <div class="track_chooser_children_wrapper">
        <ul>
            <% loop $Children %>
                <a href="$Link" data-difficulty-id="$track_difficulty.ID" class="track_chooser_child">
                    <% if $cover_img %>
                        <img src="$cover_img.URL" alt="$Title cover image">
                    <% end_if %>
                    <li>$Title</li>
                </a>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>