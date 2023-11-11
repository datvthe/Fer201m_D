<%-- 
    Document   : UserHome
    Created on : Dec 13, 2022, 11:55:09 AM
    Author     : hello
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>




<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <style>
            input,
            textarea {
                margin: 0;
                font-family: inherit;
                font-size: inherit;
                line-height: inherit;
            }
            input {
                overflow: visible;
            }
            input[type="radio"] {
                box-sizing: border-box;
                padding: 0;
            }

            textarea {
                overflow: auto;
                resize: vertical;
            }
            .btn{
                display: inline-block;
                padding:.8rem 3rem;
                border:.2rem solid var(--red);
                color:var(--red);
                cursor: pointer;
                font-size: 1.7rem;
                border-radius: .5rem;
                position: relative;
                overflow: hidden;
                z-index: 0;
                margin-top: 1rem;
            }

            .btn::before{
                content: '';
                position: absolute;
                top:0;
                right: 0;
                width:0%;
                height:100%;
                background:var(--red);
                transition: .3s linear;
                z-index: -1;
            }

            .btn:hover::before{
                width:100%;
                left: 0;
            }

            .btn:hover{
                color:#fff;
            }
            fieldset {
                min-width: 0;
                padding: 0;
                margin: 0;
                border: 0;
            }
            .form-elements {
                width: 100%;
                display: flex;
                flex-wrap: wrap;
                margin-bottom: .5em;
            }
            .label-col {
                flex: 0 0 16.6666667% !important;
                max-width: 16% !important;
                margin-bottom: 0;
                font-size: inherit;
                line-height: 1.5;
            }
            .input-col {
                flex: 0 0 83.333333%;
                max-width: 84%;
            }
            .input-col label {
                margin-right: 0.5em
            }
            .dang{

                width: 600px;
                height: 300px;

            }
            .anh{
                width: 60px;
                height: 30px;  
            }
            .back{
                font-family: monospace;
                font-size: 30px;
                text-decoration: none;
            }
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
        
        <form action="edit" method="POST">
            <div class='form-elements'>
                <label for='name' class='label-col'> ID:</label>              
                <input type="text" readonly id='fname' name="fid" value="${requestScope.food.fid}" />
            </div>
            <div class='input-col'>
            </div> 

            <div class='form-elements'>
                <label for='name' class='label-col'> Name :</label>
                <input type="text"id='fname' name="fname" value="${requestScope.food.fname}"/>
            </div>
            <div class='input-col'>
            </div>    

            <div class='form-elements'>
                <label for='name' class='label-col'> Price :</label>
                <input type='text' id='fname' name="fprice" value="${requestScope.food.fprice}"/>
            </div>
            <div class='input-col'>
            </div>    

            <fieldset>
                <div class='form-elements'>
                    <legend for='rating' class='label-col'>Rating: </legend>
                    <div class='input-col'>
                        <input type='text' id='fname' name="frate" value="${requestScope.food.frate}"/>

                    </div>
                </div>
            </fieldset>    

            <div class='form-elements'>
                <label for='name' class='label-col'> Location :</label>
                <input type='text' id='fname' name="flocation" value="${requestScope.food.flocation}"/>
            </div>
            <div class='input-col'>
            </div>     

            <div class='form-elements'>
                <label for='name' class='label-col'> Title :</label>
                <input type='text' id='fname' name="ftitle" value="${requestScope.food.ftitle}"/>
            </div>
            <div class='input-col'>
            </div> 

            <div class='form-elements'>
                <label for='comments' class='label-col'>Comments: </label>
                <div class='input-col'>
                    <textarea class="dang" id='comment' name="fcomment" >${requestScope.food.freview_content}</textarea>
                </div>
            </div>

            <form action="upload" method="POST" enctype="mutipart/form-data">
            <div class='form-elements'>
                <label for='anh' class='label-col'>Upload Ảnh: </label>
                <div class='input-col' >
                    
                    <input type="file" name="fimage" value="image/${requestScope.food.fimage}">
                </div>
            </div>
            
                
            <div class='form-elements'>             
                <input type="submit" value="Edit">
            </div>
            </form>
            <br><!-- comment -->
            
            <div>
                ${mess}
            </div>
            
            <button style='font-size:24px'><i class='fas fa-arrow-alt-circle-left'><a class="back" href="showfood"> Back</a></i></button> 
            
        </form> 
            
    
    </body>
</html>
