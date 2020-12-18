
package Logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Juego implements Serializable {
   
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int idJuego;
    @Basic
    private String nombreJuego;
    private int capacidadMax;
    private int edadMinima;
    @OneToMany
    private List<Horario> listaHorarios;
    @OneToMany
    private List<Empleado> listaEmpleados;

    public Juego() {
    }

    public Juego(int idJuego, String nombreJuego, int capacidadMax, int edadMinima, List<Horario> listaHorarios, List<Empleado> listaEmpleados) {
        this.idJuego = idJuego;
        this.nombreJuego = nombreJuego;
        this.capacidadMax = capacidadMax;
        this.edadMinima = edadMinima;
        this.listaHorarios = listaHorarios;
        this.listaEmpleados = listaEmpleados;
    }

    public List<Horario> getListaHorarios() {
        return listaHorarios;
    }

    public void setListaHorarios(List<Horario> listaHorarios) {
        this.listaHorarios = listaHorarios;
    }

    public List<Empleado> getListaEmpleados() {
        return listaEmpleados;
    }

    public void setListaEmpleados(List<Empleado> listaEmpleados) {
        this.listaEmpleados = listaEmpleados;
    }



    public int getIdJuego() {
        return idJuego;
    }

    public void setIdJuego(int idJuego) {
        this.idJuego = idJuego;
    }

    public String getNombreJuego() {
        return nombreJuego;
    }

    public void setNombreJuego(String nombreJuego) {
        this.nombreJuego = nombreJuego;
    }

    public int getCapacidadMax() {
        return capacidadMax;
    }

    public void setCapacidadMax(int capacidadMax) {
        this.capacidadMax = capacidadMax;
    }

    public int getEdadMinima() {
        return edadMinima;
    }

    public void setEdadMinima(int edadMinima) {
        this.edadMinima = edadMinima;
    }
    
}
