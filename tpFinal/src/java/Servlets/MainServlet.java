
package Servlets;

import Logica.Controladora;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "MainServlet", urlPatterns = {"/MainServlet"})
public class MainServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


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
        
        
        Controladora control = new Controladora();
        control.crearUsuario(nombreUsuario, claveUsuario);
        control.crearEmpleado(nombreEmpleado, apellidoEmpleado, dniEmpleado, paisEmpleado);
        response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
