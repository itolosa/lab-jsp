<%-- 
    Document   : lab2
    Created on : 02-01-2020, 13:40:08
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
                              <li class="breadcrumb-item active" aria-current="page">Laboratorio 2</li>
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
                        <h1 class="light-title">Laboratorio 2</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="list-group">
                            <a href="lab2/tabmult/index.jsp" class="list-group-item list-group-item-action">
                              Matriz de Multiplicación
                            </a>
                            <a href="lab2/chkeq/index.jsp" class="list-group-item list-group-item-action">
                              Entero(s) con más dígitos iguales
                            </a>
                            <a href="lab2/chkpar/index.jsp" class="list-group-item list-group-item-action">
                              Entero(s) con más dígitos pares
                            </a>
                            <a href="lab2/remvocs/index.jsp" class="list-group-item list-group-item-action">
                              Eliminar vocales
                            </a>
                            <a href="lab2/encriptlet/index.jsp" class="list-group-item list-group-item-action">
                              Encriptar letras
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/partials/scripts.jsp"%>
    </body>
</html>
