<h1>$Title</h1>

<!--- difficulty levels --->
<% if $difficulty_levels %>
    <ul>
        <% loop $difficulty_levels %>
            <a href="#">
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
                <a href="$Link">
                    <% if $cover_img %>
                        <img src="$cover_img.URL" alt="$Title cover image">
                    <% end_if %>
                    <li>$Title</li>
                </a>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>