<%-- 
    Document   : login
    Created on : Dec 10, 2022, 11:34:48 PM
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
                padding: 10px 1em;
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

            .btn-register{
                background: none;
                text-decoration: none;
                color: white;
                box-shadow: 0px 0px 0px 2px white;
                border-radius: 3px;
                padding: 10px 1em;
                transition: 0.5s;
                text-align: end;



            }
            .btn-register:hover {
                background: white;
                color: dimgray;
                transition: 0.5s;
            }

            .forgot{
                padding-left: 50px;
                color: white;
                text-decoration: underline;
            }

            .anh{
                border-radius: 10px;
                width: 1000px;
                height: 850px;
            }

            .chan{
                height: 50px;
                width: 900px;
                border-radius:100px;
            }
            .cucngu{
                padding-left: 20px;
            }

        </style>
    </head>
    <body>
        <img class="anh" src="image/banner.png" >
        <!-- partial:index.partial.html -->
        <section class='login' id='login'>
            <div class='head'>
                <h1 class='company'>Hello Reviuer</h1>
            </div>
            <p class='msg'>Mời bạn đăng nhập</p>
            <div class='form'>
                <form action="login" method="POST">
                    
                    
                    <input type="text" placeholder='Username' class='text' id='username' required="" name="account" value="${account}" oninvalid="this.setCustomValidity('Mời bạn nhập tên tài khoản')" oninput="this.setCustomValidity('')"><br>
                    <input type="password" placeholder='••••••••••••••' id="matkhau" required class='password' name="pass" value="${pass}" oninvalid="this.setCustomValidity('Mời bạn nhập mật khẩu')" oninput="this.setCustomValidity('')"><br>
                    <input type="submit" name="login" value="Đăng nhập " id="do-login" class="btn-login">


                    <a class="cucngu" href="register.jsp"><input type="button" name="resgister" value="   Đăng ký   " id="do-register" class="btn-register"></a>
                    <br>
                    <br>
                    <a href="resetPass.jsp" class='forgot'>Quên mật khẩu?</a>   
                    <br>
                    <br>
                    ${message}
                </form>
            </div>
        </section>
        <footer>
            <img class="chan" src="image/footer.PNG">
        </footer>     


        <!-- partial -->
        <script  src="js/script2.js"></script>

    </body>
</html>
