package net.proselyte.springsecurityapp.model;
import javax.persistence.*;
/**
 * Created by Vova on 30.05.2017.
 */

@Entity
@Table(name = "nomenclatura")
public class Nomenclatura {

    private int id;
    private String nom_gruppa;
    private String nom_elem;

    public Nomenclatura() {}

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    @Column(name = "nom_gruppa")
    public String getNom_gruppa() {
        return nom_gruppa;
    }

    @Column(name = "nom_elem")
    public String getNom_elem() {
        return nom_elem;
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setNom_gruppa(String nom_gruppa) {
        this.nom_gruppa = nom_gruppa;
    }
    public void setNom_elem(String nom_elem) {
        this.nom_elem = nom_elem;
    }

    @Override
    public String toString() {
        return "nomenclatura{" +
                "id=" + id +
                ", nom_gruppa='" + nom_gruppa + '\'' +
                ", nom_elem='" + nom_elem + '\'' +
                '}';
    }
}
