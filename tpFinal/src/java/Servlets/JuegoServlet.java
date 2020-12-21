/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Controladora;
import Logica.Horario;
import Logica.Juego;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "JuegoServlet", urlPatterns = {"/JuegoServlet"})
public class JuegoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Controladora control = new Controladora();
        String valorFormulario = request.getParameter("juegoForm");
        
        if (valorFormulario.equals("crear")) {

            String nombreJuego = request.getParameter("nombreJuego");
            int edadMinima = Integer.parseInt(request.getParameter("edadMinima"));
            int capacidadMaxima = Integer.parseInt(request.getParameter("capacidad"));
            String horaApertura = request.getParameter("horaApertura");
            String horaCierre = request.getParameter("horaCierre");

            control.crearJuego(nombreJuego, edadMinima, capacidadMaxima);
            control.crearHorario(horaApertura, horaCierre);
             Juego unJuego;
            
            List<Juego> listaJuego = control.buscarJuego();
            List<Horario> listaHorario = control.buscarHorario();
            for (int i = 0; i < listaJuego.size(); i++) {
                if(nombreJuego.equals(listaJuego.get(i).getNombreJuego())){
                    unJuego = listaJuego.get(i);
                    unJuego.setUnHorario(listaHorario.get(i));
                    control.editarJuego(unJuego);
                }
            }
            response.sendRedirect("home.jsp");
        }

        if (valorFormulario.equals("editar")) {
            Horario unHorario;
            Juego unJuego;
            String esteJuego = request.getParameter("opcionJuego");
            List<Juego> listaJuego = control.buscarJuego();
            List<Horario> listaHorario = control.buscarHorario();
            
            for (int i = 0; i < listaJuego.size(); i++) {
                
                if (listaJuego.get(i).getNombreJuego().equals(esteJuego)) {
                    
                    String nombreJuego = request.getParameter("nombreJuego");
                    int edadMinima = Integer.parseInt(request.getParameter("edadMinima"));
                    int capacidadMaxima = Integer.parseInt(request.getParameter("capacidad"));
                    String horaApertura = request.getParameter("horaApertura");
                    String horaCierre = request.getParameter("horaCierre");
                    
                    
                    unJuego = listaJuego.get(i);
                    unJuego.setNombreJuego(nombreJuego);
                    unJuego.setEdadMinima(edadMinima);
                    unJuego.setCapacidadMax(capacidadMaxima);
                    
                    if(listaJuego.get(i).getIdJuego() == listaHorario.get(i).getIdHorario()){
                        unHorario = listaHorario.get(i);
                        unHorario.setHoraApertura(horaApertura);
                        unHorario.setHoraCierre(horaCierre);
                        control.editarHorario(unHorario);
                    }
                    control.editarJuego(unJuego);
                    
                    response.sendRedirect("home.jsp");
                }
            }

        }
        
        if(valorFormulario.equals("buscar")){
            String nombreBuscado = request.getParameter("busqueda");
            List<Juego> listaJuego = control.buscarJuego();
            int idBuscado = 1;
            for(Juego unJuego : listaJuego) {
                if (nombreBuscado.equals(unJuego.getNombreJuego())) {
                    idBuscado = unJuego.getIdJuego();
                    nombreBuscado = unJuego.toString(control.buscarUnJuego(idBuscado));
                }
            }
            
            request.getSession().setAttribute("unNombre", nombreBuscado);
            response.sendRedirect("busqueda.jsp");
        }
        
        if(valorFormulario.equals("eliminar")){
            String juegoSeleccionado = request.getParameter("opcionEliminar");
            
            List<Juego> listaJuego = control.buscarJuego();
            List<Horario> listaHorario = control.buscarHorario();
            for (int i = 0; i < listaJuego.size(); i++) {
                if(listaJuego.get(i).getNombreJuego().equals(juegoSeleccionado)){
                    
                    control.eliminarJuego(listaJuego.get(i).getIdJuego());
                    control.eliminarHorario(listaJuego.get(i).getIdJuego());
                }
            }
            for (int i = 0; i < listaJuego.size(); i++) {
                listaJuego.get(i).setIdJuego(i+1);
                listaHorario.get(i).setIdHorario(i+1);
            }
            response.sendRedirect("home.jsp");
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
