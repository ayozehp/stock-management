<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editar usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../_navbar.jsp" />
<div class="container">
    <div class="row justify-content-center">
        <div class="col-4">
            <h2>Editar usuario</h2>

            <form action="editUser.action" method="post" validate="true">
                <s:hidden name="user.id" label="id" class="form-control" value="%{user.id}"/>
                <div class="row">
                    <div class="col mb-3">
                        <s:textfield name="user.userName" label="Usuario" class="form-control" value="%{user.userName}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:textfield name="user.name" label="Nombre" class="form-control" value="%{user.name}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:textfield name="user.lastName" label="Apellidos" class="form-control" value="%{user.lastName}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:checkbox name="user.admin" label="¿Gestiona usuarios?" class="form-check-input" value="%{user.admin}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:checkbox name="user.warehouse" label="¿Gestiona stock?" class="form-check-input" value="%{user.warehouse}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:checkbox name="user.client" label="¿Quiere comprar?" class="form-check-input" value="%{user.client}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <s:submit value="Guardar" class="btn btn-secondary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>