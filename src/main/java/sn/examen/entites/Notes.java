package sn.examen.entites;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Notes implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60)
    private String note;
    @OneToMany(mappedBy = "notes")
    List<Eleve> eleves = new ArrayList<Eleve>();
    @OneToMany(mappedBy = "notes")
    List<Epreuve> epreuves = new ArrayList<Epreuve>();

    public Notes() {
    }

    public Notes(int id, String note, List<Eleve> eleves, List<Epreuve> epreuves) {
        this.id = id;
        this.note = note;
        this.eleves = eleves;
        this.epreuves = epreuves;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public List<Eleve> getEleves() {
        return eleves;
    }

    public void setEleves(List<Eleve> eleves) {
        this.eleves = eleves;
    }

    public List<Epreuve> getEpreuves() {
        return epreuves;
    }

    public void setEpreuves(List<Epreuve> epreuves) {
        this.epreuves = epreuves;
    }
}
