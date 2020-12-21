/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Controladora;
import Logica.Horario;
import Logica.Juego;
import Logica.Ticket;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Elias
 */
@WebServlet(name = "TicketServlet", urlPatterns = {"TicketServlet"})
public class TicketServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Controladora control = new Controladora();
            String valorFormulario = request.getParameter("ticketForm");
    
            if(valorFormulario.equals("crear")){
                String nombreJuego = request.getParameter("opcionJuego");
                String fechaVenta = request.getParameter("fechaVenta");
                String horarioTicket = request.getParameter("horarioTicket");
                
                Ticket unTicket = new Ticket();
                
                List<Juego> listaJuego = control.buscarJuego();
                List<Horario> listaHorario = control.buscarHorario();
                for (Juego unJuego : listaJuego) {
                    if(unJuego.getNombreJuego().equals(nombreJuego)){
                            unTicket.setUnJuego(unJuego);
                            unTicket.setFechaVenta(fechaVenta); 
                      response.sendRedirect("home.jsp");
                    }
                }
            }
            
            if(valorFormulario.equals("editar")){
                String idTicket = request.getParameter("idTicket");
                String nombreJuego = request.getParameter("opcionJuego");
                String fechaVenta = request.getParameter("fechaVenta");
                
                Ticket unTicket = new Ticket();
                List<Juego> listaJuego = control.buscarJuego();
                
                for (Juego unJuego : listaJuego) {
                    if(unJuego.getNombreJuego().equals(nombreJuego)){
                            unTicket.setUnJuego(unJuego);
                            unTicket.setFechaVenta(fechaVenta); 
                      response.sendRedirect("home.jsp");
                    }
                }
               
            }
            
            if(valorFormulario.equals("buscar")){
                int idTicket = Integer.parseInt(request.getParameter("busqueda"));
                Ticket unTicket = new Ticket();
                
                String toString = unTicket.toString(control.buscarUnTicket(idTicket));
                request.getSession().setAttribute("toString", toString);
                
                response.sendRedirect("busqueda.jsp");
            }
            
            if(valorFormulario.equals("eliminar")){
                int idTicket = Integer.parseInt(request.getParameter("busqueda"));
                control.eliminarTicket(idTicket);
                
                response.sendRedirect("home.jsp");
            }
    }
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
