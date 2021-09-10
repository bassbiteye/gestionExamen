package sn.examen.entites;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Epreuve implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(length = 60)
    private int coef;
    @ManyToOne
    private Examen examen  = new Examen();
    @ManyToOne
    private Notes notes = new Notes();
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "commission_id", referencedColumnName = "id")
    private Commission commission ;

    public Epreuve() {
    }

    public Epreuve(int id, int coef, Examen examen, Notes notes, Commission commission) {
        this.id = id;
        this.coef = coef;
        this.examen = examen;
        this.notes = notes;
        this.commission = commission;
    }
}
