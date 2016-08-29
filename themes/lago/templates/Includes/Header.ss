<!--- user nav bar --->
<div class="user_nav_bar">

    <div class="user_nav_bar_left">
        <% if $homePage %>
            <% loop $homePage %>
                <a href="$Link">$MenuTitle</a>
            <% end_loop %>
        <% end_if %>

        <% if $Children %>
            <% loop $Children %>
                <a href="$Link">
                    $MenuTitle
                </a>
            <% end_loop %>
        <% end_if %>
        <%--<img src="http://1.gravatar.com/avatar/767fc9c115a1b989744c75">--%>

        <!--- only show following section if user is logged in --->
        <% if $getLoggedIn %>
            <% control $currentUser %>
                <% if $FirstName && $Surname %>
                    <p>$FirstName $Surname</p>
                <% else_if $FirstName %>
                    <p>$FirstName</p>
                <% else %>
                    <p>$Email</p>
                <% end_if %>
            <% end_control %>
        <% end_if %>

    </div>

</div>