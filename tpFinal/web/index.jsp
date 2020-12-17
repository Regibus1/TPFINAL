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
        <link href="boostrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>

    <body class="text-center">
        <form class="form-signin" action="MainServlet" method="post">
            <img class="mb-4" src="css/img/park.png" alt="" width="72" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Login Members</h1>
            <label for="inputEmail" class="sr-only"></label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Usuario" required autofocus>
            <label for="inputPassword" class="sr-only"></label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>

            <p> <a href="registro.jsp" class="link-primary">Registrar nuevo usuario</a> </p>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Enviar</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2020 - Abdias</p>
        </form>
    </body>
</html>
