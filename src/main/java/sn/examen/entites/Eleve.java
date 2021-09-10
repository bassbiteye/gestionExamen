package sn.examen.entites;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Eleve implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60)
    private String matricule;
    @Column(length = 60)
    private String nom;
    @Column(length = 60)
    private String adresse;
    @Column(length = 60)
    private String ville;
    @Column(length = 60)
    private String mail;
    @ManyToOne
    private Etablissement etablissement = new Etablissement();
    @OneToMany(mappedBy = "eleve")
    List<Dossier> dossiers = new ArrayList<Dossier>();
    @ManyToOne
    private Notes notes ;

    public Eleve() {
    }

    public Eleve(int id, String matricule, String nom, String adresse, String ville, String mail, Etablissement etablissement, Dossier dossier, Notes notes) {
        this.id = id;
        this.matricule = matricule;
        this.nom = nom;
        this.adresse = adresse;
        this.ville = ville;
        this.mail = mail;
        this.etablissement = etablissement;
        this.notes = notes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Etablissement getEtablissement() {
        return etablissement;
    }

    public void setEtablissement(Etablissement etablissement) {
        this.etablissement = etablissement;
    }


    public Notes getNotes() {
        return notes;
    }

    public void setNotes(Notes notes) {
        this.notes = notes;
    }
}
