package sn.examen.controller;

import sn.examen.doa.user.UserImpl;
import sn.examen.entites.User;

import java.util.List;

public class main {
    public static void main(String[] args){


        UserImpl userImpl = new UserImpl();

           User u1 = new User("Biteye","Bass","admin@admin.com","passer","admin","eedede","edde",1,"771528654");
            userImpl.add(u1);
      // User u =  userImpl.logon("admin@admin.com","password");
        System.out.println(userImpl.count());

        List<User> users = userImpl.getAll();
        for (int i = 0; i < users.size(); i++) {
            System.out.println(users.get(i).getEmail());

        }
    }
}
