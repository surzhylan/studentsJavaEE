<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.aleka.javaEE.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 10.01.2023
  Time: 16:02
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
        ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("students");
    %>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>SURNAME</th>
                <th>BIRTHDATE</th>
                <th>CITY</th>
                <th>DETAILS</th>
            </tr>
        </thead>
        <tbody class="table-group-divider">
            <%
                for (Student student : students){
            %>
                <tr>
                    <td><%=student.getId()%></td>
                    <td><%=student.getName()%></td>
                    <td><%=student.getSurname()%></td>
                    <td><%=student.getBirthdate()%></td>
                    <td><%=student.getCity()%></td>
                    <td><a href="/studentdetails?id=<%=student.getId()%>" class="btn btn-dark btn-sm">DETAILS</a></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
