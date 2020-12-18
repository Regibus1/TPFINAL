
package Logica;

import Persistencia.ControladoraPersistencia;


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
}
