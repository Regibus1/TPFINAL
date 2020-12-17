
package Persistencia;

import Logica.Empleado;
import Logica.Usuario;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
    
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
    
    public void crearUsuario(Usuario unUsuario){
        try {
            usuarioJPA.create(unUsuario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void crearEmpleado(Empleado unEmpleado){
            empleadoJPA.create(unEmpleado);
    }
}
