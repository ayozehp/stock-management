<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tienda</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../_navbar.jsp" />
<div class="container">
    <div class="row">
        <div class="col">
            <h2>Carrito</h2>

            <s:if test="products.size==0">
                <p>No hay ningún producto. Volver a <a href="<s:url action="shop.action" />">comprar</a></p>
            </s:if>
            <s:else>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Descripción</th>
                        <th scope="col" class="text-end">Precio</th>
                        <th scope="col" class="text-end">Cantidad</th>
                        <th scope="col" class="text-end">Total</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="products" var="productMapElement">
                        <s:set var="totalProduct" value="%{key.price * value}" />
                        <tr>
                            <td><s:property value="key.name"/></td>
                            <td><s:property value="key.description"/></td>
                            <td class="text-end"><s:property value="key.price"/>€</td>
                            <td class="text-end"><s:property value="value"/></td>
                            <td class="text-end"><s:property value="#totalProduct"/>€</td>
                        </tr>
                    </s:iterator>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" class="text-end">Total pedido</td>
                            <td class="text-end"><s:property value="total"/>€</td>
                        </tr>
                    </tfoot>
                </table>

                <div class="mt-5">
                    <a href="<s:url action="shop.action" />" role="button" class="btn btn-secondary">Seguir comprando</a>
                    <a href="<s:url action="confirmCart.action" />" role="button" class="btn btn-primary float-end">Confirmar</a>
                </div>
            </s:else>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>