<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.aleka.javaEE.model.Item" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 03.01.2023
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container">
        <div class="row mt-3">
            <div class="col-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>PRICE</th>
                            <th>AMOUNT</th>
                            <th>DETAILS</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <%
                            ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
                            if(items!=null){
                                for(Item item: items){
                        %>
                            <tr>
                                <td><%=item.getId()%></td>
                                <td><%=item.getName()%></td>
                                <td><%=item.getPrice()%></td>
                                <td><%=item.getAmount()%></td>
                                <td><a href="/details?id=<%=item.getId()%>" class="btn btn-dark btn-sm">DETAILS</a></td>
                            </tr>
                        <%
                                }
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
