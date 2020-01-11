<%-- 
    Document   : index
    Created on : Jan 10, 2020, 5:01:53 PM
    Author     : Ignacio
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
                              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/lab2.jsp">Laboratorio 2</a></li>
                              <li class="breadcrumb-item active" aria-current="page">Entero(s) con más dígitos iguales</li>
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
                        <h1 class="light-title">Entero(s) con más dígitos iguales</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                       
                        <form action="${pageContext.request.contextPath}/lab2/digiguales" method="POST" >
                            <div class="form-group">
                                <label for="intInput1">Ingrese entero 1</label>
                                <input class="form-control" id="intInput1" type="text" name="int1">
                            </div>
                            <div class="form-group">
                                <label for="intInput2">Ingrese entero 2</label>
                                <input class="form-control" id="intInput2" type="text" name="int2">
                            </div>
                            <div class="form-group">
                                <label for="intInput3">Ingrese entero 3</label>
                                <input class="form-control" id="intInput3" type="text" name="int3">
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

