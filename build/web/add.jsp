<%-- 
    Document   : add
    Created on : Dec 15, 2022, 8:58:06 AM
    Author     : hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        </style>
    </head>
    <body>
        <form action="add" method="POST">
            
            </div> 

            <div class='form-elements'>
                <label for='name' class='label-col'> Name :</label>
                <input type='text' id='fname' name="fname" value="${name}"/>
            </div>
            <div class='input-col'>
            </div>    

            <div class='form-elements'>
                <label for='name' class='label-col'> Price :</label>
                <input type='text' id='fname' name="fprice" value="${price}"/>
            </div>
            <div class='input-col'>
            </div>    


            <div class='form-elements'>
                <legend for='rating' class='label-col'>Rating: </legend>
                <div class='input-col'>
                    <input type='text' id='fname' name="frate" value="${rate}"/>

                </div>
            </div>


            <div class='form-elements'>
                <label for='name' class='label-col'> Location :</label>
                <input type='text' id='fname' name="flocation" value="${location}"/>
            </div>
            <div class='input-col'>
            </div>     

            <div class='form-elements'>
                <label for='name' class='label-col'> Title :</label>
                <input type='text' id='fname' name="ftitle" value="${title}"/>
            </div>
            <div class='input-col'>
            </div> 

            <div class='form-elements'>
                <label for='comments' class='label-col'>Comments: </label>
                <div class='input-col'>
                    <textarea class="dang" id='comment' name="fcomment" >${review_content}</textarea>
                </div>
            </div>

            <div class='form-elements'>
                <label for='anh' class='label-col'>Upload Ảnh: </label>
                <div class='input-col'>
                    <input type='file' id='fname' name="fimage" value="${image}"/>
                </div>
            </div>


            <div class='form-elements'>
                <input type="submit" class='add-review' id='add-review' value="Add Review">

            </div>
                
                <br>
                
            <div>
                    ${messages}
            </div>   
            
            
            <a href="home" >back home</a>
            
        </form>
    </body>
</html>
