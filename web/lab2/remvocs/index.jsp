<%-- 
    Document   : index
    Created on : Jan 10, 2020, 5:02:45 PM
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
                              <li class="breadcrumb-item active" aria-current="page">Eliminar vocales</li>
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
                        <h1 class="light-title">Eliminar vocales</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <form action="${pageContext.request.contextPath}/lab2/remvocs" method="POST">
                            <div class="form-group">
                                <label for="strInput1">Ingrese cadena de caracteres 1</label>
                                <input class="form-control" id="intInput1" type="text" name="str1">
                            </div>
                            <div class="form-group">
                                <label for="strInput2">Ingrese cadena de caracteres 2</label>
                                <input class="form-control" id="intInput2" type="text" name="str2">
                            </div>
                            <div class="form-group">
                                <label for="strInput3">Ingrese cadena de caracteres 3</label>
                                <input class="form-control" id="intInput3" type="text" name="str3">
                            </div>
                            <div class="form-group">
                                <label for="strInput4">Ingrese cadena de caracteres 4</label>
                                <input class="form-control" id="intInput4" type="text" name="str4">
                            </div>
                            <div class="form-group">
                                <label for="strInput5">Ingrese cadena de caracteres 5</label>
                                <input class="form-control" id="intInput5" type="text" name="str5">
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

