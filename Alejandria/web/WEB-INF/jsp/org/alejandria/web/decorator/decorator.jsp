<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Librería Alejandría - <sitemesh:write property='title'/></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="css/DecoratorStyle.css" type="text/css" />
    <link type="text/css" href="css/smoothness/jquery-ui-1.8.19.custom.css" rel="stylesheet" />

    <script type="text/javascript" charset="UTF-8" src="js/jquery-1.7.2.min.js" ></script>
    <script type="text/javascript" charset="UTF-8" src="js/jquery-ui-1.8.19.custom.min.js" ></script>

    <sitemesh:write property='head'/>
</head>
<body>
<div id="wrap">
    <div id="header">
        <h1 id="logo">style<span class="blue">vantage</span></h1>
        <h2 id="slogan">put your site slogan here...</h2>
        <form method="post" class="searchform" action="http://www.free-css.com/">
            <p>
                <input type="text" name="search_query" class="textbox" />
                <input type="submit" name="search" class="button" value="Search" />
            </p>
        </form>
    </div>
    <div id="menu">
        <ul>
            <li id="current"><a href="http://www.free-css.com/">Home</a></li>
            <li><a href="http://www.free-css.com/">Archives</a></li>
            <li><a href="http://www.free-css.com/">Downloads</a></li>
            <li><a href="http://www.free-css.com/">Services</a></li>
            <li><a href="http://www.free-css.com/">Support</a></li>
            <li><a href="http://www.free-css.com/">About</a></li>
        </ul>
    </div>
    <div id="content-wrap">
        <div id="sidebar">
            <h1>Sidebar Menu</h1>
            <ul class="sidemenu">
                <li><a href="http://www.free-css.com/">Home</a></li>
                <li><a href="#TemplateInfo">Template Info</a></li>
                <li><a href="#SampleTags">Sample Tags</a></li>
                <li><a href="http://www.free-css.com/">More Free Templates</a></li>
                <li><a href="http://www.free-css.com/">Premium Templates</a></li>
            </ul>
            <h1>Themes</h1>
            <ul class="sidemenu">
                <li><a href="http://www.free-css.com/">Orange</a></li>
                <li><a href="Green.html">Green</a></li>
                <li><a href="Blue.html">Blue</a></li>
            </ul>
            <h1>Site Partners</h1>
            <ul class="sidemenu">
                <li><a href="http://www.free-css.com/">Dreamhost</a></li>
                <li><a href="http://www.free-css.com/">4templates</a></li>
                <li><a href="http://www.free-css.com/">TemplateMonster</a></li>
                <li><a href="http://www.free-css.com/">Fotolia.com</a></li>
                <li><a href="http://www.free-css.com/">Text Link Ads</a></li>
            </ul>
            <h1>Wise Words</h1>
            <p>&quot;Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.&quot;</p>
            <p class="align-right">- Mark Twain</p>
        </div>
        <div id="main">
            <sitemesh:write property='body'/>
            <br />
        </div>
        <div id="rightbar">
            <h1>More Text</h1>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna.</p>
            <h1>Support Styleshout</h1>
            <p>If you are interested in supporting my work and would like to contribute, you are welcome to make a small donation through the donate link on my website - it will be a great help and will surely be appreciated.</p>
            <sitemesh:getProperty property="page.rightBar"/>
        </div>
    </div>
</div>
<div id="footer">
    <p> &copy; copyright 2006 <strong>Your Company</strong>&nbsp;&nbsp; Design by: <a href="http://www.styleshout.com/">styleshout</a> | Valid: <a href="http://validator.w3.org/check/referer">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://www.free-css.com/">Home</a> | <a href="http://www.free-css.com/">Sitemap</a> | <a href="http://www.free-css.com/">Home</a> </p>
</div>
</body>
</html>