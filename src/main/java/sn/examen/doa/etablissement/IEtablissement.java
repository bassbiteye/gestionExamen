package sn.examen.doa.etablissement;


import sn.examen.entites.Etablissement;

import java.util.List;

public interface IEtablissement {
    public int add(Etablissement etablissement);
    public int update(Etablissement etablissement);
    public int delete(int id);
    public Etablissement get(int id);
    public List<Etablissement> getAll();
    public int count();

}
