
package Logica;

import Persistencia.ControladoraPersistencia;
import java.util.List;


public class Controladora {
    
    ControladoraPersistencia controlPersistencia = new ControladoraPersistencia();
    
    public void crearUsuario(String user, String clave){
        
        Usuario unUsuario = new Usuario();
        unUsuario.setNombreUsuario(user);
        unUsuario.setClaveUsuario(clave);
        controlPersistencia.crearUsuario(unUsuario);
    }
    
    public void crearEmpleado(String nombre, String apellido, String dni, String pais){
        
        Empleado unEmpleado = new Empleado();
        unEmpleado.setNombre(nombre);
        unEmpleado.setApellido(apellido);
        unEmpleado.setDni(dni);
        unEmpleado.setPais(pais);
        controlPersistencia.crearEmpleado(unEmpleado);
    }
 

    public void crearJuego(String nombreJuego, int edadMinima, int capacidadMax) {
         Juego unJuego = new Juego();
         unJuego.setNombreJuego(nombreJuego);
         unJuego.setEdadMinima(edadMinima);
         unJuego.setCapacidadMax(capacidadMax);
         controlPersistencia.crearJuego(unJuego);
    }

    public void crearHorario(String horaApertura, String horaCierre) {
         Horario unHorario = new Horario();
         unHorario.setHoraApertura(horaApertura);
         unHorario.setHoraCierre(horaCierre);
         controlPersistencia.crearHorario(unHorario);
    }

  

    public void editarJuego(Juego unJuego) {
        controlPersistencia.editarJuego(unJuego);
    }

    public void editarHorario(Horario unHorario) {
        controlPersistencia.editarHorario(unHorario);
    }

    public List<Horario> buscarHorario() {
        List<Horario> listaHorario = controlPersistencia.buscarHorario();
        return listaHorario;
    }

    public List<Juego> buscarJuego() {
        List<Juego> listaJuego = controlPersistencia.buscarJuego();
        return listaJuego;
    }

    public Juego buscarUnJuego(int idBusqueda) {
       Juego unJuego = controlPersistencia.buscarUnJuego(idBusqueda);
        return unJuego;
    }

    public void eliminarJuego(int idJuego) {
            controlPersistencia.eliminarJuego(idJuego);
    }

    public void eliminarHorario(int idHorario) {
            controlPersistencia.eliminarHorario(idHorario);
    }

    public List<Empleado> buscarEmpleado() {
         List<Empleado> listaEmpleado = controlPersistencia.buscarEmpleado();
         return listaEmpleado;
    }

    public List<Usuario> buscarUsuario() {
         List<Usuario> listaUsuario = controlPersistencia.buscarUsuario();
         return listaUsuario;
    }

    public void editarEmpleado(Empleado unEmpleado) {
         controlPersistencia.editarEmpleado(unEmpleado);
    }

    public Empleado buscarUnEmpleado(int idBuscado) {
        Empleado unEmpleado = controlPersistencia.buscarUnEmpleado(idBuscado);
        return unEmpleado;
    }

    public void eliminarEmpleado(int idEmpleado) {
        controlPersistencia.eliminarEmpleado(idEmpleado);
    }

    public void eliminarUsuario(int idUsuario) {
         controlPersistencia.eliminarUsuario(idUsuario);
    }

    public boolean comprobarIngreso(String nombreUsuario, String claveUsuario) {
        boolean siONo = false;
        List<Usuario> listaUsuario = buscarUsuario();
            for (Usuario unUsuario : listaUsuario) {
                if(unUsuario.getNombreUsuario().equals(nombreUsuario) && (unUsuario.getClaveUsuario().equals(claveUsuario))){
                    siONo = true;
                    return siONo;
                }
        }
        return siONo;
    }

    public Ticket buscarUnTicket(int idTicket) {
        Ticket unTicket =controlPersistencia.buscarUnTicket(idTicket);
        return unTicket;
    }

    public void eliminarTicket(int idTicket) {
        controlPersistencia.eliminarTicket(idTicket);
    }

 



 
}
