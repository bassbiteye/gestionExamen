package sn.examen.entites;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Commission {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60)
    private String nomC;
    @ManyToMany
    List<User> users = new ArrayList<User>();
    @OneToOne(mappedBy = "commission")
    private Epreuve epreuve ;

    public Commission() {
    }

    public Commission(String nomC) {
        this.nomC = nomC;
    }

    public Commission(int id,String nomC) {
        this.nomC = nomC;
        this.id = id;
    }

    public Commission(int id, String nomC, List<User> users, Epreuve epreuve) {
        this.id = id;
        this.nomC = nomC;
        this.users = users;
        this.epreuve = epreuve;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomC() {
        return nomC;
    }

    public void setNomC(String nomC) {
        this.nomC = nomC;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public Epreuve getEpreuve() {
        return epreuve;
    }

    public void setEpreuve(Epreuve epreuve) {
        this.epreuve = epreuve;
    }
}
