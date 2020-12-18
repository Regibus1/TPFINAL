
package Persistencia;

import Logica.Administrador;
import Logica.Empleado;
import Logica.Usuario;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
    
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
    AdministradorJpaController adminJPA = new AdministradorJpaController();
    JuegoJpaController juegoJPA = new JuegoJpaController();
    HorarioJpaController horarioJPA = new HorarioJpaController();
    TicketJpaController ticketJPA = new TicketJpaController();
    
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

    public void crearAdmin(Administrador unAdmin) {
            adminJPA.create(unAdmin);
    }
    
 
    
}
