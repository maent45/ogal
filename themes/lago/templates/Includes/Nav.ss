<!--- main nav --->
<nav class="main_nav">
    <!--- logged in username --->
    <% if $getLoggedIn %>

        <div class="main_nav_user_profile">

            <% loop $currentUser %>
                <% if $FirstName && $Surname %>
                    <% if $Top.memberProfilePage %>
                        <% loop $Top.memberProfilePage %>
                            <a href="$Link">
                                $currentUser.profile_pic.SetWidth(150)
                                <p>$currentUser.FirstName $currentUser.Surname</p>
                            </a>
                        <% end_loop %>
                    <% end_if %>
                <% else_if $FirstName %>
                    <a href="$currentUser.Profile">$FirstName</a>
                <% end_if %>
            <% end_loop %>
            
        </div>

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