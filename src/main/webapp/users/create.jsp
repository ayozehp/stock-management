<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Crear usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../_navbar.jsp" />
<div class="container">
    <div class="row justify-content-center">
        <div class="col-4">
            <h2>Crear usuario</h2>

            <form action="createUser.action" method="post" validate="true">
                <div class="row">
                    <div class="col mb-3">
                        <s:textfield name="user.userName" placeholder="Usuario" class="form-control"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:password name="user.password" placeholder="Contraseña" class="form-control"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:textfield name="user.name" placeholder="Nombre" class="form-control"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:textfield name="user.lastName" placeholder="Apellidos" class="form-control"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:checkbox name="user.admin" label="¿Gestiona usuarios?" class="form-check-input"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:checkbox name="user.warehouse" label="¿Gestiona stock?" class="form-check-input"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:checkbox name="user.client" label="¿Quiere comprar?" class="form-check-input"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <s:submit value="Crear usuario" class="btn btn-secondary"/>
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