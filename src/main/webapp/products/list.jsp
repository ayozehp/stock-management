<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista de productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../_navbar.jsp" />
<div class="container">
    <div class="row">
        <div class="col">
            <h2>Lista de produtos</h2>

            <div class="alert alert-warning" role="alert">
                Hay productos con una cantidad inferior a 10.
            </div>

            <s:if test="products.size==0">
                <p>No hay ningún producto. Crea un nuevo producto <a
                        href='<s:url action="viewCreateProduct.action" />'>aquí</a></p>
            </s:if>
            <s:else>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Descripción</th>
                        <th scope="col">Cantidad</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="products">
                        <tr>
                            <td><s:property value="name"/></td>
                            <td><s:property value="description"/></td>
                            <td><s:property value="stock"/></td>
                            <td>
                                <s:url action="deleteProduct" var="removeProductLink">
                                    <s:param name="id" value="%{id}" />
                                </s:url>
                                <a class="btn btn-primary btn-sm" href="${removeProductLink}">Eliminar</a>

                                <s:url action="viewEditProduct" var="editProductLink">
                                    <s:param name="productId" value="%{id}" />
                                </s:url>
                                <a class="btn btn-primary btn-sm" href="${editProductLink}">Editar</a>
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