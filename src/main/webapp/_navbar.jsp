<%@ taglib prefix="s" uri="/struts-tags" %>

<nav class="navbar navbar-expand-lg bg-primary">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24"
                 class="d-inline-block align-text-top">
            Stock Management
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
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
            </ul>
            <span class="navbar-text">
                <a class="dropdown-item" href='<s:url action="logout.action" />'>Salir</a>
            </span>
        </div>
    </div>
</nav>