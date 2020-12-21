<%-- 
    Document   : index
    Created on : 14-dic-2020, 18:21:21
    Author     : Elias
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

        <title>Amusement Park</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>
    <body class="text-center">
        <form class="form-signin" action="MainServlet" method="post">
            <img class="mb-4" src="css/img/park.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Login Members</h1>
            <label for="user" class="sr-only"></label>
            <input type="text" class="form-control" placeholder="Usuario" required autofocus name="user">
            <label for="inputPassword" class="sr-only"></label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="clave">

            <p> <a href="registro.jsp" class="link-primary">Registrar nuevo usuario</a> </p>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Enviar</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2020 - Abdias</p>
        </form>
        

        
    </body>
    
</html>
