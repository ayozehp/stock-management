<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista de usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../_navbar.jsp" />
<div class="container">
    <div class="row">
        <div class="col">
            <h2>Lista de usuarios</h2>

            <s:if test="users.size==0">
                <p>No hay ningún usuario. Crea un nuevo usuario <a
                        href='<s:url action="viewCreateUser.action" />'>aquí</a></p>
            </s:if>
            <s:else>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Usuario</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellidos</th>
                        <th scope="col">¿Es administrador?</th>
                        <th scope="col">¿Gestión de stock?</th>
                        <th scope="col">¿Es cliente?</th>
                        <th scope="col">Acciones</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="users">
                        <tr>
                            <td><s:property value="userName"/></td>
                            <td><s:property value="name"/></td>
                            <td><s:property value="lastName"/></td>
                            <td><s:property value="admin"/></td>
                            <td><s:property value="warehouse"/></td>
                            <td><s:property value="client"/></td>
                            <td>
                                <s:url action="deleteUser" var="removeUserLink">
                                    <s:param name="id" value="%{id}" />
                                </s:url>
                                <a class="btn btn-primary btn-sm" href="${removeUserLink}">Eliminar</a>

                                <s:url action="viewEditUser" var="editUserLink">
                                    <s:param name="userId" value="%{id}" />
                                </s:url>
                                <a class="btn btn-primary btn-sm" href="${editUserLink}">Editar</a>
                            </td>
                        </tr>
                    </s:iterator>
                    </tbody>
                </table>
            </s:else>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>