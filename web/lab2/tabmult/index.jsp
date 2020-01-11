<%-- 
    Document   : index
    Created on : Jan 10, 2020, 5:01:12 PM
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
                              <li class="breadcrumb-item active" aria-current="page">Matriz de Multiplicación</li>
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
                        <h1 class="light-title">Matriz de Multiplicación</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <table class="table table-bordered table-sm table-fit">
                        <%
                        for (int i=1; i<11; i++) {
                        %>
                            <% if (i == 1) { %>
                            <thead>
                            <tr>
                                <th scope="col">X</th>
                                <%
                                for (int j=1; j<11; j++) {
                                %>
                                <th scope="col"><strong><%= j %></strong></th>
                                <% } %>

                            </tr>
                            </thead>
                            <tbody>
                            <% } %>
                            
                            <tr>
                            <%
                            for (int j=1; j<11; j++) {
                            %>
                            <% if (j == 1) { %>
                            <th scope="row"><strong><%= i %></strong></th>
                            <% } %>
                                <td><%= i*j %></td>
                            <% } %>
                            </tr>
                        <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="/partials/scripts.jsp"%>
    </body>
</html>

