<h1>$Title</h1>

<% if $Children %>
    <div class="track_chooser_children_wrapper">
        <ul>
            <% loop $Children %>
                <li>$Title</li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>