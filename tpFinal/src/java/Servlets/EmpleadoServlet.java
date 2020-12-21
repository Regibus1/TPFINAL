/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Controladora;
import Logica.Empleado;
import Logica.Usuario;
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
@WebServlet(name = "EmpleadoServlet", urlPatterns = {"/EmpleadoServlet"})
public class EmpleadoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Controladora control = new Controladora();
        String valorFormulario2 = request.getParameter("empleadoForm");

        if (valorFormulario2.equals("crear")) {
            response.sendRedirect("registro.jsp");
        }

        if (valorFormulario2.equals("editar")) {
            String esteEmpleado = request.getParameter("opcionEmpleado");
            List<Empleado> listaEmpleado = control.buscarEmpleado();
            String nombre = request.getParameter("nombreEmpleado");
            String apellido = request.getParameter("apellidoEmpleado");
            String dni = request.getParameter("dniEmpleado");
            String pais = request.getParameter("pais");

            for (Empleado unEmpleado : listaEmpleado) {
                if (unEmpleado.getNombre().equals(esteEmpleado)) {
                    unEmpleado.setNombre(nombre);
                    unEmpleado.setApellido(apellido);
                    unEmpleado.setDni(dni);
                    unEmpleado.setPais(pais);
                    control.editarEmpleado(unEmpleado);

                    response.sendRedirect("home.jsp");
                }
            }

        }

        if (valorFormulario2.equals("buscar")) {
            String nombreBuscado = request.getParameter("busqueda");
            List<Empleado> listaJuego = control.buscarEmpleado();
            int idBuscado = 1;
            for (Empleado unEmpleado : listaJuego) {
                if (nombreBuscado.equals(unEmpleado.getNombre())) {
                    idBuscado = unEmpleado.getIdEmpleado();
                    nombreBuscado = unEmpleado.toString(control.buscarUnEmpleado(idBuscado));
                }
            }

            request.getSession().setAttribute("unNombre", nombreBuscado);
            response.sendRedirect("busqueda.jsp");
        }
        
        if(valorFormulario2.equals("eliminar")){
           String empleadoSeleccionado = request.getParameter("opcionEliminar");
            
            List<Empleado> listaEmpleado = control.buscarEmpleado();
            List<Usuario> listaUsuario = control.buscarUsuario();
            for (int i = 0; i < listaEmpleado.size(); i++) {
                if(listaEmpleado.get(i).getNombre().equals(empleadoSeleccionado)){
                    
                    control.eliminarEmpleado(listaEmpleado.get(i).getIdEmpleado());
                    control.eliminarUsuario(listaEmpleado.get(i).getIdEmpleado());
                }
            }
            //Ordena la lista en caso de eliminar un elemento que este al medio
            for (int i = 0; i < listaEmpleado.size(); i++) {
                listaEmpleado.get(i).setIdEmpleado(i+1);
                listaUsuario.get(i).setIdUsuario(i+1);
            }
            response.sendRedirect("home.jsp"); 
           
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
