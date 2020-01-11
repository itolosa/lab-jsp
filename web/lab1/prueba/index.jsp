<%-- 
    Document   : index
    Created on : 02-01-2020, 16:50:45
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
                              <li class="breadcrumb-item active" aria-current="page">Prueba con alternativas</li>
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
                        <h1 class="light-title">Prueba con alternativas</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col">
                                <form action="${pageContext.request.contextPath}/lab1/pruebaconalt" method="POST">
                                    <ol>
                                        <div class="row">
                                            <div class="col">
                                                <li>¿Cuándo fue la PSU?</li>
                                                <div class="form-check">
                                                    <input id="p1Respuesta1" class="form-check-input" type="radio" name="respuesta1" value="1">
                                                    <label for="p1Respuesta1" class="form-check-label">El 5 de diciembre</label> 
                                                </div>
                                                <div class="form-check">
                                                    <input id="p1Respuesta2" class="form-check-input" type="radio" name="respuesta1" value="2">
                                                    <label for="p1Respuesta2" class="form-check-label">El 6 de enero</label> 
                                                </div>
                                                <div class="form-check">
                                                    <input id="p1Respuesta3" class="form-check-input" type="radio" name="respuesta1" value="3">
                                                    <label for="p1Respuesta3" class="form-check-label">El 8 de diciembre</label> 
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col">
                                                <li>¿Qué fecha ocurrió el estallido social?</li>
                                                <div class="form-check">
                                                    <input id="p2Respuesta1" class="form-check-input" type="radio" name="respuesta2" value="1">
                                                    <label for="p2Respuesta1" class="form-check-label">10 de noviembre</label> 
                                                </div>
                                                <div class="form-check">
                                                    <input id="p2Respuesta2" class="form-check-input" type="radio" name="respuesta2" value="2">
                                                    <label for="p2Respuesta2" class="form-check-label">18 de octubre</label> 
                                                </div>
                                                <div class="form-check">
                                                    <input id="p2Respuesta3" class="form-check-input" type="radio" name="respuesta2" value="3">
                                                    <label for="p2Respuesta3" class="form-check-label">20 de diciembre</label> 
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row">
                                            <div class="col">
                                                <li>¿De que civilización era el dios Anhur?</li>
                                                <div class="form-check">
                                                    <input id="p3Respuesta1" class="form-check-input" type="radio" name="respuesta3" value="1">
                                                    <label for="p3Respuesta1" class="form-check-label">Egipcia</label> 
                                                </div>
                                                <div class="form-check">
                                                    <input id="p3Respuesta2" class="form-check-input" type="radio" name="respuesta3" value="2">
                                                    <label for="p3Respuesta2" class="form-check-label">Griega</label> 
                                                </div>
                                                <div class="form-check">
                                                    <input id="p3Respuesta3" class="form-check-input" type="radio" name="respuesta3" value="3">
                                                    <label for="p3Respuesta3" class="form-check-label">Azteca</label> 
                                                </div>
                                            </div>
                                        </div>
                                    </ol>
                                    <br>
                                    <button type="submit" class="btn btn-primary">Enviar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/partials/scripts.jsp"%>
    </body>
</html>