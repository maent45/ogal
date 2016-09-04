$Content

<!--- render the post form --->
$Form

<% if $submittedPosts %>
    <ul>
        <% loop $submittedPosts %>
            <li>
                <h3>$Topic</h3>
                <p>$Email</p>
                <p>$Name</p>
                <p>$Post</p>
                <p>$Approved</p>
            </li>
            <hr>
        <% end_loop %>
    </ul>
<% end_if %>