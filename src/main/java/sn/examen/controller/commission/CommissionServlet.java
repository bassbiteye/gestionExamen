package sn.examen.controller.commission;

import sn.examen.doa.commission.CommissionImpl;
import sn.examen.doa.commission.ICommission;
import sn.examen.doa.commission.CommissionImpl;
import sn.examen.doa.commission.ICommission;
import sn.examen.doa.etablissement.EtablissementImpl;
import sn.examen.doa.etablissement.IEtablissement;
import sn.examen.doa.user.IUser;
import sn.examen.doa.user.UserImpl;
import sn.examen.entites.Commission;
import sn.examen.entites.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "commission", value = "/commission")
public class CommissionServlet extends HttpServlet {
    private ICommission commissiondao;
    private IUser userdao;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        commissiondao = new CommissionImpl();
        userdao = new UserImpl();

        String delete = request.getParameter("delete");
        String update = request.getParameter("update");
        String affecter = request.getParameter("affecter");

        if (delete != null) {
            int deleted = commissiondao.delete(Integer.parseInt(delete));
            request.setAttribute("delete",deleted);
        }
        if (update != null) {
            Commission CommissionUpdate = commissiondao.get(Integer.parseInt(update));
            request.setAttribute("commissionUpdate",CommissionUpdate);

        }
        if (affecter != null) {
            Commission CommissionUpdate = commissiondao.get(Integer.parseInt(affecter));
            List<User> profs = userdao.findByRole("prof");
            request.setAttribute("commissionAffecter",1);
            request.setAttribute("list_profs",profs);

        }
        List<Commission> Commissions= commissiondao.getAll();

        int nombre = 11;
        request.setAttribute("list_commissions",Commissions);
        request.setAttribute("page","page commissions");
        request.setAttribute("nombre",nombre);
        getServletContext().getRequestDispatcher("/WEB-INF/views/commission/commission.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String post = req.getParameter("post");

        if (post.equalsIgnoreCase("2")) {
            int id = Integer.parseInt(req.getParameter("idE"));
            String nom = req.getParameter("nomE");
            Commission et = new Commission(id,nom);
            int okedit =commissiondao.update(et);
            req.setAttribute("okedit", okedit);
            req.setAttribute("nombre",11);

        }
        if (post.equalsIgnoreCase("1")) {
            String nom = req.getParameter("nom");
            Commission e = new Commission(nom);
            int ok = commissiondao.add(e);
            req.setAttribute("message", ok);
            Commission nombre = commissiondao.get(1);
            req.setAttribute("nombre",nombre);

        }
        List<Commission> Commissions= commissiondao.getAll();
        req.setAttribute("list_commissions",Commissions);
        req.setAttribute("page","page commissions");
        getServletContext().getRequestDispatcher("/WEB-INF/views/commission/commission.jsp").forward(req, res);

    }
}
