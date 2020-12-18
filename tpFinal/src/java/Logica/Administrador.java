package Logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Administrador implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private int idAdmin;
    @Basic
    private String userAdmin;
    private String passwordAdmin;

    public Administrador() {
       userAdmin = "admin";
       passwordAdmin = "admin";
        
    }
    
    public Administrador(int idAdmin, String userAdmin, String passwordAdmin) {
        this.idAdmin = idAdmin;
        this.userAdmin = userAdmin;
        this.passwordAdmin = passwordAdmin;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getUserAdmin() {
        return userAdmin;
    }

    public void setUserAdmin(String userAdmin) {
        this.userAdmin = userAdmin;
    }

    public String getPasswordAdmin() {
        return passwordAdmin;
    }

    public void setPasswordAdmin(String passwordAdmin) {
        this.passwordAdmin = passwordAdmin;
    }
    
    
}
