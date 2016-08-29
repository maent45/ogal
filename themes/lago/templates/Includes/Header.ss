<!--- user nav bar --->
<div class="user_nav_bar">

    <div class="user_nav_bar_left">
        <% if $Children %>
            <% loop $Children %>
                <a href="$Link">
                    $MenuTitle
                </a>
            <% end_loop %>
        <% end_if %>
        <%--<img src="http://1.gravatar.com/avatar/767fc9c115a1b989744c75">--%>
        <p>B.Watson</p>
    </div>

</div>