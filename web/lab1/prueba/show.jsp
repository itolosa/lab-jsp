
<%-- 
    Document   : show
    Created on : 02-01-2020, 16:49:04
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Laboratorios de JSP</title>
        <%@include file="/partials/header.jsp" %>
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
                              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/lab1.jsp">Laboratorio 1</a></li>
                              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/lab1/prueba/index.jsp">Prueba con alternativas</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Resultado</li>
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
                        <h1 class="light-title">Resultado</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        Su nota fue: <%= request.getAttribute("puntaje") %>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col">
                        <a href="${pageContext.request.contextPath}/lab1/prueba/index.jsp">Volver</a>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/partials/scripts.jsp"%>
    </body>
</html>