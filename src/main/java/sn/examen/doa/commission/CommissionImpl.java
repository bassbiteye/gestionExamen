package sn.examen.doa.commission;


import sn.examen.entites.Commission;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class CommissionImpl implements ICommission {
    private EntityManager em;

    public CommissionImpl() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("gestionexamen");
        em=emf.createEntityManager();
    }
    @Override
    public int add(Commission commission) {
        try {
            em.getTransaction().begin();
            em.persist(commission);
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public int update(Commission commission) {
        try {
            em.getTransaction().begin();
            em.merge(commission);
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public int delete(int id) {
        try {
            em.getTransaction().begin();

            em.remove(em.find(Commission.class,id));
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public Commission get(int id) {
        return em.find(Commission.class,id);
    }

    @Override
    public List<Commission> getAll() {
        try {
           return em.createQuery("SELECT c FROM Commission c").getResultList();
        }catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }



    @Override
    public int count() {

        int rowCnt= (Integer) em.createQuery("SELECT count(c.id) FROM Commission c").getSingleResult();

    return rowCnt;


    }
}
