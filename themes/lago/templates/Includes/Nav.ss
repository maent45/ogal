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
</nav>