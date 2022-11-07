package control.admin.user;
import dao.admin.AccountDAO;
import model.User;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.util.List;
import java.util.UUID;


@WebServlet(name = "LoadServlet", urlPatterns = {"/LoadServlet"})
public class LoadServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        AccountDAO dao = new AccountDAO();
        List<User> list = dao.getAccountList();
//        System.out.println(list);
        request.setAttribute("list", list);
        request.getRequestDispatcher("adminManageCustomer.jsp").forward(request, response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String hash = UUID.randomUUID().toString();

        AccountDAO dao = new AccountDAO();
        dao.addUser(username,password,fullname, email, tel, hash);
        request.getRequestDispatcher("LoadServlet").forward(request,response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>



}
