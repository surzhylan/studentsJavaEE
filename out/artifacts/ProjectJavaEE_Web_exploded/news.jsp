<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.aleka.javaEE.model.News" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 05.01.2023
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <%@include file="navbarNews.jsp"%>
    <div class="container">
        <%
            ArrayList<News> news = (ArrayList<News>) request.getAttribute("news");
            if(news!=null){
                for(News news1 : news){
        %>
            <div class="card mt-2 py-3 px-3" style="background-color: rgba(17,81,105,0.08); border-style: none">
                <div class="card-body">
                    <h5 class="card-title"><%=news1.getTitle()%></h5>
                    <p class="card-text text-secondary"><%=news1.getContent()%></p>
                    <p class="card-text"><small class="text-muted">Author: <b class="text-dark"><%=news1.getAuthor()%></b></small></p>
                </div>
            </div>
        <%
                }
            }
        %>
    </div>
    <%@include file="footerNews.jsp"%>
</body>
</html>
