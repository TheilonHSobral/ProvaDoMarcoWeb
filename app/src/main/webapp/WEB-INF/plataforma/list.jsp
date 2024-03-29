<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Plataforma</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
        <h1>Plataforma</h1>
            <a href="/plataforma/insert" class="btn btn-primary">Novo Plataforma</a>
            <table class="table">
                <tr>
                    <th>Nome</th>
                    <th>Fornecedor</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${plataforma}">
                    <tr>
                        <td>${item.nome}</td>
                        <td>${item.fornecedor}</td>
                        <td>
                            <a href="/plataforma/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/plataforma/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>