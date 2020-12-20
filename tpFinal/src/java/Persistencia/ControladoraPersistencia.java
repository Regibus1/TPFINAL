
package Persistencia;

import Logica.Administrador;
import Logica.Empleado;
import Logica.Horario;
import Logica.Juego;
import Logica.Usuario;
import java.util.ArrayList;
import java.util.List;
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

    public void crearJuego(Juego unJuego) {
            juegoJPA.create(unJuego);
    }
    
    public void crearHorario(Horario unHorario){
            horarioJPA.create(unHorario);
    }

   

    public void editarJuego(Juego unJuego) {
        try {
            juegoJPA.edit(unJuego);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void editarHorario(Horario unHorario) {
        try {
            horarioJPA.edit(unHorario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Horario> buscarHorario() {
        List<Horario> listaHorario = horarioJPA.findHorarioEntities();
        return listaHorario;
    }

    public List<Juego> buscarJuego() {
         List<Juego> listaJuego = juegoJPA.findJuegoEntities();
         return listaJuego;
    }

    public Juego buscarUnJuego(int idBusqueda) {
         Juego unJuego = juegoJPA.findJuego(idBusqueda);
         return unJuego;
    }

    
 
    
 
    
}
