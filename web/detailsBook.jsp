<%@ page import="kz.aleka.javaEE.model.Book" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 13.01.2023
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <%
        Book book = (Book) request.getAttribute("book");
    %>
    <form action="/updatebook" method="post">
        <div class="mb-3">
            <input type="hidden" class="form-control" name="id" value="<%=book.getId()%>">
        </div>
        <div class="mb-3">
            <label class="form-label">NAME:</label>
            <input type="text" class="form-control" name="name" value="<%=book.getName()%>">
        </div>
        <div class="mb-3">
            <label class="form-label">PRICE:</label>
            <input type="text" class="form-control" name="price" value="<%=book.getPrice()%>">
        </div>
        <div class="mb-3">
            <label class="form-label">AUTHOR:</label>
            <input type="text" class="form-control" name="author" value="<%=book.getAuthor()%>">
        </div>
        <button type="submit" class="btn btn-success">SAVE BOOK</button>
    </form>

    <form action="/deletebook" method="post">
        <input type="hidden" name="id" value="<%=book.getId()%>">
        <button type="submit" class="btn btn-danger">DELETE</button>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
