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
        <title>Laboratorio 2</title>
    </head>
    <body>
        <h1>Tabla multiplicar</h1>
        <table border="1">
        <%
        for (int i=1; i<11; i++) {
        %>
            <% if (i == 1) { %>
            <tr>
                <td></td>
                <%
                for (int j=1; j<11; j++) {
                %>
                <td><strong><%= j %></strong></td>
                <% } %>
                
            </tr>
            <% } %>
            <tr>
            <%
            for (int j=1; j<11; j++) {
            %>
            <% if (j == 1) { %>
            <td><strong><%= i %></strong></td>
            <% } %>
                <td><%= i*j %></td>
            <% } %>
            </tr>
        <% } %>
        </table>
        <h1>Enviar 3 nros (chkdigiguales)</h1>
        <form action="#" >
            <input type="text" name="chkdig1">
            <input type="text" name="chkdig2">
            <input type="text" name="chkdig3">
            <button type="submit">Enviar</button>
        </form>
        <h1>Enviar 3 nros (chkpar)</h1>
        <form action="#" >
            <input type="text" name="chkpar1">
            <input type="text" name="chkpar2">
            <input type="text" name="chkpar3">
            <input type="text" name="chkpar4">
            <button type="submit">Enviar</button>
        </form>
        <h1>Cad Vocales</h1>
        <form action="#" >
            <input type="text" name="cad1">
            <input type="text" name="cad2">
            <input type="text" name="cad3">
            <input type="text" name="cad4">
            <input type="text" name="cad5">
            <button type="submit">Enviar</button>
        </form>
        <h1>Encriptar</h1>
        <form action="#" >
            <input type="text" name="encryptword">
            <button type="submit">Enviar</button>
        </form>
    </body>
</html>
