<%--
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
        <div class="col-6 mx-auto">
            <form action="/additem" method="post">
                <div class="row mt-3">
                    <div class="col-12">
                        <lavel>NAME : </lavel>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="name" required placeholder="Insert name">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <lavel>PRICE : </lavel>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="price" required placeholder="Insert price">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <lavel>AMOUNT : </lavel>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="number" class="form-control" name="amount" required placeholder="Insert amount">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button class="btn btn-success">ADD ITEM</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
