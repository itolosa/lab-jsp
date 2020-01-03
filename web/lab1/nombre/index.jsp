<%-- 
    Document   : index
    Created on : 02-01-2020, 16:50:35
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Laboratorios de JSP</title>
        <%@include file="../../partials/header.jsp" %>
    </head>
    <body class="container-fluid px-0">
        <div class="container px-0 min-100 border">
            <div class="row no-gutters mb-0 border-bottom">
                <div class="col ">
                    <nav class="navbar navbar-light bg-light">
                        <a class="navbar-brand" href="/Lab1">Laboratorios de JSP</a>
                    </nav>
                </div>
            </div>
            <div class="row">
                    <div class="col"
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb pb-0 pt-0 rounded-0 border-bottom">
                              <li class="breadcrumb-item"><a href="/Lab1">Laboratorios</a></li>
                              <li class="breadcrumb-item"><a href="/Lab1/lab1.jsp">Laboratorio 1</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Repetir nombre</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm"></div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <h1 class="light-title">Repetir nombre</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <form action="/Lab1/nombre" method="POST">
                            <div class="form-group">
                                <label for="nameInput">Nombre:</label>
                                <input id="nameInput" class="form-control" type="text" name="name">
                            </div>
                            <br>
                            <button type="submit" class="btn btn-primary">Enviar</button>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../../partials/scripts.jsp"%>
    </body>
</html>