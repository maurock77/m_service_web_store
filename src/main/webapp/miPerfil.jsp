<%-- 
    Document   : miPerfil
    Created on : 14-09-2026, 20:18:34
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.m_service_web_store.modelo.Usuario" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mi perfil - Educa Para Todos</title>
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

        <!-- style.css -->
        <link rel="preload" href="css/style.css" as="style">
        <link rel="stylesheet" href="css/style.css">

        <!-- normalize.css -->
        <link rel="preload" href="css/normalize.css" as="style">
        <link rel="stylesheet" href="css/normalize.css">
    </head>
    <body>
        <header>
            <!-- navbar -->
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                        <a class="navbar-brand" href="index.jsp">
                            <img src="img/educaParaTodos.png" alt="logo m_service" width="140" height="auto">
                        </a>

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="cursos.jsp">Cursos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="miPerfil.jsp">Mi perfil</a>
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="#">Contacto</a>
                            </li> -->
                        </ul>
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Buscar curso" aria-label="Search"/>
                            <button class="btn btn-outline-success" type="submit">Buscar</button>
                        </form>
                    </div>
                </div>
            </nav>
        </header>

        <div class="container py-4">
            <div class="row g-4">

                <%-- ========== TARJETA DE PERFIL ========== --%>
                <div class="col-md-4">
                    <div class="card border-0 shadow-sm rounded-4">
                        <div class="card-body p-4">

                            <c:choose>
                                <c:when test="${not empty usuario}">
                                    <div class="d-flex align-items-center">

                                        <%-- Foto de perfil (izquierda) --%>
                                        <img src="${pageContext.request.contextPath}/img/perfil-default.png"
                                             alt="Foto de perfil"
                                             class="rounded-circle border border-3 border-primary-subtle shadow-sm flex-shrink-0"
                                             style="width: 80px; height: 80px; object-fit: cover;">

                                        <%-- Nombre y correo (derecha, uno sobre otro) --%>
                                        <div class="ms-3 overflow-hidden">
                                            <h5 class="mb-1 fw-bold text-truncate">
                                                <c:out value="${usuario.nombre}"/>
                                            </h5>
                                            <p class="mb-0 text-muted small text-truncate">
                                                <i class="bi bi-envelope me-1"></i>
                                            <c:out value="${usuario.correo}"/>
                                            </p>
                                        </div>
                                    </div>

                                    <hr class="my-4">

                                    <button type="button" class="btn btn-outline-secondary w-100">
                                        <i class="bi bi-camera me-1"></i> Editar imagen
                                    </button>
                                </c:when>

                                
                            </c:choose>

                        </div>
                    </div>
                </div>

                <%-- ========== FORMULARIO ========== --%>
                <div class="col-md-8">
                    <div class="card border-0 shadow-sm rounded-4">
                        <div class="card-header bg-transparent border-0 pt-4 px-4">
                            <h5 class="fw-bold mb-0">Editar información</h5>
                            <small class="text-muted">Actualiza tus datos personales</small>
                        </div>

                        <div class="card-body p-4">
                            <form action="ActualizarPerfil.jsp" method="post">

                                <div class="mb-3">
                                    <label for="nombre" class="form-label fw-semibold">Nombre</label>
                                    <input type="text" id="nombre" name="nombre"
                                           class="form-control form-control-lg"
                                           value="${usuario.nombre}" required>
                                </div>

                                <div class="mb-4">
                                    <label for="correo" class="form-label fw-semibold">Correo electrónico</label>
                                    <input type="email" id="correo" name="correo"
                                           class="form-control form-control-lg"
                                           value="${usuario.correo}" required>
                                </div>

                                <div class="d-flex justify-content-end">
                                    <button type="submit" class="btn btn-primary px-4">
                                        <i class="bi bi-check2-circle me-1"></i> Actualizar
                                    </button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<main>

</main>
 <footer class="footer">
            <p class="footer__texto">EducaParaTodos - Todos los derechos reservados 2026.</p>
        </footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
