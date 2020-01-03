<%-- 
    Document   : index
    Created on : 30-12-2019, 15:03:24
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
                        <a class="navbar-brand" href="/Lab1">Laboratorios de JSP</a>
                    </nav>
                </div>
            </div>
            <div class="row">
                    <div class="col"
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb pb-0 pt-0 rounded-0 border-bottom">
                              <li class="breadcrumb-item active" aria-current="page">Laboratorios</li>
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
                        <h1 class="light-title">Laboratorios</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="list-group">
                            <a href="lab1.jsp" class="list-group-item list-group-item-action">
                              Laboratorio 1
                            </a>
                            <a href="lab2.jsp" class="list-group-item list-group-item-action">
                                Laboratorio 2</a>
                            <a href="lab3.jsp" class="list-group-item list-group-item-action">Laboratorio 3</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="partials/scripts.jsp"%>
    </body>
</html>
