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
                    $FirstName $Surname
                    <% if $Top.memberProfilePage %>
                        <% loop $Top.memberProfilePage %>
                            <a href="$Link">Edit profile</a>
                        <% end_loop %>
                    <% end_if %>
                <% else_if $FirstName %>
                    <a href="$currentUser.Profile">$FirstName</a>
                <% else %>
                    <p>
                        <a href="$currentUser.Profile">$Email</a>
                    </p>
                <% end_if %>
                <a href="home/logout">Log out</a>
            <% end_control %>
        <% else %>
            <a href="Security/login?BackURL=$Link">Login</a>
        <% end_if %>

    </div>

</div>