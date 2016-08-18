<h1>header section</h1>
<!--- nav --->
<nav>
    <% if $Menu(1) %>
        <ul>
            <% loop $Menu(1) %>
                <a href="$Link">
                    <li>$Title</li>
                </a>
            <% end_loop %>
        </ul>
    <% end_if %>
</nav>