<%-- 
    Document   : index
    Created on : Jan 10, 2020, 5:49:28 PM
    Author     : Ignacio
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
                              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/lab3.jsp">Laboratorio 3</a></li>
                              <li class="breadcrumb-item active" aria-current="page">PDF con números ordenados</li>
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
                        <h1 class="light-title">PDF con números ordenados</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <form action="${pageContext.request.contextPath}/lab3/pdfnums" method="POST">
                            <div class="form-group">
                                <label for="numInput">Ingrese números</label>
                                <input class="form-control" id="numInput" type="text" name="nums">
                                <small id="numInput" class="form-text text-muted">Ingrese 9 números separados por coma.</small>
                            </div>
                            <button type="submit" class="btn btn-primary">Enviar</button>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/partials/scripts.jsp"%>
    </body>
</html>