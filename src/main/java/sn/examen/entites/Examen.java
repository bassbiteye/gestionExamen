package sn.examen.entites;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
public class Examen implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60)
    private String libelle;
    @Temporal(TemporalType.DATE)
    private Date date;
    @Column(length = 60,nullable = true)
    private String annee;
    @OneToMany(mappedBy = "examen")
    List<Dossier> dossiers = new ArrayList<Dossier>();
    @OneToMany(mappedBy = "examen")
    List<Epreuve> epreuves = new ArrayList<Epreuve>();

    public Examen() {
    }

    public Examen(int id, String libelle, List<Dossier> dossiers, List<Epreuve> epreuves) {
        this.id = id;
        this.libelle = libelle;
        this.dossiers = dossiers;
        this.epreuves = epreuves;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public List<Dossier> getDossiers() {
        return dossiers;
    }

    public void setDossiers(List<Dossier> dossiers) {
        this.dossiers = dossiers;
    }

    public List<Epreuve> getEpreuves() {
        return epreuves;
    }

    public void setEpreuves(List<Epreuve> epreuves) {
        this.epreuves = epreuves;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAnnee() {
        return annee;
    }

    public void setAnnee(String annee) {
        this.annee = annee;
    }
}
