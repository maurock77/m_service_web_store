<%-- 
    Document   : cursos
    Created on : 19-09-2026, 11:42:40
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
    request.setCharacterEncoding("UTF-8");

    /*
     * DATOS DE EJEMPLO.
     * Si tu servlet ya envía un atributo "cursos" (List<Map> o List<Curso>),
     * este bloque se ignora. Los objetos deben tener getters:
     * getTitulo(), getDescripcion(), getCategoria(), getNivel(), getDuracion(),
     * getInstructor(), getPrecio(), getIcono(), getColor().
     */
    if (request.getAttribute("cursos") == null) {
        List<Map<String, Object>> lista = new ArrayList<>();
        String[][] datos = {
            {"Java desde Cero", "Aprende los fundamentos de Java y programación orientada a objetos.", "Programación", "Básico", "30 horas", "Carlos Méndez", "0", "bi-cup-hot", "#d9480f"},
            {"JSP y Servlets", "Desarrolla aplicaciones web dinámicas con tecnologías Jakarta EE.", "Programación", "Intermedio", "24 horas", "Laura Rojas", "29990", "bi-filetype-jsp", "#1971c2"},
            {"Bootstrap 5 Profesional", "Diseña interfaces modernas y responsivas de forma rápida.", "Diseño", "Básico", "15 horas", "Andrea Silva", "19990", "bi-layout-text-window", "#7048e8"},
            {"Bases de Datos con MySQL", "Modelado, consultas SQL y optimización de bases de datos.", "Datos", "Intermedio", "28 horas", "Felipe Soto", "24990", "bi-database", "#2b8a3e"},
            {"UX/UI para Desarrolladores", "Principios de experiencia de usuario aplicados a proyectos reales.", "Diseño", "Avanzado", "20 horas", "Camila Vega", "34990", "bi-palette", "#c2255c"},
            {"Introducción a Python para Datos", "Analiza y visualiza datos con Python, Pandas y Matplotlib.", "Datos", "Básico", "26 horas", "Diego Paredes", "0", "bi-bar-chart-line", "#e67700"}
        };
        for (String[] d : datos) {
            Map<String, Object> c = new HashMap<>();
            c.put("titulo", d[0]);      c.put("descripcion", d[1]);
            c.put("categoria", d[2]);   c.put("nivel", d[3]);
            c.put("duracion", d[4]);    c.put("instructor", d[5]);
            c.put("precio", Integer.parseInt(d[6]));
            c.put("icono", d[7]);       c.put("color", d[8]);
            lista.add(c);
        }
        request.setAttribute("cursos", lista);
    }

    // Categorías disponibles para los filtros
    request.setAttribute("categorias", Arrays.asList("Programación", "Diseño", "Datos"));
%>
<%-- Parámetros de filtro (vienen por la URL: cursos.jsp?categoria=Diseño&q=bootstrap) --%>
<c:set var="categoriaSel" value="${param.categoria}" />
<c:set var="busqueda" value="${fn:trim(param.q)}" />

<%-- Cuenta cuántos cursos cumplen los filtros --%>
<c:set var="total" value="0" />
<c:forEach var="curso" items="${cursos}">
    <c:if test="${(empty categoriaSel or curso.categoria == categoriaSel)
                  and (fn:containsIgnoreCase(curso.titulo, busqueda) or fn:containsIgnoreCase(curso.descripcion, busqueda))}">
        <c:set var="total" value="${total + 1}" />
    </c:if>
</c:forEach>
<!DOCTYPE html>
<html>
    <title>Educa Para Todos</title>
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
    
    
    <%-- ========== ENCABEZADO + BUSCADOR (formulario GET) ========== --%>
   
        <div class="container text-center py-3">
            <h1 class="display-5 fw-bold">Explora nuestros cursos</h1>
            <p class="lead mb-4">Aprende a tu ritmo con contenido creado por expertos.</p>

            <div class="row justify-content-center">
                <div class="col-md-7">
                    <form action="cursos.jsp" method="get">
                        <%-- Mantiene la categoría elegida al buscar --%>
                        <c:if test="${not empty categoriaSel}">
                            <input type="hidden" name="categoria" value="<c:out value='${categoriaSel}'/>">
                        </c:if>

                        <div class="input-group input-group-lg shadow">
                            <span class="input-group-text bg-white border-0"><i class="bi bi-search"></i></span>
                            <input type="search" name="q" class="form-control border-0"
                                   placeholder="Buscar un curso..." value="<c:out value='${busqueda}'/>">
                            <button type="submit" class="btn btn-warning fw-semibold px-4">Buscar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </header>

    <main class="container py-5">

        <%-- ========== FILTROS POR CATEGORÍA (enlaces con parámetros) ========== --%>
        <div class="d-flex flex-wrap gap-2 justify-content-center mb-4">

            <c:url var="urlTodos" value="cursos.jsp">
                <c:param name="q" value="${busqueda}" />
            </c:url>
            <a href="${urlTodos}"
               class="btn rounded-pill px-4 ${empty categoriaSel ? 'btn-primary' : 'btn-outline-primary'}">Todos</a>

            <c:forEach var="cat" items="${categorias}">
                <c:url var="urlCat" value="cursos.jsp">
                    <c:param name="categoria" value="${cat}" />
                    <c:param name="q" value="${busqueda}" />
                </c:url>
                <a href="${urlCat}"
                   class="btn rounded-pill px-4 ${categoriaSel == cat ? 'btn-primary' : 'btn-outline-primary'}">
                    <c:out value="${cat}"/>
                </a>
            </c:forEach>
        </div>

        <%-- Resumen de resultados --%>
        <p class="text-center text-muted mb-4">
            Mostrando <strong>${total}</strong> curso${total == 1 ? '' : 's'}
            <c:if test="${not empty busqueda}"> para "<strong><c:out value="${busqueda}"/></strong>"</c:if>
            <c:if test="${not empty categoriaSel}"> en <strong><c:out value="${categoriaSel}"/></strong></c:if>
            <c:if test="${not empty busqueda or not empty categoriaSel}">
                &middot; <a href="cursos.jsp">Limpiar filtros</a>
            </c:if>
        </p>

        <c:choose>
            <%-- ========== LISTA DE CURSOS ========== --%>
            <c:when test="${total > 0}">
                <div class="row g-4">
                    <c:forEach var="curso" items="${cursos}">
                        <c:if test="${(empty categoriaSel or curso.categoria == categoriaSel)
                                      and (fn:containsIgnoreCase(curso.titulo, busqueda) or fn:containsIgnoreCase(curso.descripcion, busqueda))}">

                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="card curso-card h-100 border-0 shadow-sm rounded-4 overflow-hidden">

                                    <div class="curso-cover" style="background-color: ${curso.color};">
                                        <i class="bi ${curso.icono}"></i>
                                    </div>

                                    <div class="card-body p-4 d-flex flex-column">
                                        <div class="d-flex justify-content-between align-items-center mb-2">
                                            <span class="badge text-bg-light border"><c:out value="${curso.categoria}"/></span>
                                            <c:choose>
                                                <c:when test="${curso.nivel == 'Básico'}"><span class="badge bg-success"><c:out value="${curso.nivel}"/></span></c:when>
                                                <c:when test="${curso.nivel == 'Intermedio'}"><span class="badge bg-warning text-dark"><c:out value="${curso.nivel}"/></span></c:when>
                                                <c:otherwise><span class="badge bg-danger"><c:out value="${curso.nivel}"/></span></c:otherwise>
                                            </c:choose>
                                        </div>

                                        <h5 class="card-title fw-bold"><c:out value="${curso.titulo}"/></h5>
                                        <p class="card-text text-muted small flex-grow-1"><c:out value="${curso.descripcion}"/></p>

                                        <ul class="list-unstyled small text-muted mb-3">
                                            <li class="mb-1"><i class="bi bi-person-circle me-2"></i><c:out value="${curso.instructor}"/></li>
                                            <li><i class="bi bi-clock me-2"></i><c:out value="${curso.duracion}"/></li>
                                        </ul>

                                        <div class="d-flex justify-content-between align-items-center pt-3 border-top">
                                            <span class="fw-bold fs-5">
                                                <c:choose>
                                                    <c:when test="${curso.precio == 0}"><span class="text-success">Gratis</span></c:when>
                                                    <c:otherwise>$<c:out value="${curso.precio}"/></c:otherwise>
                                                </c:choose>
                                            </span>
                                            <a href="#" class="btn btn-primary rounded-pill px-3">
                                                Ver curso <i class="bi bi-arrow-right ms-1"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:if>
                    </c:forEach>
                </div>
            </c:when>

            <%-- ========== SIN RESULTADOS ========== --%>
            <c:otherwise>
                <div class="text-center text-muted py-5">
                    <i class="bi bi-emoji-frown fs-1"></i>
                    <p class="mt-2 mb-3">No se encontraron cursos con esos criterios.</p>
                    <a href="cursos.jsp" class="btn btn-outline-primary rounded-pill px-4">Ver todos los cursos</a>
                </div>
            </c:otherwise>
        </c:choose>
    </main>
             <footer class="footer">
            <p class="footer__texto">EducaParaTodos - Todos los derechos reservados 2026.</p>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
