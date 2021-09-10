package sn.examen.controller;

import sn.examen.doa.user.IUser;
import sn.examen.doa.user.UserImpl;
import sn.examen.entites.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    public static final  long serialVersionUID =1L;
    private IUser userdao;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String log = req.getParameter("email");
        String pwd = req.getParameter("password");

        userdao = new UserImpl();

        User u =  userdao.logon(log,pwd);
        if(u!= null){
            if(u.getEtat() ==0){
                req.setAttribute("error","votre compte est bloqué");
                getServletContext().getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req, res);

            }
            HttpSession session = req.getSession();
            session.setAttribute("User_session",u);
            getServletContext().getRequestDispatcher("/WEB-INF/views/dashboard/dashboard.jsp").forward(req,res);

        }else{
            req.setAttribute("error","login ou password incorrecte");
            getServletContext().getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req, res);
        }
    }
}
