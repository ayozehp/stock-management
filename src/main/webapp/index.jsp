<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CarStock</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="_navbar.jsp"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-4">
            <h2>Login</h2>
            <p>Acceda a StockApp usando su nombre de usuario y contraseña. Si no dispone de uno, por favor, póngase en contacto con nosotros para darlte de alta en <a href="mailto:hola@example.com">hola@example.com</a></p>

            <form action="login.action" method="post" validate="true">
                <div class="row">
                    <div class="col mb-3">
                        <s:textfield name="userName" placeholder="Usuario" class="form-control"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col mb-3">
                        <s:password name="password" placeholder="Contraseña" class="form-control"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <s:submit value="Entrar" class="btn btn-secondary"/>
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