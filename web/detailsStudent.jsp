<%@ page import="kz.aleka.javaEE.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 10.01.2023
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row mt-3">
            <div class="col-12">
                <div class="col-6 mx-auto">
                    <%
                        Student student = (Student) request.getAttribute("student");
                        if(student!=null){
                    %>

                            <input type="hidden" name="id" value="<%=student.getId()%>">
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">NAME:</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" readonly value="<%=student.getName()%>">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">SURNAME:</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" readonly value="<%=student.getSurname()%>">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">BIRTHDATE:</label>
                                <div class="col-sm-6">
                                    <input type="date" class="form-control"
                                           readonly value="<%=student.getBirthdate()%>">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">CITY:</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" readonly value="<%=student.getCity()%>">
                                </div>
                            </div>

                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editStudentModal">
                                EDIT STUDENT
                            </button>
                            <button type="button" class="btn btn-danger ms-2" data-bs-toggle="modal" data-bs-target="#deleteStudentModal">
                                DELETE STUDENT
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="editStudentModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">EDIT STUDENT</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <form action="/updatestudent" method="post">
                                            <div class="modal-body">
                                                    <input type="hidden" name="id" value="<%=student.getId()%>">
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">NAME:</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control" required placeholder="Insert name"
                                                                   name="name" value="<%=student.getName()%>">
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">SURNAME:</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control" required placeholder="Insert surname"
                                                                   name="surname" value="<%=student.getSurname()%>">
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">BIRTHDATE:</label>
                                                        <div class="col-sm-6">
                                                            <input type="date" class="form-control"
                                                                   name="birthdate" value="<%=student.getBirthdate()%>">
                                                        </div>
                                                    </div>
                                                    <div class="row mb-3">
                                                        <label class="col-sm-2 col-form-label">CITY:</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control" name="city" value="<%=student.getCity()%>">
                                                        </div>
                                                    </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button class="btn btn-primary">SAVE</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <!-- Modal 2 -->
                            <div class="modal fade" id="deleteStudentModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5">DELETE STUDENT</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <form action="/deletestudent" method="post">
                                            <input type="hidden" name="id" value="<%=student.getId()%>">
                                            <div class="modal-body">
                                                <h4 class="text-center">
                                                    Are you sure?
                                                </h4>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                                <button class="btn btn-danger">DELETE</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
