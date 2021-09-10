package sn.examen.entites;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


@Entity
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60)
    private String nom;
    @Column(length = 60)
    private String prenom;
    @Column(length = 60)
    private String email;
    @Column(length = 60)
    private String password;
    @Column(length = 60)
    private String role;
    @Column(length = 60,unique = true)
    private String matricule;
    @Column(length = 60,nullable = true)
    private String adresse;
    @Column(length = 60,unique = true,nullable = true)
    private String telephone;
    @Column(length = 2)
    private int etat;
    @ManyToOne()
    private Etablissement etablissement = new Etablissement();
    @ManyToMany(mappedBy = "users")
    List<Commission> commissions = new ArrayList<Commission>();
    public User() {
    }

    public User(int id, String nom, String prenom, String email, String password, String role, String matricule, String adresse, String telephone, int etat) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.password = password;
        this.role = role;
        this.matricule = matricule;
        this.adresse = adresse;
        this.telephone = telephone;
        this.etat = etat;
    }

    public User(String nom, String prenom, String email, String password, String role, String matricule, String adresse, int etat, String telephone) {
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.password = password;
        this.role = role;
        this.matricule = matricule;
        this.adresse = adresse;
        this.etat = etat;
        this.telephone = telephone;
    }

    public User(int id, String nom, String prenom, String email, String password, String role, String matricule, String adresse, String telephone, int etat, Etablissement etablissement) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.password = password;
        this.role = role;
        this.matricule = matricule;
        this.adresse = adresse;
        this.telephone = telephone;
        this.etat = etat;
        this.etablissement = etablissement;
    }

    public User(String nom, String prenom, String email, String pwd, String role, String matricule, String adresse, int i, String telephone, Etablissement etablissement) {
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

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getEtat() {
        return etat;
    }

    public void setEtat(int etat) {
        this.etat = etat;
    }

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public Etablissement getEtablissement() {
        return etablissement;
    }

    public void setEtablissement(Etablissement etablissement) {
        this.etablissement = etablissement;
    }
}
