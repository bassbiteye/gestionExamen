package sn.examen.controller.user;

import sn.examen.doa.etablissement.EtablissementImpl;
import sn.examen.doa.etablissement.IEtablissement;
import sn.examen.doa.user.IUser;
import sn.examen.doa.user.UserImpl;
import sn.examen.entites.Etablissement;
import sn.examen.entites.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "user", value = "/user")
public class UserServlet extends HttpServlet {
    private IUser userdao;
    private IEtablissement etablissementdao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        etablissementdao = new EtablissementImpl();

        userdao = new UserImpl();

        String delete = request.getParameter("delete");
        String update = request.getParameter("update");
        String etat = request.getParameter("etat");

        if (delete != null) {
           int deleted = userdao.delete(Integer.parseInt(delete));
            request.setAttribute("delete",deleted);
        }
        if (update != null) {
            User userUpdate = userdao.get(Integer.parseInt(update));
            request.setAttribute("userUpdate",userUpdate);

        }
        if (etat != null) {
            int state = userdao.bloquer(Integer.parseInt(etat));
            request.setAttribute("etat",state);

        }
        List<User> users= userdao.getAll();
        User nombre = userdao.get(1);
        request.setAttribute("list_users",users);
        request.setAttribute("page","page users");
        request.setAttribute("nombre",nombre);
        List<Etablissement> etablissements= etablissementdao.getAll();
        request.setAttribute("list_etablissements",etablissements);

        getServletContext().getRequestDispatcher("/WEB-INF/views/user/user.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String post = req.getParameter("post");
        if (post.equalsIgnoreCase("2")) {
            int id = Integer.parseInt(req.getParameter("idE"));
            String prenom = req.getParameter("prenomE");
            String nom = req.getParameter("nomE");
            String email = req.getParameter("emailE");
            String matricule = req.getParameter("matriculeE");
            String telephone = req.getParameter("telephoneE");
            String role = req.getParameter("roleE");
            String adresse = req.getParameter("adresseE");
            String pwd = req.getParameter("passwordE");
            int etablissement_id = Integer.parseInt(req.getParameter("etablissementE"));
            Etablissement etablissement = etablissementdao.get(etablissement_id);
            User u = new User(id,nom, prenom, email, pwd, role, matricule, adresse,telephone,1,etablissement);
            int okedit =userdao.update(u);
            req.setAttribute("okedit", okedit);


        } if (post.equalsIgnoreCase("1")){
            String prenom = req.getParameter("prenom");
            String nom = req.getParameter("nom");
            String email = req.getParameter("email");
            String matricule = req.getParameter("matricule");
            String telephone = req.getParameter("telephone");
            String role = req.getParameter("role");
            String adresse = req.getParameter("adresse");
            String pwd = req.getParameter("password");
            int etablissement_id = Integer.parseInt(req.getParameter("etablissement"));
            Etablissement etablissement = etablissementdao.get(etablissement_id);
            User u = new User(0,nom, prenom, email, pwd, role, matricule, adresse,telephone, 1,etablissement);
            int ok = userdao.add(u);
                req.setAttribute("message", ok);

        }
            List<User> users= userdao.getAll();
            User nombre = userdao.get(1);
            req.setAttribute("list_users",users);
            req.setAttribute("page","page users");
            req.setAttribute("nombre",nombre);
                getServletContext().getRequestDispatcher("/WEB-INF/views/user/user.jsp").forward(req, res);


    }
}
