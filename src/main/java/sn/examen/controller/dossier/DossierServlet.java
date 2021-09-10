package sn.examen.controller.dossier;

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

@WebServlet(name = "dossier", value = "/")
public class DossierServlet extends HttpServlet {
    private IExamen examendao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        examendao = new ExamenImpl();
        List<Examen> examens= examendao.getAll();
        req.setAttribute("c",examens);
        req.setAttribute("test",12554);
        getServletContext().getRequestDispatcher("/").forward(req, res);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
