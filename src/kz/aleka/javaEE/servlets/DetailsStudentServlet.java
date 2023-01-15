package kz.aleka.javaEE.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.aleka.javaEE.db.DBManager2;
import kz.aleka.javaEE.model.Student;

import java.io.IOException;
@WebServlet(value = "/studentdetails")
public class DetailsStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        Long studentId = null;
        try {
            studentId = Long.parseLong(id);
        } catch (Exception e) {
        }
        Student student = DBManager2.getStudent(studentId);
        req.setAttribute("student",student);
        req.getRequestDispatcher("detailsStudent.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
