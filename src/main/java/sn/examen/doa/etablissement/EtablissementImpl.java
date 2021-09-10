package sn.examen.doa.etablissement;


import sn.examen.entites.Etablissement;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class EtablissementImpl implements IEtablissement {
    private EntityManager em;

    public EtablissementImpl() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("gestionexamen");
        em=emf.createEntityManager();
    }
    @Override
    public int add(Etablissement etablissement) {
        try {
            em.getTransaction().begin();
            em.persist(etablissement);
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public int update(Etablissement etablissement) {
        try {
            em.getTransaction().begin();
            em.merge(etablissement);
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

            em.remove(em.find(Etablissement.class,id));
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public Etablissement get(int id) {
        return em.find(Etablissement.class,id);
    }

    @Override
    public List<Etablissement> getAll() {
        try {
           return em.createQuery("SELECT e FROM Etablissement e").getResultList();
        }catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }



    @Override
    public int count() {

        int rowCnt= (Integer) em.createQuery("SELECT count(e.id) FROM Etablissement e").getSingleResult();

    return rowCnt;


    }
}
