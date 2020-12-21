
package Persistencia;


import Logica.Empleado;
import Logica.Horario;
import Logica.Juego;
import Logica.Ticket;
import Logica.Usuario;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ControladoraPersistencia {
    
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
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

    public void eliminarJuego(int idJuego) {
        
        try {
            juegoJPA.destroy(idJuego);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminarHorario(int idHorario) {
        
        try {
            horarioJPA.destroy(idHorario);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Empleado> buscarEmpleado() {
         List<Empleado> listaEmpleado = empleadoJPA.findEmpleadoEntities();
         return listaEmpleado;
    }

    public List<Usuario> buscarUsuario() {
        List<Usuario> listaUsuario = usuarioJPA.findUsuarioEntities();
        return listaUsuario;
    }

  
    public void editarEmpleado(Empleado unEmpleado) {
        try {
            empleadoJPA.edit(unEmpleado);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Empleado buscarUnEmpleado(int idBuscado) {
        Empleado unEmpleado = empleadoJPA.findEmpleado(idBuscado);
        return unEmpleado;
    }

    public void eliminarEmpleado(int idEmpleado) {
        try {
            empleadoJPA.destroy(idEmpleado);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminarUsuario(int idUsuario) {
        try {
            usuarioJPA.destroy(idUsuario);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Ticket buscarUnTicket(int idTicket) {
        Ticket unTicket = ticketJPA.findTicket(idTicket);
        return unTicket;
    }

    public void eliminarTicket(int idTicket) {
        try {
            ticketJPA.destroy(idTicket);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }



    
 
    
 
    
}
