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
import java.sql.Time;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
                        unHorario.setHoraApertura(Time.valueOf(horaApertura));
                        unHorario.setHoraCierre(Time.valueOf(horaCierre));
                        control.editarHorario(unHorario);
                    }
                    control.editarJuego(unJuego);
                }
            }

        }
        
       
        response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
