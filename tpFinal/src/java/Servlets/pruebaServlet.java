
package Servlets;

import Logica.Controladora;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "pruebaServlet", urlPatterns = {"/pruebaServlet"})
public class pruebaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("user");
        String clave = request.getParameter("clave");
        
        request.getSession().setAttribute("user", nombre);
        request.getSession().setAttribute("clave", clave);
        
        response.sendRedirect("registro.jsp");
        
        Controladora control = new Controladora();
        control.crearUsuario(nombre, clave);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
