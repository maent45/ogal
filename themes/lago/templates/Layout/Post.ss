$Content

<!--- render the post form --->
$Form

<% if $submittedPosts %>
    <ul>
        <% loop $submittedPosts %>
            <li>
                <h3>$Topic</h3>
                <p>$Name</p>
                <p>$Post</p>
            </li>
        <% end_loop %>
    </ul>
<% end_if %>