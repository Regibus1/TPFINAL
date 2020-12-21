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
@WebServlet(name = "RegistroServlet", urlPatterns = {"/RegistroServlet"})
public class RegistroServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        
        String nombreEmpleado = request.getParameter("nombre");
        String apellidoEmpleado = request.getParameter("apellido");
        String nombreUsuario = request.getParameter("username");
        String claveUsuario = request.getParameter("clave");
        String claveRepetida = request.getParameter("repetido");
        String dniEmpleado = request.getParameter("dni");
        String calleEmpleado = request.getParameter("calle");
        String numeroCalle = request.getParameter("numeroCalle");
        String paisEmpleado = request.getParameter("pais");
        String localidadEmpleado = request.getParameter("localidad");
        String codigoPostal = request.getParameter("zipcode");
        String claveAdmin = request.getParameter("claveAdmin");
        
        if (claveAdmin.equals("admin")) {
            Controladora control = new Controladora();
            Empleado unEmpleado;
            control.crearUsuario(nombreUsuario, claveUsuario);
            control.crearEmpleado(nombreEmpleado, apellidoEmpleado, dniEmpleado, paisEmpleado);
            List<Empleado> listaEmpleado = control.buscarEmpleado();
            List<Usuario> listaUsuario = control.buscarUsuario();
            for (int i = 0; i < listaEmpleado.size(); i++) {
                if(nombreEmpleado.equals(listaEmpleado.get(i).getNombre())){
                    unEmpleado = listaEmpleado.get(i);
                    unEmpleado.setUnUsuario(listaUsuario.get(i));
                    control.editarEmpleado(unEmpleado);
                }
            }
            
            response.sendRedirect("index.jsp");
        }
        else{
            response.sendRedirect("registro.jsp");
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
