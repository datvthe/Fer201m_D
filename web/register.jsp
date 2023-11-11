<%-- 
    Document   : register
    Created on : Dec 11, 2022, 3:28:05 AM
    Author     : hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background: bisque;
                font-family: Assistant, sans-serif;
                display: flex;
                min-height: 90vh;

            }
            .login {
                color: white;
                background: #136a8a;
                background:
                    -webkit-linear-gradient(to right, #267871, #136a8a);
                background:
                    linear-gradient(to right, #267871, #136a8a);
                margin: auto;
                box-shadow:
                    0px 2px 10px rgba(0,0,0,0.2),
                    0px 10px 20px rgba(0,0,0,0.3),
                    0px 30px 60px 1px rgba(0,0,0,0.5);
                border-radius: 8px;
                padding: 50px;
            }
            .login .head {
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .login .head .company {
                font-size: 2.2em;
            }
            .login .msg {
                text-align: center;
            }
            .login .form input[type=text].text {
                border: none;
                background: none;
                box-shadow: 0px 2px 0px 0px white;
                width: 100%;
                color: white;
                font-size: 1em;
                outline: none;
            }
            .login .form .text::placeholder {
                color: #D3D3D3;
            }
            .login .form input[type=password].password {
                border: none;
                background: none;
                box-shadow: 0px 2px 0px 0px white;
                width: 100%;
                color: white;
                font-size: 1em;
                outline: none;
                margin-bottom: 20px;
                margin-top: 20px;
            }
            .login .form .password::placeholder {
                color: #D3D3D3;
            }
            .login .form .btn-login {
                background: none;
                text-decoration: none;
                color: white;
                box-shadow: 0px 0px 0px 2px white;
                border-radius: 3px;
                padding: 100px 1em;
                transition: 0.5s;
            }
            .login .form .btn-login:hover {
                background: white;
                color: dimgray;
                transition: 0.5s;
            }
            .login  {
                text-decoration: none;
                color: white;
                float: right;
            }
            footer {
                position: absolute;
                color: #136a8a;
                bottom: 10px;
                padding-left: 20px;
            }
            footer p {
                display: inline;
            }
            footer a {
                color: green;
                text-decoration: none;
            }
            footer a:hover {
                text-decoration: underline;
            }
            footer .heart {
                color: #B22222;
                font-size: 1.5em
            }

            .btn-resigt{
                background: none;
                text-decoration: none;
                color: white;
                box-shadow: 0px 0px 0px 2px white;
                border-radius: 3px;
                padding: 10px 1em;
                transition: 0.5s;
                text-align: end;

            }
            .btn-resigt:hover {
                background: white;
                color: dimgray;
                transition: 0.5s;
            }

            .forms{
                padding-left: 800px;
                padding-top: 200px;
            }
            
            .ngu{
                padding-left: 100px;
                
            }
            .tn{
                padding-left: 60px;
            }
            
            .di{
                color: white;
                padding-left: 100px;
            }

        </style>
    </head>
    <body>
        <form class="forms" action="register" method="get">
        <!-- partial:index.partial.html -->
        <section class='login' id='login'>
            <div class='head'>
                <h1 class='company'>Welcome to Reviu</h1>
            </div>
            <p class='msg'>Mời bạn đăng ký</p>
            <div class='form'>
                <form action="" >
                    
                    <input type="text" placeholder='Enter Username' class='text' id='username' required="" name="account" value="${username}" oninvalid="this.setCustomValidity('Mời bạn nhập tên tài khoản')" oninput="this.setCustomValidity('')"><br>
                    <input type="password" placeholder='••••••••••••••' id="matkhau" required class='password' name="pass" value="${password}" oninvalid="this.setCustomValidity('Mời bạn nhập mật khẩu')" oninput="this.setCustomValidity('')"><br>
                    <input type="text" placeholder='Enter Name' class='text' id='name' required="" name="name" value="${name}" oninvalid="this.setCustomValidity('Mời bạn nhập tên người dùng')" oninput="this.setCustomValidity('')"><br>
                    <br>
                    <a class="ngu"><input type="submit" name="regist" value="Đăng ký" id="do-regist" class="btn-resigt"></a>
                    <br>
                    <br>
                    <div class="tn">${messa}</div>
                    <br><!-- comment -->
                    
                    <a class="di" href="login.jsp"> Đăng nhập</a>
                </form>
            </div>
        </section>
            
        </form>            
                
        <!-- partial -->
        <script  src="js/script2.js"></script>

    </body>
</html>
