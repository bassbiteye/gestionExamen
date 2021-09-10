package sn.examen.doa.examen;


import sn.examen.entites.Examen;

import java.util.List;

public interface IExamen {
    public int add(Examen examen);
    public int update(Examen examen);
    public int delete(int id);
    public Examen get(int id);
    public List<Examen> getAll();
    public int count();

}
