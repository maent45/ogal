<!--- main nav --->
<nav class="main_nav">
    <% if $Menu(1) %>
        <ul>
            <% loop $Menu(1) %>
                <a href="$Link">
                    <li>$MenuTitle</li>
                </a>
            <% end_loop %>
        </ul>
    <% end_if %>

    <% if $getLoggedIn %>
        <ul>
            <a href="home/logout">
                <li>Log out</li>
            </a>
        </ul>
    <% else %>
        <ul>
            <a href="Security/login?BackURL=$Link">
                <li>
                    Already registered? Login here
                </li>
            </a>
        </ul>
    <% end_if %>

</nav>