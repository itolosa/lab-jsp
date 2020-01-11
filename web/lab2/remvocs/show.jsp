<%-- 
    Document   : index
    Created on : Jan 10, 2020, 5:01:53 PM
    Author     : Ignacio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="/partials/header.jsp" %>
        <title>Laboratorio 2</title>
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
                              <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/lab2/remvocs/index.jsp">Eliminar vocales</a></li>
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
                        <ul>
                        <%
                            List<String> results = (List<String>) request.getAttribute("results");
                            for (String cadena : results) { %> 
                            <li><%= cadena %></li>
                        <% } %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/partials/scripts.jsp"%>
    </body>
</html>

