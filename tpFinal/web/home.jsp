
<%-- 
    Document   : home
    Created on : 17-dic-2020, 17:15:35
    Author     : Elias
--%>

<%@page import="Logica.Juego"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Controladora control = new Controladora();
    List<Juego> listaJuego = control.buscarJuego();
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Page Amusument Park</title>



        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>


    </head>
    <body>

        <header  class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
            <img class="mx-2" src="css/img/parque-de-atracciones.png" alt="" width="20" height="20">
            <p class="h5 my-0 me-md-auto fw-normal">Amusement Park</p>
            <nav class="my-2 my-md-0 me-md-3">

            </nav>
            <a class="ml-auto btn btn-outline-danger" href="index.jsp">Sign out</a>
        </header>

        <main class="container">
            <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
                <h1 class="display-4">Bienvenido!</h1>
                <p class="lead">Aqui tiene las opciones para administrar los datos del parque de atracciones como le plazca.</p>
            </div>

            <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
                <div class="col">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 fw-normal">Juegos</h4>
                        </div>
                        <div class="card-body">

                            <button type="button" class=" w-100 btn-lg btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">Configurar juegos</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Configuracion de los juegos recreativos del parque</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="list-group" id="list-tab" role="tablist">
                                                        <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Crear Nuevo</a>
                                                        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile" ">Editar</a>
                                                        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Buscar</a>
                                                        <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Eliminar</a>
                                                    </div>
                                                </div>
                                                <div class="col-8">
                                                    <div class="tab-content" id="nav-tabContent">


                                                        <!--Formulario para crear Juego -->

                                                        <form action="JuegoServlet" method="post" class="tab-pane fade show active text-left" role="tabpanel" id="list-home" aria-labelledby="list-home-list">
                                                            <input name="juegoForm" value="crear" type="hidden">
                                                            <div class="form-group">

                                                                <label for="inputJuego">Nombre del Juego</label>
                                                                <input type="text" class="form-control" placeholder="'Montaña Rusa'" required name="nombreJuego">
                                                            </div>

                                                            <div class="form-row">
                                                                <div class="form-group col-md-6">
                                                                    <label for="inputEdad">Edad Mínima</label>
                                                                    <select id="inputEdad" class="form-control" required name="edadMinima">
                                                                        <option selected>Elige una edad mínima...</option>
                                                                        <option>0</option>
                                                                        <option>1</option>
                                                                        <option>2</option>
                                                                        <option>3</option>
                                                                        <option>4</option>
                                                                        <option>5</option>
                                                                        <option>6</option>
                                                                        <option>7</option>
                                                                        <option>8</option>
                                                                        <option>9</option>
                                                                        <option>10</option>
                                                                        <option>11</option>
                                                                        <option>12</option>
                                                                        <option>13</option>
                                                                        <option>14</option>
                                                                        <option>15</option>
                                                                        <option>16</option>
                                                                        <option>17</option>
                                                                        <option>18</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label for="inputCapacidad">Capacidad Máxima</label>
                                                                    <select id="inputCapacidad" class="form-control" required name="capacidad">
                                                                        <option selected>Elige la capacidad máx...</option>
                                                                        <option>5</option>
                                                                        <option>10</option>
                                                                        <option>15</option>
                                                                        <option>20</option>
                                                                        <option>25</option>
                                                                        <option>30</option>
                                                                        <option>35</option>
                                                                        <option>40</option>
                                                                        <option>45</option>
                                                                        <option>50</option>
                                                                        <option>55</option>
                                                                        <option>60</option>
                                                                        <option>65</option>
                                                                        <option>70</option>
                                                                        <option>75</option>
                                                                        <option>80</option>
                                                                        <option>85</option>
                                                                        <option>90</option>
                                                                        <option>95</option>
                                                                        <option>100</option>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-row">
                                                                <div class="form-group col-md-6">
                                                                    <label for="inputTiempo">Hora Apertura</label>
                                                                    <select id="inputTiempo" class="form-control" required name="horaApertura">
                                                                        <option selected>Elige hora apertura...</option>
                                                                        <option>08:00:00</option>
                                                                        <option>09:00:00</option>
                                                                        <option>10:00:00</option>
                                                                        <option>11:00:00</option>
                                                                        <option>12:00:00</option>
                                                                        <option>13:00:00</option>
                                                                        <option>14:00:00</option>
                                                                        <option>15:00:00</option>
                                                                        <option>16:00:00</option>
                                                                        <option>17:00:00</option>
                                                                        <option>18:00:00</option>
                                                                        <option>19:00:00</option>
                                                                        <option>20:00:00</option>
                                                                        <option>21:00:00</option>
                                                                        <option>22:00:00</option>
                                                                        <option>23:00:00</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label for="inputCloseTime">Hora Cierre</label>
                                                                    <select id="inputCloseTime" class="form-control" required name="horaCierre">
                                                                        <option selected>Elige hora cierre...</option>
                                                                        <option>08:00:00</option>
                                                                        <option>09:00:00</option>
                                                                        <option>10:00:00</option>
                                                                        <option>11:00:00</option>
                                                                        <option>12:00:00</option>
                                                                        <option>13:00:00</option>
                                                                        <option>14:00:00</option>
                                                                        <option>15:00:00</option>
                                                                        <option>16:00:00</option>
                                                                        <option>17:00:00</option>
                                                                        <option>18:00:00</option>
                                                                        <option>19:00:00</option>
                                                                        <option>20:00:00</option>
                                                                        <option>21:00:00</option>
                                                                        <option>22:00:00</option>
                                                                        <option>23:00:00</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <button type="submit" class="btn btn-primary" >Enviar cambios</button>
                                                        </form>

                                                        <form action="JuegoServlet"class="tab-pane fade text-left" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list" method="post">
                                                            <input name="juegoForm" value="editar" type="hidden">
                                                            <div class="form-group">
                                                                <label for="nombreJuego">Nombre Juego</label>
                                                                <select id="selectJuego" class="form-control" name="opcionJuego">
                                                                    <option selected>Elige uno para editar sus datos..</option>
                                                                    <% for (Juego unJuego : listaJuego) {%>

                                                                    <option id="<%=unJuego.getIdJuego()%>"><%= unJuego.getNombreJuego()%> </option>

                                                                    <% }%>
                                                                </select>
                                                                <button class="btn btn-primary mt-2 mb-2" type="button" data-toggle="collapse" data-target="#multiCollapseExample1" aria-expanded="false" aria-controls="multiCollapseExample2">Editar</button>
                                                                <div class="col">
                                                                    <div class="collapse multi-collapse" id="multiCollapseExample1">
                                                                        <div class="form-group">

                                                                            <label for="inputJuego">Nombre del Juego</label>
                                                                            <input type="text" class="form-control" placeholder="'Montaña Rusa'" required name="nombreJuego">
                                                                        </div>

                                                                        <div class="form-row">
                                                                            <div class="form-group col-md-6">
                                                                                <label for="inputEdad">Edad Mínima</label>
                                                                                <select id="inputEdad" class="form-control" required name="edadMinima">
                                                                                    <option selected>Elige una edad mínima...</option>
                                                                                    <option>0</option>
                                                                                    <option>1</option>
                                                                                    <option>2</option>
                                                                                    <option>3</option>
                                                                                    <option>4</option>
                                                                                    <option>5</option>
                                                                                    <option>6</option>
                                                                                    <option>7</option>
                                                                                    <option>8</option>
                                                                                    <option>9</option>
                                                                                    <option>10</option>
                                                                                    <option>11</option>
                                                                                    <option>12</option>
                                                                                    <option>13</option>
                                                                                    <option>14</option>
                                                                                    <option>15</option>
                                                                                    <option>16</option>
                                                                                    <option>17</option>
                                                                                    <option>18</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label for="inputCapacidad">Capacidad Máxima</label>
                                                                                <select id="inputCapacidad" class="form-control" required name="capacidad">
                                                                                    <option selected>Elige la capacidad máx...</option>
                                                                                    <option>5</option>
                                                                                    <option>10</option>
                                                                                    <option>15</option>
                                                                                    <option>20</option>
                                                                                    <option>25</option>
                                                                                    <option>30</option>
                                                                                    <option>35</option>
                                                                                    <option>40</option>
                                                                                    <option>45</option>
                                                                                    <option>50</option>
                                                                                    <option>55</option>
                                                                                    <option>60</option>
                                                                                    <option>65</option>
                                                                                    <option>70</option>
                                                                                    <option>75</option>
                                                                                    <option>80</option>
                                                                                    <option>85</option>
                                                                                    <option>90</option>
                                                                                    <option>95</option>
                                                                                    <option>100</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-row">
                                                                            <div class="form-group col-md-6">
                                                                                <label for="inputTiempo">Hora Apertura</label>
                                                                                <select id="inputTiempo" class="form-control" required name="horaApertura">
                                                                                    <option selected>Elige hora apertura...</option>
                                                                                    <option>08:00:00</option>
                                                                                    <option>09:00:00</option>
                                                                                    <option>10:00:00</option>
                                                                                    <option>11:00:00</option>
                                                                                    <option>12:00:00</option>
                                                                                    <option>13:00:00</option>
                                                                                    <option>14:00:00</option>
                                                                                    <option>15:00:00</option>
                                                                                    <option>16:00:00</option>
                                                                                    <option>17:00:00</option>
                                                                                    <option>18:00:00</option>
                                                                                    <option>19:00:00</option>
                                                                                    <option>20:00:00</option>
                                                                                    <option>21:00:00</option>
                                                                                    <option>22:00:00</option>
                                                                                    <option>23:00:00</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label for="inputCloseTime">Hora Cierre</label>
                                                                                <select id="inputCloseTime" class="form-control" required name="horaCierre">
                                                                                    <option selected>Elige hora cierre...</option>
                                                                                    <option>08:00:00</option>
                                                                                    <option>09:00:00</option>
                                                                                    <option>10:00:00</option>
                                                                                    <option>11:00:00</option>
                                                                                    <option>12:00:00</option>
                                                                                    <option>13:00:00</option>
                                                                                    <option>14:00:00</option>
                                                                                    <option>15:00:00</option>
                                                                                    <option>16:00:00</option>
                                                                                    <option>17:00:00</option>
                                                                                    <option>18:00:00</option>
                                                                                    <option>19:00:00</option>
                                                                                    <option>20:00:00</option>
                                                                                    <option>21:00:00</option>
                                                                                    <option>22:00:00</option>
                                                                                    <option>23:00:00</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <button class="btn btn-outline-primary mt-2 mb-2" type="submit">Guardar</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </form>
                                                        <form action="JuegoServlet" class="tab-pane fade text-left" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list" method="post">
                                                            <input name="juegoForm" value="buscar" type="hidden">
                                                            <div class="form-group">
                                                                <div class="form-group row">
                                                                    <input type="text" placeholder="'La Noria'" class="form-control col-md-10" name="nombreBusqueda">
                                                                    <button class="btn btn-outline-secondary mx-2 " type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" onclick="buscarID()">Buscar</button>
                                                                    <div class="collapse m-2" id="collapseExample">
                                                                        <div class="card card-body" id="searchDiv">
                                                                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                                                                        </div>
                                                                    </div> 
                                                                </div>
                                                            </div>

                                                        </form>
                                                        <form action="JuegoServlet" class="tab-pane fade text-left" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                                                            <input name="juegoForm" value="eliminar" type="hidden">
                                                            <div class="form-group">
                                                                <label for="nombreJuego">Lista de juegos</label>
                                                                <select id="nombreJuego" class="form-control">
                                                                    <option selected>Elige que desee eliminar..</option>
                                                                    <option>...</option>
                                                                </select>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 fw-normal">Empleados</h4>
                        </div>
                        <div class="card-body">

                            <button type="button" class=" w-100 btn-lg btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">Configurar juegos</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            ...
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 fw-normal">Horarios</h4>
                        </div>
                        <div class="card-body">
                            <button type="button" class=" w-100 btn-lg btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">Configurar juegos</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            ...
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
                <div class="col">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 fw-normal">Tickets</h4>
                        </div>
                        <div class="card-body">

                            <button type="button" class=" w-100 btn-lg btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">Configurar juegos</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            ...
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 fw-normal">Datos de Ventas</h4>
                        </div>
                        <div class="card-body">

                            <button type="button" class=" w-100 btn-lg btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal">Configurar juegos</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            ...
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <footer class="pt-4 my-md-5 pt-md-5 border-top">
                <div class="row">
                    <div class="col-12 col-md">

                        <small class="d-block mb-3 text-muted">&copy; 2017-2020</small>
                    </div>
                    <div class="col-6 col-md">
                        <h5>Features</h5>
                        <ul class="list-unstyled text-small">
                            <li><a class="link-secondary" href="#">Cool stuff</a></li>
                            <li><a class="link-secondary" href="#">Random feature</a></li>
                            <li><a class="link-secondary" href="#">Team feature</a></li>
                            <li><a class="link-secondary" href="#">Stuff for developers</a></li>
                            <li><a class="link-secondary" href="#">Another one</a></li>
                            <li><a class="link-secondary" href="#">Last time</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md">
                        <h5>Resources</h5>
                        <ul class="list-unstyled text-small">
                            <li><a class="link-secondary" href="#">Resource</a></li>
                            <li><a class="link-secondary" href="#">Resource name</a></li>
                            <li><a class="link-secondary" href="#">Another resource</a></li>
                            <li><a class="link-secondary" href="#">Final resource</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md">
                        <h5>About</h5>
                        <ul class="list-unstyled text-small">
                            <li><a class="link-secondary" href="#">Team</a></li>
                            <li><a class="link-secondary" href="#">Locations</a></li>
                            <li><a class="link-secondary" href="#">Privacy</a></li>
                            <li><a class="link-secondary" href="#">Terms</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
        </main>

        <script type="text/javascript">
           
            function buscarID() {
                let caja = document.querySelector("#searchDiv");
            <%
                String nombreBusqueda = request.getParameter("nombreBusqueda");
                int idBusqueda = 1;
                for (Juego unJuego : listaJuego) {
                    if (unJuego.getNombreJuego().equals(nombreBusqueda)) {
                        idBusqueda = unJuego.getIdJuego();
            %>
                        
                        
                
                let txtVal = <%=listaJuego.get(idBusqueda).getNombreJuego()%>
                caja.innerHTML = txtVal;
                
            <%
                    }
                
                }
            %>
               
            }
            
            
        </script>

    </body>
</html>

