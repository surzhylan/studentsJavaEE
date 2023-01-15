package kz.aleka.javaEE.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.aleka.javaEE.db.DBManager;
import kz.aleka.javaEE.model.Book;

import java.io.IOException;
@WebServlet(value = "/updatebook")
public class UpdateBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/updatebook?error";

        Long id = Long.valueOf(req.getParameter("id"));
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String author = req.getParameter("author");

        Book book = new Book();
        book.setId(id);
        book.setName(name);
        book.setPrice(price);
        book.setAuthor(author);

        if(DBManager.updateBook(book)){
            redirect = "/home";
        }
        resp.sendRedirect(redirect);
    }
}
