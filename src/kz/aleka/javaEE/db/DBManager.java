package kz.aleka.javaEE.db;

import kz.aleka.javaEE.model.Book;

import java.sql.*;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;
    static {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/room",
                    "postgres","0805");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean addBook(Book book){
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into books(name, price, author) values (?,?,?)");
            stmt.setString(1,book.getName());
            stmt.setString(2,book.getPrice());
            stmt.setString(3,book.getAuthor());
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rows>0;
    }

    public static ArrayList<Book> getAllBooks(){
        ArrayList<Book> books = new ArrayList<>();
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from books");
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()){
                Book book = new Book();
                book.setId(resultSet.getLong("id"));
                book.setName(resultSet.getString("name"));
                book.setPrice(resultSet.getString("price"));
                book.setAuthor(resultSet.getString("author"));
                books.add(book);
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return books;
    }

    public static Book getBook(Long id){
        Book book = null;
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from books where id = ?");
            stmt.setLong(1,id);
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()){
                book = new Book();
                book.setId(resultSet.getLong("id"));
                book.setName(resultSet.getString("name"));
                book.setPrice(resultSet.getString("price"));
                book.setAuthor(resultSet.getString("author"));
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return book;
    }

    public static boolean updateBook(Book book){
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("update books set name = ?, price = ?, author = ? " +
                    "where id = ?");
            stmt.setString(1, book.getName());
            stmt.setString(2, book.getPrice());
            stmt.setString(3, book.getAuthor());
            stmt.setLong(4, book.getId());
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rows>0;
    }

    public static boolean deleteBook(Long id){
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("delete from books where id = ?");
            stmt.setLong(1,id);
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rows>0;
    }

}
