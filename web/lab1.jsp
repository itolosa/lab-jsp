<%-- 
    Document   : lab1
    Created on : 02-01-2020, 13:39:27
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/partials/header.jsp" %>
        <title>Laboratorio 1</title>
    </head>
    <body class="container-fluid px-0">
        <div class="container px-0 min-100 border">
            <div class="row no-gutters mb-0 border-bottom">
                <div class="col ">
                    <nav class="navbar navbar-light bg-light">
                        <a class="navbar-brand" href="${pageContext.request.contextPath}">Laboratorios de JSP</a>
                    </nav>
                </div>
            </div>
            <div class="row">
                    <div class="col"
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb pb-0 pt-0 rounded-0 border-bottom">
                              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Laboratorios</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Laboratorio 1</li>
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
                        <h1 class="light-title">Laboratorio 1</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="list-group">
                            <a href="lab1/mayor3/index.jsp" class="list-group-item list-group-item-action">
                              Mayor de 3 numeros
                            </a>
                            <a href="lab1/exponenciador/index.jsp" class="list-group-item list-group-item-action">
                              Exponenciador
                            </a>
                            <a href="lab1/nombre/index.jsp" class="list-group-item list-group-item-action">
                              Repetir nombre
                            </a>
                            <a href="lab1/prueba/index.jsp" class="list-group-item list-group-item-action">
                              Prueba con alternativas
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/partials/scripts.jsp"%>
    </body>
</html>
