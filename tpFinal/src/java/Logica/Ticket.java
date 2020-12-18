
package Logica;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Ticket implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int idTicket;
    @Basic
    private Date fechaVenta;
    @OneToOne
    private Juego unJuego;

    public Ticket() {
    }

    public Ticket(int idTicket,Date fechaVenta, Juego unJuego) {
        this.idTicket = idTicket;
        this.fechaVenta = fechaVenta;
        this.unJuego = unJuego;
    }

    public int getIdTicket() {
        return idTicket;
    }

    public void setIdTicket(int idTicket) {
        this.idTicket = idTicket;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public Juego getUnJuego() {
        return unJuego;
    }

    public void setUnJuego(Juego unJuego) {
        this.unJuego = unJuego;
    }
    
    
}
