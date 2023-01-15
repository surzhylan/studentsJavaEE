package kz.aleka.javaEE.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.aleka.javaEE.db.DBManager;
import kz.aleka.javaEE.model.Book;

import java.io.IOException;
@WebServlet(value = "/deletebook")
public class DeleteBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/deletebook?error";

        Long id = Long.valueOf(req.getParameter("id"));
        Book book = DBManager.getBook(id);

        if(DBManager.deleteBook(id)){
            redirect = "/home";
        }
        resp.sendRedirect(redirect);
    }
}
