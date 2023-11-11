<%-- 
    Document   : Greeting
    Created on : Mar 25, 2023, 2:36:10 PM
    Author     : hello
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head style="background-color: red;">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        <script>
            var count = 5;
            function counting()
            {
                var span = document.getElementById("timer");
                count--;
                span.innerHTML = count;
                if(count<=0)
                {
                    window.location.href = "home";
                }
            }
            setInterval(counting,1000);
        </script>
        <style>
            .dem{
                color: olivedrab;
            }
        </style>
        
    </head>
    
    <body style="background-color: rgb(255, 206, 165);">
        <h1>Hello Reviuer</h1>
        <h3 style="color: #a7c44c">Redirect to Your Food page after <span class="dem" id="timer">5</span> seconds</h3>
    </body>
</html>
