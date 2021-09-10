package sn.examen.entites;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Etablissement implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60,unique = true)
    private String code;
    @Column(length = 60)
    private String nom;
    @Column(length = 60)
    private String adresse;
    @Column(length = 60)
    private String ville;
    @OneToMany(mappedBy = "etablissement")
    List<Eleve> eleves = new ArrayList<Eleve>();
    @OneToMany(mappedBy = "etablissement")
    List<User> users = new ArrayList<User>();

    public Etablissement() {
    }

    public Etablissement(String code, String nom, String adresse, String ville) {
        this.code = code;
        this.nom = nom;
        this.adresse = adresse;
        this.ville = ville;
    }

    public Etablissement(int id, String code, String nom, String adresse, String ville) {
        this.id = id;
        this.code = code;
        this.nom = nom;
        this.adresse = adresse;
        this.ville = ville;
    }

    public Etablissement(int id, String code, String nom, String adresse, String ville, List<Eleve> eleves, List<User> users) {
        this.id = id;
        this.code = code;
        this.nom = nom;
        this.adresse = adresse;
        this.ville = ville;
        this.eleves = eleves;
        this.users = users;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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

    public List<Eleve> getEleves() {
        return eleves;
    }

    public void setEleves(List<Eleve> eleves) {
        this.eleves = eleves;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return  nom ;
    }
}
