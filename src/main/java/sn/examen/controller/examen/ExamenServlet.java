package sn.examen.controller.examen;

import sn.examen.doa.examen.ExamenImpl;
import sn.examen.doa.examen.IExamen;
import sn.examen.entites.Examen;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "examen", value = "/examen")
public class ExamenServlet extends HttpServlet {
    private IExamen examendao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        examendao = new ExamenImpl();

        String delete = request.getParameter("delete");
        String update = request.getParameter("update");

        if (delete != null) {
           int deleted = examendao.delete(Integer.parseInt(delete));
            request.setAttribute("delete",deleted);
        }else
        if (update != null) {
            Examen examenUpdate = examendao.get(Integer.parseInt(update));
            request.setAttribute("examenUpdate",examenUpdate);

        }
        List<Examen> examens= examendao.getAll();

        int nombre = 11;
        request.setAttribute("list_examens",examens);
        request.setAttribute("page","page examens");
        request.setAttribute("nombre",nombre);
        getServletContext().getRequestDispatcher("/WEB-INF/views/examen/examen.jsp").forward(request, response);

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
            Examen et = new Examen();
            int okedit =examendao.update(et);
            req.setAttribute("okedit", okedit);
            req.setAttribute("nombre",11);

        }
        if (post.equalsIgnoreCase("1")) {
            String libelle = req.getParameter("code");
            String date = req.getParameter("ville");
            String anne = req.getParameter("nom");
            Examen e = new Examen();
            int ok = examendao.add(e);
                req.setAttribute("message", ok);
            Examen nombre = examendao.get(1);
            req.setAttribute("nombre",nombre);

        }
        List<Examen> examens= examendao.getAll();
        req.setAttribute("list_examens",examens);
        req.setAttribute("page","page examens");
        getServletContext().getRequestDispatcher("/WEB-INF/views/examen/examen.jsp").forward(req, res);

    }
}
