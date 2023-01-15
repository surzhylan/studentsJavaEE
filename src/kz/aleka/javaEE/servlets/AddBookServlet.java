package kz.aleka.javaEE.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.aleka.javaEE.db.DBManager;
import kz.aleka.javaEE.model.Book;

import java.io.IOException;
@WebServlet(value = "/addbook")
public class AddBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/addBook.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/addbook?error";

        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String author = req.getParameter("author");

        Book book = new Book();
        book.setName(name);
        book.setPrice(price);
        book.setAuthor(author);

        if(DBManager.addBook(book)){
            redirect = "/addbook?success";
        }
        resp.sendRedirect(redirect);
    }
}
