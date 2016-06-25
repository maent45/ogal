<% if $Title %>
    <h3>$Title</h3>
<% end_if %>
<ul>
    <% if $warning %>
        <li>caution</li>
    <% end_if %>
    <li>$elevation</li>
    <li>$difficulty</li>
    <li>$time</li>
    <% if $dogs_allowed %>
        <li>dogs allowed</li>
    <% end_if %>
</ul>

<div class="activity_detail_content_wrapper">
    <% if $cover_img %>
        <img src="$cover_img.URL" align="$Title cover image">
    <% end_if %>
    $Content
</div>