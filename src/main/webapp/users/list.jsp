<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col">

            <h2>Lista de usuarios</h2>

            <p><a class="btn btn-primary" href="<s:url action="viewCreateUser.action" />">Crear usuario</a></p>

            <s:if test="users.size==0">
                <p>No hay ningún usuario. Crea un nuevo usuario <a href='<s:url action="viewCreateUser.action" />'>aquí</a></p>
            </s:if>
            <s:else>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellidos</th>
                        <th scope="col">Rol</th>
                        <th scope="col">Acciones</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="users">
                        <tr>
                            <th scope="row"><s:property value="id"/></th>
                            <td><s:property value="userName"/></td>
                            <td><s:property value="name"/></td>
                            <td><s:property value="lastName"/></td>
                            <td><s:property value="role"/></td>
                            <td>
                                <s:form action="deleteUser" method="post">
                                    <s:hidden name="userID" label="User ID"/>
                                    <s:submit value="Eliminar"/>
                                </s:form>
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