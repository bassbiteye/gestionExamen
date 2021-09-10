package sn.examen.doa.user;


import sn.examen.entites.User;

import java.util.List;

public interface IUser {
    public int add(User user);
    public int update(User user);
    public int delete(int id);
    public User get(int id);
    public int bloquer(int id);
    public List<User> getAll();
    public List<User> findByRole(String role);
    public User logon(String email,String password);
    public Object count();

}
