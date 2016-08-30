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

        <!--- only show following section if user is logged in --->
        <% if $getLoggedIn %>

            <% loop $currentUser %>

                <% if $FirstName && $Surname %>
                    <% if $Top.memberProfilePage %>

                        <% loop $Top.memberProfilePage %>
                            <div class="track_chooser_profile">
                                <a href="$Link">
                                    $currentUser.profile_pic.SetWidth(150)
                                    <p>$currentUser.FirstName $currentUser.Surname</p>
                                </a>
                                <a href="#" class="track_chooser_logout_cta">
                                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                                </a>
                                <a href="home/logout" class="track_chooser_logout_link">Log out</a>
                            </div>
                        <% end_loop %>

                    <% end_if %>

                <% else_if $FirstName %>
                    <a href="$currentUser.Profile">$FirstName</a>
                <% else %>
                    <p>
                        <a href="$currentUser.Profile">$Email</a>
                    </p>
                <% end_if %>
            <% end_loop %>
        <% else %>
            <a href="Security/login?BackURL=$Link">Login</a>
        <% end_if %>

    </div>

</div>