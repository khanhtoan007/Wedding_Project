package control;

<<<<<<< HEAD

=======
import dao.admin.AccountDAO;
import model.User;
>>>>>>> 62b3187c2e75b04e0ed1180d7d219dc653550fa9
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.util.List;


@WebServlet(name = "LoadServlet", urlPatterns = {"/LoadServlet"})
public class LoadServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        AccountDAO dao = new AccountDAO();
        List<User> list = dao.getAccountList();

<<<<<<< HEAD
        request.setAttribute("listS", list);
        request.getRequestDispatcher("listStudent.jsp").forward(request, response);
=======
        request.setAttribute("list", list);
        request.getRequestDispatcher("adminManageCustomer.jsp").forward(request, response);

>>>>>>> 62b3187c2e75b04e0ed1180d7d219dc653550fa9
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
