<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.aleka.javaEE.model.Book" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 09.01.2023
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <%
        ArrayList<Book> books = (ArrayList<Book>) request.getAttribute("books");
        for(Book book : books){
    %>
        <h1><%=book.getName()%></h1>
        <h1><%=book.getPrice()%></h1>
        <h1><%=book.getAuthor()%></h1>
        <h1><a href="/detailsbook?id=<%=book.getId()%>" class="btn btn-dark btn-sm">DETAILS</a></h1>
    <%
        }
    %>
</body>
</html>
