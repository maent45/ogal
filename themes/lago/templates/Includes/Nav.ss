<!--- main nav --->
<nav class="main_nav">
    <!--- logged in username --->
    <% if $getLoggedIn %>
        <% loop $currentUser %>
            <% if $FirstName && $Surname %>
                $FirstName $Surname
            <% end_if %>
        <% end_loop %>
    <% end_if %>

    <ul>
        <% if $Menu(1) %>

            <% loop $Menu(1) %>
                <a href="$Link">
                    <li>$MenuTitle</li>
                </a>
            <% end_loop %>

        <% end_if %>

        <% if $getLoggedIn %>
            <a href="home/logout">
                <li>Log out</li>
            </a>
        <% else %>
            <a href="Security/login?BackURL=$Link">
                <li>
                    Already registered? Login here
                </li>
            </a>
        <% end_if %>
    </ul>
</nav>