package kz.aleka.javaEE.model;

public class Book {
    private Long id;
    private String name;
    private String price;
    private String author;

    public Book() {
    }

    public Book(Long id, String name, String price, String author) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.author = author;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
