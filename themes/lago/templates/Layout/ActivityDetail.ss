<h1>$Title</h1>

<!--- left panel --->
<div class="activity_detail_panel">

    <!--- track details --->
    <div class="activity_detail_info_wrapper">
        <h3>$Title</h3>
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
            <img src="$cover_img.URL" align="$Title cover image">
            $Content
        </div>
    </div>

    <!--- reviews section  --->
    <div class="activity_detail_reviews_wrapper">
        <h3>User Reviews</h3>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,</p>
    </div>

</div>