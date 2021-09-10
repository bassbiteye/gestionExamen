package sn.examen.doa.examen;


import sn.examen.entites.Examen;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class ExamenImpl implements IExamen {
    private EntityManager em;

    public ExamenImpl() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("gestionexamen");
        em=emf.createEntityManager();
    }
    @Override
    public int add(Examen examen) {
        try {
            em.getTransaction().begin();
            em.persist(examen);
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public int update(Examen examen) {
        try {
            em.getTransaction().begin();
            em.merge(examen);
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

            em.remove(em.find(Examen.class,id));
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public Examen get(int id) {
        return em.find(Examen.class,id);
    }

    @Override
    public List<Examen> getAll() {
        try {
           return em.createQuery("SELECT e FROM Examen e").getResultList();
        }catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }



    @Override
    public int count() {

        int rowCnt= (Integer) em.createQuery("SELECT count(e.id) FROM Examen e").getSingleResult();

    return rowCnt;


    }
}
