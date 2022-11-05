package control;

import dao.admin.AccountDAO;

import javax.mail.*;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.UUID;
@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
//                    return new PasswordAuthentication("trandinhkhanhtoan31@gmail","pmjcbetzmybduopa");

    public boolean sendMail(String username, String email, String hash) throws InterruptedException {
        email = "tranquangminh116@gmail.com";
        String pass = "Matkhaulagivaytroi1";
        try {
            Properties pr = System.getProperties();
            pr.setProperty("mail.smtp.host", "localhost");
            pr.setProperty("mail.smtp.post", "25");
//            pr.setProperty("mail.smtp.user", email);
//            pr.setProperty("mail.smtp.password", pass);
//            pr.setProperty("mail.smtp.auth", "true");
//            pr.setProperty("mail.smtp.starttls.enable", "true");
            String finalEmail = email;
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(finalEmail,pass);
                }
            });
            session.setDebug(true);
            Message message = new MimeMessage(session);
            message.setRecipient(Message.RecipientType.TO, new InternetAddress("tranquangminh050802@gmail.com"));
            message.setFrom(new InternetAddress("tranquangminh116@gmail.com"));
            message.setSubject("test");
            message.setText("111111111111111111111111");
            Transport.send(message);
        } catch (Exception e){
            return false;
        }
        return true;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "");
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean checkUsername = false;
        String username = request.getParameter("username");
        String fullname = request.getParameter("fullname");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
        String validationCheck = request.getParameter("validationCheck");
        String hash = UUID.randomUUID().toString();
        if (validationCheck.equals("on")) {
            if (password1.equals(password2)) {
                checkUsername = new AccountDAO().checkUsername(username);
                if (checkUsername) {
                    if (new AccountDAO().checkEmail(email)) {
                        boolean checkCreate = new AccountDAO().addUser(username, password1, fullname, email, tel, hash);
                        boolean checkSendmail = false;
                        try {
                            checkSendmail = sendMail(username, email, hash);
                        } catch (InterruptedException e) {
                            throw new RuntimeException(e);
                        }
                        if (checkCreate && checkSendmail) {
                            request.setAttribute("message", "<div class=\"alert alert-success\" role=\"alert\">Đăng kí tài khoản thành công</div>");
                        } else {
                            request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Có lỗi gì đó xảy ra, vui lòng liên hệ admin!</div>");
                        }
                    } else {
                        request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Email đã tồn tại!</div>");
                    }
                } else {
                    request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Username đã tồn tại!</div>");
                }
            } else {
                request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Mật khẩu không trùng!</div>");
            }
        } else {
            request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Bạn chưa đồng ý điều khoản</div>");
        }
        request.getRequestDispatcher("register.jsp").forward(request, response);
//        response.sendRedirect("register.jsp");
    }

    public static void main(String[] args) throws InterruptedException {
        new RegisterServlet().sendMail("minh", "tranquangminh116@gmail.com", "hashcc");
    }
}
