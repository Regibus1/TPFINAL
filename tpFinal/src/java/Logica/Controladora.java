
package Logica;

import Persistencia.ControladoraPersistencia;
import java.sql.Time;
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
    
    public void crearAdmin(Administrador unAdmin){
        
        controlPersistencia.crearAdmin(unAdmin);
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
         unHorario.setHoraApertura(Time.valueOf(horaApertura));
         unHorario.setHoraCierre(Time.valueOf(horaCierre));
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



 
}
