/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.StudentDAO;
import entity.Student;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * @author FPTSHOP
 */
@MultipartConfig
@WebServlet(name = "UpdateControl", urlPatterns = {"/update"})
public class UpdateControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("sid"));

        StudentDAO dao = new StudentDAO();
        Student s = dao.getStudentByID(id);
        request.setAttribute("st", s);
        request.getRequestDispatcher("update.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "";

        int sid = Integer.parseInt(request.getParameter("id"));
        String sname = request.getParameter("name");
        int sclassid = Integer.parseInt(request.getParameter("classid"));
        int sage = Integer.parseInt(request.getParameter("age"));
        
        
        Part photo = request.getPart("image"); //Luu thong tin anh
        String path = "image/" + photo.getSubmittedFileName();
        String fileName = request.getServletContext().getRealPath(path);

        StudentDAO dao = new StudentDAO();
        dao.updateStudent(sid, sname, sclassid, sage, path);
        response.sendRedirect("LoadServlet");
        try (PrintWriter out = response.getWriter()) {
            if (sname == null) {
                request.setAttribute("MESSAGE", "Student Name is empty!");
            } else if ( checkAge(sage)) {
                request.setAttribute("MESSAGE"," Age is invalid! ( 18-50 )");
                url = "update.jsp";
            } else {
                url = "LoadServlet";

                return;
            }
            System.out.println("url: " + url);
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);

        }

    }

    //Validate
    boolean duplicationName(String name, List<Student> ls) {
        for (int i = 0; i < ls.size(); i++) {
            if (ls.get(i).getStudentName().equalsIgnoreCase(name)) {
                return true;
            }
        }
        return false;
    }

    boolean checkAge(int age) {
        return age < 18 || age > 50;
    }
}
