package sn.examen.doa.user;


import sn.examen.entites.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class UserImpl implements IUser {
    private EntityManager em;

    public UserImpl() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("gestionexamen");
        em=emf.createEntityManager();
    }
    @Override
    public int add(User user) {
        try {
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public int update(User user) {
        try {
            em.getTransaction().begin();
            em.merge(user);
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
            em.remove(em.find(User.class,id));
            em.getTransaction().commit();
            return 1;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public User get(int id) {
        return em.find(User.class,id);
    }

    @Override
    public int bloquer(int id) {
        int ok =1;
        User u = em.find(User.class,id);
        if (u.getEtat()==1){
            u.setEtat(0);
            ok=2;
        }else{
            u.setEtat(1);
        }
        try {
            em.getTransaction().begin();
            em.merge(u);
            em.getTransaction().commit();
            return ok;

        }catch (Exception e){
            e.printStackTrace();
            return 0;

        }
    }

    @Override
    public List<User> getAll() {
        try {
           return em.createQuery("SELECT U FROM User u").getResultList();
        }catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }

    @Override
    public List<User> findByRole(String role) {
        try {
            return em.createQuery("SELECT U FROM User u WHERE u.role LIKE :role ")
                    .setParameter("role",role)
                    .getResultList();
        }catch (Exception e){
            e.printStackTrace();
            return null;

        }
    }

    @Override
    public User logon(String email, String password) {
        try {
            return (User) em.createQuery("SELECT U FROM User u WHERE u.email LIKE :em And u.password LIKE :pass")
                            .setParameter("em",email)
                            .setParameter("pass",password)
                            .getSingleResult();
        }catch (Exception e){
            e.printStackTrace();
            return null;

        }
       /* try {
            String sql = "SELECT U.* FROM USER AS U WHERE U.EMAIL = ? AND U.PASSWORD =?";

            Query query = em.createNativeQuery(sql, User.class);
            query.setParameter(1, email);
            query.setParameter(2, password);
            User user = (User) query.getSingleResult();
            return user;

        } catch (NoResultException e) {
            e.printStackTrace();

            return null;
        }*/
    }

    @Override
    public Object count() {

        int rowCnt= (Integer) em.createQuery("SELECT count(User.id) FROM User").getSingleResult();

    return rowCnt;


    }
}
