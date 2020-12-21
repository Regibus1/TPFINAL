
<%-- 
    Document   : home
    Created on : 17-dic-2020, 17:15:35
    Author     : Elias
--%>
<%@page import="Logica.Horario"%>
<%@page import="Logica.Empleado"%>
<%@page import="Logica.Juego"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Controladora control = new Controladora();
    List<Juego> listaJuego = control.buscarJuego();
    List<Empleado> listaEmpleado = control.buscarEmpleado();
    Juego otroJuego = new Juego();
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
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

                <!--Tarjeta Juegos-->
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
                                                    <div class="list-group" id="list-tab1" role="tablist">
                                                        <a class="list-group-item list-group-item-action active" id="list-home-list1" data-toggle="list" href="#list-home1" role="tab" aria-controls="home1">Crear Nuevo</a>
                                                        <a class="list-group-item list-group-item-action" id="list-profile-list1" data-toggle="list" href="#list-profile1" role="tab" aria-controls="profile1">Editar</a>
                                                        <a class="list-group-item list-group-item-action" id="list-messages-list1" data-toggle="list" href="#list-messages1" role="tab" aria-controls="messages1">Buscar</a>
                                                        <a class="list-group-item list-group-item-action" id="list-settings-list1" data-toggle="list" href="#list-settings1" role="tab" aria-controls="settings1">Eliminar</a>
                                                    </div>
                                                </div>
                                                <div class="col-8">
                                                    <div class="tab-content" id="nav-tabContent">


                                                        <!--Formulario para crear Juego -->

                                                        <form action="JuegoServlet" method="post" class="tab-pane fade show active text-left" role="tabpanel" id="list-home1" aria-labelledby="list-home-list1">
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
                                                            <button type="submit" class="btn btn-primary" class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" >Enviar cambios</button>
                                                        </form>

                                                        <!-- Edicion de Juego-->
                                                        <form action="JuegoServlet"class="tab-pane fade text-left" id="list-profile1" role="tabpanel" aria-labelledby="list-profile-list1" method="post">
                                                            <input name="juegoForm" value="editar" type="hidden">
                                                            <div class="form-group">
                                                                <label for="nombreJuego">Nombre Juego</label>
                                                                <select id="selectJuego" class="form-control" name="opcionJuego">
                                                                    <option selected>Elige uno para editar sus datos..</option>
                                                                    <% for (Juego unJuego : listaJuego) {%>

                                                                    <option id="<%=unJuego.getIdJuego()%>"><%= unJuego.getNombreJuego()%> </option>

                                                                    <% }%>
                                                                </select>
                                                                <button class="btn btn-primary mt-2 mb-2" type="button" data-toggle="collapse" data-target="#multiCollapseExample1" aria-expanded="false" aria-controls="multiCollapseExample1">Editar</button>
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

                                                        <!--Buscador de Juego-->        
                                                        <form action="JuegoServlet" class="tab-pane fade text-left" target="request" id="list-messages1" role="tabpanel" aria-labelledby="list-messages-list1" method="post">
                                                            <input name="juegoForm" value="buscar" type="hidden">
                                                            <div class="form-group">
                                                                <div class="form-group row">
                                                                    <input id="busqueda"type="text" placeholder="'La Noria'" class="form-control col-md-10" name="busqueda">
                                                                    <button class="btn btn-outline-secondary mx-2 " type="submit" data-toggle="collapse" data-target="#mensajeCollapse" aria-expande="false" aria-controls="mensajeCollapse">Buscar</button>
                                                                    <div class="collapse m-2" id="mensajeCollapse">
                                                                        <div class="card card-body" id="caja">
                                                                            Su consulta fue redirigida a otro URL...
                                                                        </div>
                                                                    </div> 
                                                                </div>
                                                            </div>

                                                        </form>

                                                        <!--Eliminacion de Juego-->
                                                        <form action="JuegoServlet" method="post" class="tab-pane fade text-left" id="list-settings1" role="tabpanel" aria-labelledby="list-settings-list1">
                                                            <input name="juegoForm" value="eliminar" type="hidden">
                                                            <div class="form-group">
                                                                <label for="nombreJuego">Lista de juegos</label>
                                                                <select id="nombreJuego" class="form-control" name="opcionEliminar">
                                                                    <option selected>Elige que desee eliminar..</option>
                                                                    <% for (Juego unJuego : listaJuego) {%>

                                                                    <option id="<%=unJuego.getIdJuego()%>"><%= unJuego.getNombreJuego()%> </option>

                                                                    <% }%>
                                                                </select>
                                                                <button type="submit" class="btn btn-outline-danger mt-2">Eliminar</button>
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

                <!--Tarjeta Empleados-->                                                
                <div class="col" method="post">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 fw-normal">Empleados</h4>
                        </div>
                        <div class="card-body">

                            <button type="button" class=" w-100 btn-lg btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal2">Administrar Empleados</button>
                            <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Configure acá los datos de los empleados</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-4">
                                                    <div class="list-group" id="list-tab2" role="tablist">
                                                        <a class="list-group-item list-group-item-action active" id="list-home-list2" data-toggle="list" href="#list-home2" role="tab" aria-controls="home2">Crear Nuevo</a>
                                                        <a class="list-group-item list-group-item-action" id="list-profile-list21" data-toggle="list" href="#list-profile2" role="tab" aria-controls="profile2">Editar</a>
                                                        <a class="list-group-item list-group-item-action" id="list-messages-list2" data-toggle="list" href="#list-messages2" role="tab" aria-controls="messages2">Buscar</a>
                                                        <a class="list-group-item list-group-item-action" id="list-settings-list2" data-toggle="list" href="#list-settings2" role="tab" aria-controls="settings2">Eliminar</a>
                                                    </div>
                                                </div>
                                                <div class="col-8">
                                                    <div class="tab-content" id="nav-tabContent">


                                                        <!--Formulario para crear Empleado -->

                                                        <form action="EmpleadoServ" method="post" class="tab-pane fade show active text-left" role="tabpanel" id="list-home2" aria-labelledby="list-home-list2">
                                                            <input name="empleadoForm" value="crear" type="hidden">
                                                            <div class="form-group">
                                                                <button type="submit" class="btn btn-outline-primary col-md-12 " class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" >Click aquí para crear un nuevo empleado</button>
                                                            </div>
                                                        </form>

                                                        <!-- Edicion de Empleado-->
                                                        <form action="EmpleadoServlet" method="post" class="tab-pane fade text-left" id="list-profile2" role="tabpanel" aria-labelledby="list-profile-list2">
                                                            <input name="empleadoForm" value="editar" type="hidden">
                                                            <div class="form-group">
                                                                <label for="nombreSelect">Nombre Empleado</label>
                                                                <select id="selectJuego" class="form-control" name="opcionEmpleado">
                                                                    <option selected>Elige uno para editar sus datos..</option>
                                                                    <% for (Empleado unEmpleado : listaEmpleado) {%>

                                                                    <option id="<%=unEmpleado.getIdEmpleado()%>"><%= unEmpleado.getNombre()%></option>

                                                                    <% }%>
                                                                </select>
                                                                <button class="btn btn-primary mt-2 mb-2" type="button" data-toggle="collapse" data-target="#multiCollapseExample2" aria-expanded="false" aria-controls="multiCollapseExample2">Editar</button>
                                                                <div class="col">
                                                                    <div class="collapse multi-collapse" id="multiCollapseExample2">
                                                                        <div class="form-row">
                                                                            <div class="form-group col-md-6">

                                                                                <label for="inputNombre">Nombre</label>
                                                                                <input type="text" class="form-control" placeholder="'Jose Antonio'" required name="nombreEmpleado">
                                                                            </div>


                                                                            <div class="form-group col-md-6">
                                                                                <label for="inputApellido">Apellido</label>
                                                                                <input type="text" class="form-control" placeholder="'Abreu'" required="required" name="apellidoEmpleado">
                                                                            </div>
                                                                        </div>  
                                                                        <div class="form-row">
                                                                            <div class="form-group col-md-4">
                                                                                <label for="inputDni">Dni</label>
                                                                                <input type="text" class="form-control" placeholder="'12345678'" required="required" name="dniEmpleado">
                                                                            </div>


                                                                            <div class="form-group col-md-4">
                                                                                <label for="inputCalle">Calle</label>
                                                                                <input type="text" class="form-control" placeholder="'Av Córdoba'" required="required" name="direccionEmpleado">
                                                                            </div>
                                                                            <div class="form-group col-md-4">
                                                                                <label for="inputNumero">Número</label>
                                                                                <input type="text" class="form-control" placeholder="'1234'" required="required" name="numeroDireccion">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-row">
                                                                            <div class="form-group col-md-6">
                                                                                <label for="inputPaisNac">País de Nacimiento</label>
                                                                                <select class="custom-select d-block w-100" id="country" required name="pais">
                                                                                    <option value="">Elige...</option>
                                                                                    <option value="Afganistán" id="AF">Afganistán</option>
                                                                                    <option value="Albania" id="AL">Albania</option>
                                                                                    <option value="Alemania" id="DE">Alemania</option>
                                                                                    <option value="Andorra" id="AD">Andorra</option>
                                                                                    <option value="Angola" id="AO">Angola</option>
                                                                                    <option value="Anguila" id="AI">Anguila</option>
                                                                                    <option value="Antártida" id="AQ">Antártida</option>
                                                                                    <option value="Antigua y Barbuda" id="AG">Antigua y Barbuda</option>
                                                                                    <option value="Antillas holandesas" id="AN">Antillas holandesas</option>
                                                                                    <option value="Arabia Saudí" id="SA">Arabia Saudí</option>
                                                                                    <option value="Argelia" id="DZ">Argelia</option>
                                                                                    <option value="Argentina" id="AR">Argentina</option>
                                                                                    <option value="Armenia" id="AM">Armenia</option>
                                                                                    <option value="Aruba" id="AW">Aruba</option>
                                                                                    <option value="Australia" id="AU">Australia</option>
                                                                                    <option value="Austria" id="AT">Austria</option>
                                                                                    <option value="Azerbaiyán" id="AZ">Azerbaiyán</option>
                                                                                    <option value="Bahamas" id="BS">Bahamas</option>
                                                                                    <option value="Bahrein" id="BH">Bahrein</option>
                                                                                    <option value="Bangladesh" id="BD">Bangladesh</option>
                                                                                    <option value="Barbados" id="BB">Barbados</option>
                                                                                    <option value="Bélgica" id="BE">Bélgica</option>
                                                                                    <option value="Belice" id="BZ">Belice</option>
                                                                                    <option value="Benín" id="BJ">Benín</option>
                                                                                    <option value="Bermudas" id="BM">Bermudas</option>
                                                                                    <option value="Bhután" id="BT">Bhután</option>
                                                                                    <option value="Bielorrusia" id="BY">Bielorrusia</option>
                                                                                    <option value="Birmania" id="MM">Birmania</option>
                                                                                    <option value="Bolivia" id="BO">Bolivia</option>
                                                                                    <option value="Bosnia y Herzegovina" id="BA">Bosnia y Herzegovina</option>
                                                                                    <option value="Botsuana" id="BW">Botsuana</option>
                                                                                    <option value="Brasil" id="BR">Brasil</option>
                                                                                    <option value="Brunei" id="BN">Brunei</option>
                                                                                    <option value="Bulgaria" id="BG">Bulgaria</option>
                                                                                    <option value="Burkina Faso" id="BF">Burkina Faso</option>
                                                                                    <option value="Burundi" id="BI">Burundi</option>
                                                                                    <option value="Cabo Verde" id="CV">Cabo Verde</option>
                                                                                    <option value="Camboya" id="KH">Camboya</option>
                                                                                    <option value="Camerún" id="CM">Camerún</option>
                                                                                    <option value="Canadá" id="CA">Canadá</option>
                                                                                    <option value="Chad" id="TD">Chad</option>
                                                                                    <option value="Chile" id="CL">Chile</option>
                                                                                    <option value="China" id="CN">China</option>
                                                                                    <option value="Chipre" id="CY">Chipre</option>
                                                                                    <option value="Ciudad estado del Vaticano" id="VA">Ciudad estado del Vaticano</option>
                                                                                    <option value="Colombia" id="CO">Colombia</option>
                                                                                    <option value="Comores" id="KM">Comores</option>
                                                                                    <option value="Congo" id="CG">Congo</option>
                                                                                    <option value="Corea" id="KR">Corea</option>
                                                                                    <option value="Corea del Norte" id="KP">Corea del Norte</option>
                                                                                    <option value="Costa del Marfíl" id="CI">Costa del Marfíl</option>
                                                                                    <option value="Costa Rica" id="CR">Costa Rica</option>
                                                                                    <option value="Croacia" id="HR">Croacia</option>
                                                                                    <option value="Cuba" id="CU">Cuba</option>
                                                                                    <option value="Dinamarca" id="DK">Dinamarca</option>
                                                                                    <option value="Djibouri" id="DJ">Djibouri</option>
                                                                                    <option value="Dominica" id="DM">Dominica</option>
                                                                                    <option value="Ecuador" id="EC">Ecuador</option>
                                                                                    <option value="Egipto" id="EG">Egipto</option>
                                                                                    <option value="El Salvador" id="SV">El Salvador</option>
                                                                                    <option value="Emiratos Arabes Unidos" id="AE">Emiratos Arabes Unidos</option>
                                                                                    <option value="Eritrea" id="ER">Eritrea</option>
                                                                                    <option value="Eslovaquia" id="SK">Eslovaquia</option>
                                                                                    <option value="Eslovenia" id="SI">Eslovenia</option>
                                                                                    <option value="España" id="ES">España</option>
                                                                                    <option value="Estados Unidos" id="US">Estados Unidos</option>
                                                                                    <option value="Estonia" id="EE">Estonia</option>
                                                                                    <option value="c" id="ET">Etiopía</option>
                                                                                    <option value="Ex-República Yugoslava de Macedonia" id="MK">Ex-República Yugoslava de Macedonia</option>
                                                                                    <option value="Filipinas" id="PH">Filipinas</option>
                                                                                    <option value="Finlandia" id="FI">Finlandia</option>
                                                                                    <option value="Francia" id="FR">Francia</option>
                                                                                    <option value="Gabón" id="GA">Gabón</option>
                                                                                    <option value="Gambia" id="GM">Gambia</option>
                                                                                    <option value="Georgia" id="GE">Georgia</option>
                                                                                    <option value="Georgia del Sur y las islas Sandwich del Sur" id="GS">Georgia del Sur y las islas Sandwich del Sur</option>
                                                                                    <option value="Ghana" id="GH">Ghana</option>
                                                                                    <option value="Gibraltar" id="GI">Gibraltar</option>
                                                                                    <option value="Granada" id="GD">Granada</option>
                                                                                    <option value="Grecia" id="GR">Grecia</option>
                                                                                    <option value="Groenlandia" id="GL">Groenlandia</option>
                                                                                    <option value="Guadalupe" id="GP">Guadalupe</option>
                                                                                    <option value="Guam" id="GU">Guam</option>
                                                                                    <option value="Guatemala" id="GT">Guatemala</option>
                                                                                    <option value="Guayana" id="GY">Guayana</option>
                                                                                    <option value="Guayana francesa" id="GF">Guayana francesa</option>
                                                                                    <option value="Guinea" id="GN">Guinea</option>
                                                                                    <option value="Guinea Ecuatorial" id="GQ">Guinea Ecuatorial</option>
                                                                                    <option value="Guinea-Bissau" id="GW">Guinea-Bissau</option>
                                                                                    <option value="Haití" id="HT">Haití</option>
                                                                                    <option value="Holanda" id="NL">Holanda</option>
                                                                                    <option value="Honduras" id="HN">Honduras</option>
                                                                                    <option value="Hong Kong R. A. E" id="HK">Hong Kong R. A. E</option>
                                                                                    <option value="Hungría" id="HU">Hungría</option>
                                                                                    <option value="India" id="IN">India</option>
                                                                                    <option value="Indonesia" id="ID">Indonesia</option>
                                                                                    <option value="Irak" id="IQ">Irak</option>
                                                                                    <option value="Irán" id="IR">Irán</option>
                                                                                    <option value="Irlanda" id="IE">Irlanda</option>
                                                                                    <option value="Isla Bouvet" id="BV">Isla Bouvet</option>
                                                                                    <option value="Isla Christmas" id="CX">Isla Christmas</option>
                                                                                    <option value="Isla Heard e Islas McDonald" id="HM">Isla Heard e Islas McDonald</option>
                                                                                    <option value="Islandia" id="IS">Islandia</option>
                                                                                    <option value="Islas Caimán" id="KY">Islas Caimán</option>
                                                                                    <option value="Islas Cook" id="CK">Islas Cook</option>
                                                                                    <option value="Islas de Cocos o Keeling" id="CC">Islas de Cocos o Keeling</option>
                                                                                    <option value="Islas Faroe" id="FO">Islas Faroe</option>
                                                                                    <option value="Islas Fiyi" id="FJ">Islas Fiyi</option>
                                                                                    <option value="Islas Malvinas Islas Falkland" id="FK">Islas Malvinas Islas Falkland</option>
                                                                                    <option value="Islas Marianas del norte" id="MP">Islas Marianas del norte</option>
                                                                                    <option value="Islas Marshall" id="MH">Islas Marshall</option>
                                                                                    <option value="Islas menores de Estados Unidos" id="UM">Islas menores de Estados Unidos</option>
                                                                                    <option value="Islas Palau" id="PW">Islas Palau</option>
                                                                                    <option value="Islas Salomón" d="SB">Islas Salomón</option>
                                                                                    <option value="Islas Tokelau" id="TK">Islas Tokelau</option>
                                                                                    <option value="Islas Turks y Caicos" id="TC">Islas Turks y Caicos</option>
                                                                                    <option value="Islas Vírgenes EE.UU." id="VI">Islas Vírgenes EE.UU.</option>
                                                                                    <option value="Islas Vírgenes Reino Unido" id="VG">Islas Vírgenes Reino Unido</option>
                                                                                    <option value="Israel" id="IL">Israel</option>
                                                                                    <option value="Italia" id="IT">Italia</option>
                                                                                    <option value="Jamaica" id="JM">Jamaica</option>
                                                                                    <option value="Japón" id="JP">Japón</option>
                                                                                    <option value="Jordania" id="JO">Jordania</option>
                                                                                    <option value="Kazajistán" id="KZ">Kazajistán</option>
                                                                                    <option value="Kenia" id="KE">Kenia</option>
                                                                                    <option value="Kirguizistán" id="KG">Kirguizistán</option>
                                                                                    <option value="Kiribati" id="KI">Kiribati</option>
                                                                                    <option value="Kuwait" id="KW">Kuwait</option>
                                                                                    <option value="Laos" id="LA">Laos</option>
                                                                                    <option value="Lesoto" id="LS">Lesoto</option>
                                                                                    <option value="Letonia" id="LV">Letonia</option>
                                                                                    <option value="Líbano" id="LB">Líbano</option>
                                                                                    <option value="Liberia" id="LR">Liberia</option>
                                                                                    <option value="Libia" id="LY">Libia</option>
                                                                                    <option value="Liechtenstein" id="LI">Liechtenstein</option>
                                                                                    <option value="Lituania" id="LT">Lituania</option>
                                                                                    <option value="Luxemburgo" id="LU">Luxemburgo</option>
                                                                                    <option value="Macao R. A. E" id="MO">Macao R. A. E</option>
                                                                                    <option value="Madagascar" id="MG">Madagascar</option>
                                                                                    <option value="Malasia" id="MY">Malasia</option>
                                                                                    <option value="Malawi" id="MW">Malawi</option>
                                                                                    <option value="Maldivas" id="MV">Maldivas</option>
                                                                                    <option value="Malí" id="ML">Malí</option>
                                                                                    <option value="Malta" id="MT">Malta</option>
                                                                                    <option value="Marruecos" id="MA">Marruecos</option>
                                                                                    <option value="Martinica" id="MQ">Martinica</option>
                                                                                    <option value="Mauricio" id="MU">Mauricio</option>
                                                                                    <option value="Mauritania" id="MR">Mauritania</option>
                                                                                    <option value="Mayotte" id="YT">Mayotte</option>
                                                                                    <option value="México" id="MX">México</option>
                                                                                    <option value="Micronesia" id="FM">Micronesia</option>
                                                                                    <option value="Moldavia" id="MD">Moldavia</option>
                                                                                    <option value="Mónaco" id="MC">Mónaco</option>
                                                                                    <option value="Mongolia" id="MN">Mongolia</option>
                                                                                    <option value="Montserrat" id="MS">Montserrat</option>
                                                                                    <option value="Mozambique" id="MZ">Mozambique</option>
                                                                                    <option value="Namibia" id="NA">Namibia</option>
                                                                                    <option value="Nauru" id="NR">Nauru</option>
                                                                                    <option value="Nepal" id="NP">Nepal</option>
                                                                                    <option value="Nicaragua" id="NI">Nicaragua</option>
                                                                                    <option value="Níger" id="NE">Níger</option>
                                                                                    <option value="Nigeria" id="NG">Nigeria</option>
                                                                                    <option value="Niue" id="NU">Niue</option>
                                                                                    <option value="Norfolk" id="NF">Norfolk</option>
                                                                                    <option value="Noruega" id="NO">Noruega</option>
                                                                                    <option value="Nueva Caledonia" id="NC">Nueva Caledonia</option>
                                                                                    <option value="Nueva Zelanda" id="NZ">Nueva Zelanda</option>
                                                                                    <option value="Omán" id="OM">Omán</option>
                                                                                    <option value="Panamá" id="PA">Panamá</option>
                                                                                    <option value="Papua Nueva Guinea" id="PG">Papua Nueva Guinea</option>
                                                                                    <option value="Paquistán" id="PK">Paquistán</option>
                                                                                    <option value="Paraguay" id="PY">Paraguay</option>
                                                                                    <option value="Perú" id="PE">Perú</option>
                                                                                    <option value="Pitcairn" id="PN">Pitcairn</option>
                                                                                    <option value="Polinesia francesa" id="PF">Polinesia francesa</option>
                                                                                    <option value="Polonia" id="PL">Polonia</option>
                                                                                    <option value="Portugal" id="PT">Portugal</option>
                                                                                    <option value="Puerto Rico" id="PR">Puerto Rico</option>
                                                                                    <option value="Qatar" id="QA">Qatar</option>
                                                                                    <option value="Reino Unido" id="UK">Reino Unido</option>
                                                                                    <option value="República Centroafricana" id="CF">República Centroafricana</option>
                                                                                    <option value="República Checa" id="CZ">República Checa</option>
                                                                                    <option value="República de Sudáfrica" id="ZA">República de Sudáfrica</option>
                                                                                    <option value="República Democrática del Congo Zaire" id="CD">República Democrática del Congo Zaire</option>
                                                                                    <option value="República Dominicana" id="DO">República Dominicana</option>
                                                                                    <option value="Reunión" id="RE">Reunión</option>
                                                                                    <option value="Ruanda" id="RW">Ruanda</option>
                                                                                    <option value="Rumania" id="RO">Rumania</option>
                                                                                    <option value="Rusia" id="RU">Rusia</option>
                                                                                    <option value="Samoa" id="WS">Samoa</option>
                                                                                    <option value="Samoa occidental" id="AS">Samoa occidental</option>
                                                                                    <option value="San Kitts y Nevis" id="KN">San Kitts y Nevis</option>
                                                                                    <option value="San Marino" id="SM">San Marino</option>
                                                                                    <option value="San Pierre y Miquelon" id="PM">San Pierre y Miquelon</option>
                                                                                    <option value="San Vicente e Islas Granadinas" id="VC">San Vicente e Islas Granadinas</option>
                                                                                    <option value="Santa Helena" id="SH">Santa Helena</option>
                                                                                    <option value="Santa Lucía" id="LC">Santa Lucía</option>
                                                                                    <option value="Santo Tomé y Príncipe" id="ST">Santo Tomé y Príncipe</option>
                                                                                    <option value="Senegal" id="SN">Senegal</option>
                                                                                    <option value="Serbia y Montenegro" id="YU">Serbia y Montenegro</option>
                                                                                    <option value="Sychelles" id="SC">Seychelles</option>
                                                                                    <option value="Sierra Leona" id="SL">Sierra Leona</option>
                                                                                    <option value="Singapur" id="SG">Singapur</option>
                                                                                    <option value="Siria" id="SY">Siria</option>
                                                                                    <option value="Somalia" id="SO">Somalia</option>
                                                                                    <option value="Sri Lanka" id="LK">Sri Lanka</option>
                                                                                    <option value="Suazilandia" id="SZ">Suazilandia</option>
                                                                                    <option value="Sudán" id="SD">Sudán</option>
                                                                                    <option value="Suecia" id="SE">Suecia</option>
                                                                                    <option value="Suiza" id="CH">Suiza</option>
                                                                                    <option value="Surinam" id="SR">Surinam</option>
                                                                                    <option value="Svalbard" id="SJ">Svalbard</option>
                                                                                    <option value="Tailandia" id="TH">Tailandia</option>
                                                                                    <option value="Taiwán" id="TW">Taiwán</option>
                                                                                    <option value="Tanzania" id="TZ">Tanzania</option>
                                                                                    <option value="Tayikistán" id="TJ">Tayikistán</option>
                                                                                    <option value="Territorios británicos del océano Indico" id="IO">Territorios británicos del océano Indico</option>
                                                                                    <option value="Territorios franceses del sur" id="TF">Territorios franceses del sur</option>
                                                                                    <option value="Timor Oriental" id="TP">Timor Oriental</option>
                                                                                    <option value="Togo" id="TG">Togo</option>
                                                                                    <option value="Tonga" id="TO">Tonga</option>
                                                                                    <option value="Trinidad y Tobago" id="TT">Trinidad y Tobago</option>
                                                                                    <option value="Túnez" id="TN">Túnez</option>
                                                                                    <option value="Turkmenistán" id="TM">Turkmenistán</option>
                                                                                    <option value="Turquía" id="TR">Turquía</option>
                                                                                    <option value="Tuvalu" id="TV">Tuvalu</option>
                                                                                    <option value="Ucrania" id="UA">Ucrania</option>
                                                                                    <option value="Uganda" id="UG">Uganda</option>
                                                                                    <option value="Uruguay" id="UY">Uruguay</option>
                                                                                    <option value="Uzbekistán" id="UZ">Uzbekistán</option>
                                                                                    <option value="Vanuatu" id="VU">Vanuatu</option>
                                                                                    <option value="Venezuela" id="VE">Venezuela</option>
                                                                                    <option value="Vietnam" id="VN">Vietnam</option>
                                                                                    <option value="Wallis y Futuna" id="WF">Wallis y Futuna</option>
                                                                                    <option value="Yemen" id="YE">Yemen</option>
                                                                                    <option value="Zambia" id="ZM">Zambia</option>
                                                                                    <option value="Zimbabue" id="ZW">Zimbabue</option>

                                                                                </select>
                                                                            </div>
                                                                            <div class="form-group col-md-6">
                                                                                <label for="state">Localidad</label>
                                                                                <select class="custom-select d-block w-100" id="state" required name="localidad">
                                                                                    <option value="Elige una opcion">Elige...</option>
                                                                                    <option>Abasto</option>
                                                                                    <option>Agronomía</option>
                                                                                    <option>Almagro</option>
                                                                                    <option>Balvanera</option>
                                                                                    <option>Barracas</option>
                                                                                    <option>Barrio Norte</option>
                                                                                    <option>Belgrano</option>
                                                                                    <option>Boedo</option>
                                                                                    <option>Buenos Aires</option>
                                                                                    <option>Caba</option>
                                                                                    <option>Caballito</option>
                                                                                    <option>Capital Federal</option>
                                                                                    <option>Chacarita</option>
                                                                                    <option>Ciudad Autónoma de Buenos Aires</option>
                                                                                    <option>Coghlan</option>
                                                                                    <option>Colegiales</option>
                                                                                    <option>Constitución</option>
                                                                                    <option>Flores</option>
                                                                                    <option>Floresta</option>
                                                                                    <option>La Boca</option>
                                                                                    <option>Liniers</option>
                                                                                    <option>Mataderos</option>
                                                                                    <option>Microcentro</option>
                                                                                    <option>Monte Castro</option>
                                                                                    <option>Monserrat</option>
                                                                                    <option>Nueva Pompeya</option>
                                                                                    <option>Núñez</option>
                                                                                    <option>Palermo</option>
                                                                                    <option>Palermo Viejo</option>
                                                                                    <option>Parque Avellaneda</option>
                                                                                    <option>Parque Chacabuco</option>
                                                                                    <option>Parque Patricios</option>
                                                                                    <option>Paternal</option>
                                                                                    <option>Puerto Madera</option>
                                                                                    <option>Recoleta</option>
                                                                                    <option>Retiro</option>
                                                                                    <option>Saavedra</option>
                                                                                    <option>San Cristobal</option>
                                                                                    <option>San Nicólas</option>
                                                                                    <option>San Telmo</option>
                                                                                    <option>Villa Devoto</option>
                                                                                    <option>Villa Urquiza</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <button class="btn btn-outline-primary mt-2 mb-2" type="submit">Guardar</button>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </form>

                                                        <!--Buscador de Juego-->        
                                                        <form action="EmpleadoServlet" class="tab-pane fade text-left" target="request" id="list-messages2" role="tabpanel" aria-labelledby="list-messages-list2" method="post">
                                                            <input name="empleadoForm" value="buscar" type="hidden">
                                                            <div class="form-group">
                                                                <div class="form-group row">
                                                                    <input id="busqueda"type="text" placeholder="'Jose'" class="form-control col-md-10" name="busqueda">
                                                                    <button class="btn btn-outline-secondary mx-2 " type="submit" data-toggle="collapse" data-target="#mensajeCollapse" aria-expande="false" aria-controls="mensajeCollapse">Buscar</button>
                                                                    <div class="collapse m-2" id="mensajeCollapse">
                                                                        <div class="card card-body" id="caja">
                                                                            Su consulta fue redirigida a otro URL...
                                                                        </div>
                                                                    </div> 
                                                                </div>
                                                            </div>

                                                        </form>

                                                        <!--Eliminacion de Juego-->
                                                        <form action="EmpleadoServlet" method="post" class="tab-pane fade text-left" id="list-settings2" role="tabpanel" aria-labelledby="list-settings-list2">
                                                            <input name="empleadoForm" value="eliminar" type="hidden">
                                                            <div class="form-group">
                                                                <label for="nombreEliminar">Lista Empleados</label>
                                                                <select id="nombreJuego" class="form-control" name="opcionEliminar">
                                                                    <option selected>Elige que desee eliminar..</option>
                                                                    <% for (Empleado unEmpleado : listaEmpleado) {%>

                                                                    <option id="<%=unEmpleado.getIdEmpleado()%>"><%= unEmpleado.getNombre()%> </option>

                                                                    <% }%>
                                                                </select>
                                                                <button type="submit" class="btn btn-outline-danger mt-2">Eliminar</button>
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

                <!--Tarjeta Horarios-->
                <div class="col">
                    <div class="col">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-header">
                                <h4 class="my-0 fw-normal">Tickets</h4>
                            </div>
                            <div class="card-body">

                                <button type="button" class=" w-100 btn-lg btn btn-outline-primary" data-toggle="modal" data-target="#exampleModal3">Crea tickets</button>
                                <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel3">Formulario Tickets</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="list-group" id="list-tab3" role="tablist">
                                                            <a class="list-group-item list-group-item-action active" id="list-home-list3" data-toggle="list" href="#list-home3" role="tab" aria-controls="home3">Crear Nuevo</a>
                                                            <a class="list-group-item list-group-item-action" id="list-profile-list3" data-toggle="list" href="#list-profile3" role="tab" aria-controls="profile3">Editar</a>
                                                            <a class="list-group-item list-group-item-action" id="list-messages-list3" data-toggle="list" href="#list-messages3" role="tab" aria-controls="messages3">Buscar</a>
                                                            <a class="list-group-item list-group-item-action" id="list-settings-list3" data-toggle="list" href="#list-settings3" role="tab" aria-controls="settings3">Eliminar</a>
                                                        </div>
                                                    </div>
                                                    <div class="col-8">
                                                        <div class="tab-content" id="nav-tabContent">


                                                            <!--Formulario para crear Juego -->

                                                            <form action="TicketServlet" method="post" class="tab-pane fade show active text-left" role="tabpanel" id="list-home3" aria-labelledby="list-home-list3">
                                                                <input name="ticketForm" value="crear" type="hidden">

                                                                <div class="form-group">
                                                                    <label for="inputTicket">Nuevo Ticket</label>
                                                                    <div class="form-group col-md-12">
                                                                        <select id="selectJuego" class="form-control" name="opcionJuego">
                                                                            <option selected>Elige un juego para el ticket..</option>
                                                                            <% for (Juego unJuego : listaJuego) {%>

                                                                            <option id="<%=unJuego.getIdJuego()%>"><%= unJuego.getNombreJuego()%> </option>

                                                                            <% }%>
                                                                        </select>
                                                                    </div>
                                                                </div>  
                                                                <div class="form-group col-md-12">
                                                                    <label for="fechaVenta">Fecha de Venta</label>
                                                                    <input type="text" class="form-control" placeholder="'21/12/2020'" name="fechaVenta"> 
                                                                </div>
                                                                <div class="form-group col-md-12">
                                                                    <label for="inputTime" > Horario </label>
                                                                    <select id="inputTime" class="form-control" required name="horarioTicket">
                                                                        <option selected>Elige hora para utilizar la entrada...</option>
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


                                                                <button class="btn btn-outline-primary mt-2 mb-2" type="submit">Enviar</button>



                                                            </form>

                                                            <!-- Edicion del Ticket-->
                                                            <form action="TicketServlet" method="post" class="tab-pane fade text-left" role="tabpanel" id="list-profile3" aria-labelledby="list-profile-list3">
                                                                <input name="ticketForm" value="crear" type="hidden">

                                                                <div class="form-group">
                                                                    <div class="form-group ">
                                                                        <label for="numTicket">Nro de Ticket</label>
                                                                        <input type="text" class="form-control" placeholder="'1234'" name="idTicket"> 
                                                                    </div>
                                                                    <button class="btn btn-primary mt-2 mb-2" type="button" data-toggle="collapse" data-target="#multiCollapseExample1" aria-expanded="false" aria-controls="multiCollapseExample1">Editar</button>
                                                                    <div class="col">
                                                                        <div class="collapse multi-collapse" id="multiCollapseExample1">
                                                                            <div class="form-group">
                                                                                <label for="inputTicket">Nuevo Ticket</label>
                                                                                <div class="form-group col-md-12">
                                                                                    <select id="selectJuego" class="form-control" name="opcionJuego">
                                                                                        <option selected>Elige un juego para el ticket..</option>
                                                                                        <% for (Juego unJuego : listaJuego) {%>

                                                                                        <option id="<%=unJuego.getIdJuego()%>"><%= unJuego.getNombreJuego()%> </option>

                                                                                        <% }%>
                                                                                    </select>
                                                                                </div>
                                                                            </div> 
                                                                            <div class="form-group col-md-12">
                                                                                <label for="inputTime" > Horario </label>
                                                                                <select id="inputTime" class="form-control" required name="horarioTicket">
                                                                                    <option selected>Elige hora para utilizar la entrada...</option>
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


                                                                            <button class="btn btn-outline-primary mt-2 mb-2" type="submit">Enviar</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>


                                                            <!--Buscador de Juego-->        
                                                            <form action="TicketServlet" class="tab-pane fade text-left" target="request" id="list-messages3" role="tabpanel" aria-labelledby="list-messages-list3" method="post">
                                                                <input name="juegoForm" value="buscar" type="hidden">
                                                                <div class="form-group">
                                                                    <div class="form-group row">
                                                                        <input id="busqueda"type="text" placeholder="'Coloque el nro de su ticket..'" class="form-control col-md-10" name="busqueda">
                                                                        <button class="btn btn-outline-secondary mx-2 " type="submit" data-toggle="collapse" data-target="#mensajeCollapse" aria-expande="false" aria-controls="mensajeCollapse">Buscar</button>
                                                                        <div class="collapse m-2" id="mensajeCollapse">
                                                                            <div class="card card-body" id="caja">
                                                                                Su consulta fue redirigida a otro URL...
                                                                            </div>
                                                                        </div> 
                                                                    </div>
                                                                </div>

                                                            </form>

                                                            <!--Eliminacion de Juego-->
                                                            <form action="TicketServlet" method="post" class="tab-pane fade text-left" id="list-settings3" role="tabpanel" aria-labelledby="list-settings-list3">
                                                                <input name="juegoForm" value="eliminar" type="hidden">
                                                                <div class="form-group">
                                                                    <input id="busqueda"type="text" placeholder="'Coloque el nro de su ticket..'" class="form-control col-md-10" name="busqueda">
                                                                    <button type="submit" class="btn btn-outline-danger mt-2">Eliminar</button>
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
                </div>
            </div>

            <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">


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
</script>

</body>
</html>

