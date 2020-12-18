
package Logica;

import java.io.Serializable;
import java.sql.Time;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Ticket implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int idTicket;
    @Temporal(TemporalType.TIMESTAMP)
    private Time fechaVenta;
    @OneToOne
    private Juego unJuego;

    public Ticket() {
    }

    public Ticket(int idTicket, Time fechaVenta, Juego unJuego) {
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

    public Time getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Time fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public Juego getUnJuego() {
        return unJuego;
    }

    public void setUnJuego(Juego unJuego) {
        this.unJuego = unJuego;
    }
    
    
}
