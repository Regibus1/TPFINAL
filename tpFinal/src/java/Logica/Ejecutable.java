
package Logica;


public class Ejecutable {

    public static void main(String[] args) {
        Controladora control = new Controladora();
        
        Administrador elAdmin = new Administrador();
        control.crearAdmin(elAdmin);
    }
    
}
