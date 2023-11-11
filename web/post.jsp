<%-- 
    Document   : post
    Created on : Dec 12, 2022, 9:45:25 PM
    Author     : hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body, html {
                font-family: 'Open Sans', serif;
                text-rendering: optimizeLegibility !important;
                -webkit-font-smoothing: antialiased !important;
                color: #777;
                font-weight: 400;
                width: 100% !important;
                height: 100% !important;
            }
            h1, h2, h3, h4 {
                font-family: 'Raleway', sans-serif;
            }
            h2 {
                font-weight: 400;
                font-size: 38px;
                color: #333;
                text-transform: uppercase;
                position: relative;
                margin-top: 10px;
                margin-bottom: 15px;
                padding-bottom: 20px;
            }
            h2::after {
                position: absolute;
                content: "";
                background: #d43031;
                height: 2px;
                width: 70px;
                bottom: 0;
                margin-left: -35px;
                left: 50%;
            }
            h3 {
                font-size: 24px;
                font-weight: 400;
                color: #333;
            }
            h4 {
                font-size: 24px;
                text-transform: uppercase;
                font-weight: 400;
                color: #333;
            }
            h5 {
                text-transform: uppercase;
                font-weight: 700;
                line-height: 20px;
            }
            p {
                font-size: 15px;
            }
            p.intro {
                margin: 12px 0 0;
                line-height: 24px;
            }
            a {
                color: #8eb640;
            }
            a:hover, a:focus {
                text-decoration: none;
                color: #222;
            }
            ul, ol {
                list-style: none;
            }
            ul, ol {
                padding: 0;
                webkit-padding: 0;
                moz-padding: 0;
            }
            .btn:active, .btn.active {
                background-image: none;
                outline: 0;
                -webkit-box-shadow: none;
                box-shadow: none;
            }
            a:focus, .btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus, .btn.active.focus {
                outline: none;
                outline-offset: none;
            }
            /* Navigation */
            .navbar .navbar-nav {
                display: inline-block;
                float: none;
                vertical-align: top;
            }
            .navbar .navbar-collapse {
                text-align: center;
            }
            #menu {
                padding: 20px;
                transition: all 0.8s;
            }
            #menu.navbar-default {
                background-color: rgba(248, 248, 248, 0);
                border-color: rgba(231, 231, 231, 0);
            }
            #menu.navbar-default .navbar-nav > li > a {
                text-transform: uppercase;
                color: #eee;
                font-weight: 400;
                font-size: 15px;
                padding: 5px 0;
                border: 2px solid transparent;
                letter-spacing: 0.5px;
                margin: 0 40px 0 40px;
            }
            #menu.navbar-default .navbar-nav > li > a:hover {
                color: #d43031;
            }
            .on {
                background-color: #262626 !important;
                padding: 0 !important;
                padding: 10px 0 !important;
            }
            .navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {
                color: #d43031 !important;
                background-color: transparent;
            }
            .navbar-toggle {
                border-radius: 0;
            }
            .navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus {
                background-color: #d43031;
                border-color: #d43031;
            }
            .navbar-default .navbar-toggle .icon-bar {
                background-color: #FFF;
            }
            .navbar-default .navbar-toggle:hover>.icon-bar {
                background-color: #FFF;
            }
            .section-title {
                margin-bottom: 70px;
            }
            .section-title .overlay {
                padding: 80px 0;
                background: rgba(0, 0, 0, 0.7);
            }
            .section-title p {
                font-size: 22px;
            }
            .section-title hr {
                margin: 0 auto;
                margin-bottom: 40px;
            }
            .btn-custom {
                text-transform: uppercase;
                color: #777;
                background-color: transparent;
                border: 2px solid #777;
                padding: 14px 20px;
                margin: 0;
                font-size: 15px;
                font-weight: 500;
                letter-spacing: 0.5px;
                border-radius: 0;
                margin-top: 20px;
                transition: all 0.3s;
            }
            .btn-custom:hover, .btn-custom:focus, .btn-custom.focus, .btn-custom:active, .btn-custom.active {
                color: #ddd;
                border: 2px solid #d43031;
                background-color: #d43031;
            }
            /* Header Section */
            .intro {
                display: table;
                width: 100%;
                padding: 0;
                background: url(../img/intro-bg.jpg) center center no-repeat;
                background-color: #e5e5e5;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                background-size: cover;
                -o-background-size: cover;
            }
            .intro .overlay {
                background: rgba(0,0,0,0.4);
            }
            .intro h1 {
                font-family: 'Rochester', cursive;
                color: #fff;
                font-size: 10em;
                font-weight: 400;
                margin-top: 0;
            }
            .intro span {
                color: #a7c44c;
                font-weight: 600;
            }
            .intro p {
                color: #fff;
                font-size: 24px;
                font-weight: 400;
                margin-top: 150px;
            }
            header .intro-text {
                padding-top: 200px;
                padding-bottom: 50px;
                text-align: center;
            }
            /* Features Section */
            #features {
                padding: 120px 0;
            }
            #features .features-item {
                margin: 0 20px;
            }
            #features img {
                margin: 30px auto 20px;
            }
            #features .about-img:before {
                display: block;
                content: '';
                position: absolute;
                top: 8px;
                right: 8px;
                bottom: 8px;
                left: 8px;
                border: 1px solid rgba(255, 255, 255, 0.5);
            }
            #features p {
                line-height: 24px;
                margin: 15px 0 30px;
            }
            /* About Section */
            #about {
                padding: 0;
                background: #f6f6f6;
            }
            #about h2::after {
                bottom: 0;
                margin-left: 0;
                left: 0;
            }
            #about .about-text {
                padding: 80px 0;
            }
            #about .about-img {
                background: #444 url(../img/gallery-bg.jpg) center center no-repeat;
                background-size: cover;
                height: 570px;
            }
            #about p {
                line-height: 24px;
                margin: 15px 0 30px;
            }
            /* Menu Section */
            #restaurant-menu {
                padding: 100px 0 60px 0;
            }
            #restaurant-menu img {
                width: 300px;
                box-shadow: 15px 0 #a7c44c;
            }
            #restaurant-menu h3 {
                padding: 10px 0;
                text-transform: uppercase;
            }
            #restaurant-menu .menu-section hr {
                margin: 0 auto;
            }
            #restaurant-menu .menu-section {
                margin: 0 20px 80px;
            }
            #restaurant-menu .menu-section-title {
                font-size: 32px;
                display: block;
                font-weight: 400;
                color: #444;
                margin: 20px 0;
                text-align: center;
            }
            #restaurant-menu .menu-item {
                margin: 45px 0;
                font-size: 18px;
            }
            #restaurant-menu .menu-item-name {
                font-weight: 400;
                font-size: 20px;
                color: #444;
                margin-bottom: 10px;
            }
            #restaurant-menu .menu-item-description {
                font-size: 15px;
                width: 85%;
            }
            #restaurant-menu .menu-item-price {
                float: right;
                font-weight: 400;
                color: #555;
                margin-top: -36px;
            }
            /* Gallery Section */
            #gallery {
                padding: 0;
            }
            #gallery .gallery-item {
                margin: 0 -15px;
            }
            /* Team Section */
            #team {
                padding: 120px 0;
            }
            #team h2::after {
                bottom: 0;
                margin-left: 0;
                left: 0;
            }
            #team img {
                max-width: 550px;
            }
            #team .team-img {
                display: inline-block;
                position: relative;
            }
            /* Contact Section */
            #contact {
                padding: 100px 0;
                background: #333;
            }
            #contact .contact-item p {
                font-size: 15px;
                color: #777;
            }
            #contact .section-title {
                margin-top: 60px;
                margin-bottom: 40px;
            }
            #contact form {
                padding: 0;
            }
            #contact h3 {
                position: relative;
                text-transform: uppercase;
                font-size: 18px;
                font-weight: 400;
                color: #aaa;
                padding: 20px 0;
            }
            #contact h3::after {
                position: absolute;
                content: "";
                background: #d43031;
                height: 2px;
                width: 40px;
                bottom: 0;
                margin-left: -20px;
                left: 50%;
            }
            #contact .text-danger {
                color: #cc0033;
                text-align: left;
            }
            label {
                font-size: 12px;
                font-weight: 400;
                font-family: 'Open Sans', sans-serif;
                float: left;
            }
            #contact .form-control {
                display: block;
                width: 100%;
                padding: 6px 12px;
                font-size: 16px;
                line-height: 1.42857143;
                color: #ccc;
                background-color: rgba(255,255,255,.2);
                background-image: none;
                border: 0;
                border-radius: 0;
                -webkit-box-shadow: none;
                box-shadow: none;
                -webkit-transition: none;
                -o-transition: none;
                transition: none;
            }
            #contact .form-control:focus {
                border-color: #999;
                outline: 0;
                -webkit-box-shadow: transparent;
                box-shadow: transparent;
            }
            .form-control::-webkit-input-placeholder {
                color: #999;
            }
            .form-control:-moz-placeholder {
                color: #999;
            }
            .form-control::-moz-placeholder {
                color: #999;
            }
            .form-control:-ms-input-placeholder {
                color: #999;
            }
            #contact .contact-item {
                margin: 20px 0 40px 0;
            }
            #contact .contact-item span {
                font-weight: 400;
                color: #aaa;
                text-transform: uppercase;
                margin-bottom: 6px;
                display: inline-block;
            }
            /* Footer Section*/
            #footer {
                background: #262626;
                padding: 40px 0 20px 0;
            }
            #footer .social {
                margin-top: -5px;
                text-align: right;
            }
            #footer .social ul li {
                display: inline-block;
                margin: 0 15px;
            }
            #footer .social i.fa {
                font-size: 24px;
                padding: 4px;
                color: #888;
                transition: all 0.3s;
            }
            #footer .social i.fa:hover {
                color: #eee;
            }
            #footer p {
                font-size: 14px;
                color: #666;
            }
            #footer a {
                color: #999;
            }
            #footer a:hover {
                color: #eee;
            }

        </style>
    </head>
    <body>
        
        <h1>Bài viết đánh giá!</h1>

        <form action="post" method="POST">


            <div class="row">
                
                <img src="image/${fn:trim(food.getFimage())}" >
                <div class="col-xs-12 col-md-6 about-img"> </div>
                <div class="col-xs-12 col-md-3 col-md-offset-1">
                    <div class="about-text">
                        <div class="section-title">
                            <h2>${food.getFtitle()}</h2>
                            <p>*Mức đánh giá : ${food.getFrate()}</p> 
                            <br>
                            <p>*Thể loại đồ ăn : ${food.getFname()}</p>
                        </div>
                        <p>Địa điểm :${food.getFlocation()}</p>
                        <p>${food.getFreview_content()}</p>
                    </div>
                </div>
            </div>

        </form>

    </body>
</html>