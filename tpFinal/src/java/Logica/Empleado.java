
package Logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Empleado implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int idEmpleado;
    @Basic
    private String nombre;
    private String apellido;
    private String dni;
    private String pais;
    @OneToOne
    private Usuario unUsuario;

    public Empleado() {
    }

    public Empleado(int idEmpleado, String nombre, String apellido, String dni, String pais, Usuario unUsuario) {
        this.idEmpleado = idEmpleado;
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
        this.pais = pais;
        this.unUsuario = unUsuario;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public Usuario getUnUsuario() {
        return unUsuario;
    }

    public void setUnUsuario(Usuario unUsuario) {
        this.unUsuario = unUsuario;
    }

    public String toString(Empleado unEmpleado) {
       Controladora control = new Controladora();
        String stringEmpleado = "Nombre: " + unEmpleado.getNombre() + "  | Apellido: " + unEmpleado.getApellido() +
                "  | Dni: " + unEmpleado.getDni() + "  | Pais de Nacimiento: " + unEmpleado.getPais() ;
        return stringEmpleado;
    }
}
