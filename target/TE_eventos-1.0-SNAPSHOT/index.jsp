<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Seminario" %>
<%@page import="java.util.List" %>

<%
    List<Seminario> lista = (List<Seminario>) request.getAttribute("lista");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link href="estilos.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <center>     <h4>SEGUNDO PARCIAL</h4>
        <h4>Nombre: Jose Enrique Huanca Calsina</h4>
        <h4>Carnet: 6042567lp</h4>
        <h1 class="titulo">Registro de seminarios</h1></center>
        <p> <a href="MainController?op=nuevo">Nuevo</a></p>
        <table class="tabla">
            <tr>
                <th>ID</th>
                <th>TITULO</th>
                <th>EXPOSITOR</th>
                <th>FECHA</th>
                <th>HORA</th>
                <th>CUPO</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.expositor}</td>
                    <td>${item.fecha}</td>
                    <td>${item.hora}</td>
                    <td>${item.cupo}</td>
                    <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}"
                           onclick="return(confirm('Esta seguro de elimar ???'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
