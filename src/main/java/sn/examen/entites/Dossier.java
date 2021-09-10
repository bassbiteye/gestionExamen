package sn.examen.entites;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Dossier implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60)
    private String nom;
    @Column(length = 60)
    private String etat;
    @Column(length = 60)
    private int numero;
    @ManyToOne
    private Examen examen ;
    @ManyToOne( cascade = CascadeType.PERSIST)
    private Eleve eleve = new Eleve();

    public Dossier() {
    }

    public Dossier(int id, String nom, String etat, int numero, Examen examen, Eleve eleve) {
        this.id = id;
        this.nom = nom;
        this.etat = etat;
        this.numero = numero;
        this.examen = examen;
        this.eleve = eleve;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Examen getExamen() {
        return examen;
    }

    public void setExamen(Examen examen) {
        this.examen = examen;
    }

    public Eleve getEleve() {
        return eleve;
    }

    public void setEleve(Eleve eleve) {
        this.eleve = eleve;
    }
}
