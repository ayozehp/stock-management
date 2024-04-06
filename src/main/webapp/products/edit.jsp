<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../_navbar.jsp" />
<div class="container">
    <div class="row">
        <div class="col">
            <h2>Editar producto</h2>

            <s:form action="editProduct.action">
                <s:hidden name="product.id" label="ID" class="form-control" value="%{product.id}"/>
                <s:textfield name="product.name" label="Nombre" class="form-control" value="%{product.name}"/>
                <s:textfield name="product.description" label="Descripción" class="form-control" value="%{product.description}"/>
                <s:textfield name="product.stock" label="Cantidad" class="form-control" value="%{product.stock}"/>

                <s:submit value="Guardar" class="btn bg-primary-subtle btn-sm"/>
            </s:form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>