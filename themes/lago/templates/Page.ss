<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->

    <% include Head %>

    <body class="$ClassName">

        <% include Header %>

        <div class="main" role="main">
            <div class="inner typography line">
                $Layout
            </div>
        </div>

        <% include Footer %>

        <% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>
        <script type="text/javascript" src="{$ThemeDir}/javascript/custom.js"></script>

    </body>
</html>
