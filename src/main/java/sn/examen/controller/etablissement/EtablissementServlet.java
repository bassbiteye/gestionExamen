package sn.examen.controller.etablissement;

import sn.examen.doa.etablissement.EtablissementImpl;
import sn.examen.doa.etablissement.IEtablissement;
import sn.examen.entites.Etablissement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "etablissement", value = "/etablissement")
public class EtablissementServlet extends HttpServlet {
    private IEtablissement etablissementdao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        etablissementdao = new EtablissementImpl();

        String delete = request.getParameter("delete");
        String update = request.getParameter("update");

        if (delete != null) {
           int deleted = etablissementdao.delete(Integer.parseInt(delete));
            request.setAttribute("delete",deleted);
        }else
        if (update != null) {
            Etablissement etablissementUpdate = etablissementdao.get(Integer.parseInt(update));
            request.setAttribute("etablissementUpdate",etablissementUpdate);

        }
        List<Etablissement> etablissements= etablissementdao.getAll();

        int nombre = 11;
        request.setAttribute("list_etablissements",etablissements);
        request.setAttribute("page","page etablissements");
        request.setAttribute("nombre",nombre);
        getServletContext().getRequestDispatcher("/WEB-INF/views/etablissement/etablissement.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String post = req.getParameter("post");

        if (post.equalsIgnoreCase("2")) {
            int id = Integer.parseInt(req.getParameter("idE"));
            String code = req.getParameter("codeE");
            String ville = req.getParameter("villeE");
            String nom = req.getParameter("nomE");
            String adresse = req.getParameter("adresseE");
            Etablissement et = new Etablissement(id,code,nom,adresse,ville);
            int okedit =etablissementdao.update(et);
            req.setAttribute("okedit", okedit);
            req.setAttribute("nombre",11);

        }
        if (post.equalsIgnoreCase("1")) {
            String code = req.getParameter("code");
            String ville = req.getParameter("ville");
            String nom = req.getParameter("nom");
            String adresse = req.getParameter("adresse");
            Etablissement e = new Etablissement(code,nom,adresse,ville);
            int ok = etablissementdao.add(e);
                req.setAttribute("message", ok);
            Etablissement nombre = etablissementdao.get(1);
            req.setAttribute("nombre",nombre);

        }
        List<Etablissement> etablissements= etablissementdao.getAll();
        req.setAttribute("list_etablissements",etablissements);
        req.setAttribute("page","page etablissements");
        getServletContext().getRequestDispatcher("/WEB-INF/views/etablissement/etablissement.jsp").forward(req, res);

    }
}
