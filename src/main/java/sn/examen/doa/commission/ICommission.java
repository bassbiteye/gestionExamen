package sn.examen.doa.commission;


import sn.examen.entites.Commission;

import java.util.List;

public interface ICommission {
    public int add(Commission commission);
    public int update(Commission commission);
    public int delete(int id);
    public Commission get(int id);
    public List<Commission> getAll();
    public int count();

}
