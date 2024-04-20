<%@ taglib prefix="s" uri="/struts-tags" %>

<nav class="navbar navbar-expand-lg bg-secondary text-white mb-5" data-bs-theme="dark">
    <div class="container">
        <a class="navbar-brand" href="#">
            CarStock
        </a>
        <% if (session.getAttribute("started") != null) { %>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <% if ((boolean) session.getAttribute("isAdmin")) { %>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Usuarios
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href='<s:url action="users.action" />'>Ver todos</a></li>
                        <li><a class="dropdown-item" href='<s:url action="viewCreateUser.action" />'>Crear usuario</a>
                        </li>
                    </ul>
                </li>
                <% } %>
                <% if ((boolean) session.getAttribute("isWarehouse")) { %>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Productos
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href='<s:url action="products.action" />'>Ver todos</a></li>
                        <li><a class="dropdown-item" href='<s:url action="viewCreateProduct.action" />'>Crear
                            producto</a>
                        </li>
                    </ul>
                </li>
                <% } %>
                <% if ((boolean) session.getAttribute("isClient")) { %>
                <li class="nav-item">
                    <a class="nav-link" href="<s:url action="viewCart.action" />">Carrito</a>
                </li>
                <% } %>
            </ul>
            <% if ((boolean) session.getAttribute("started")) { %>
            <span class="navbar-text"><s:property value="#session.name" />, <a class="dropdown-item"
                                                   href='<s:url action="logout.action" />'>Salir</a></span>
            <% } %>
        </div>
    </div>
    <% } %>
</nav>