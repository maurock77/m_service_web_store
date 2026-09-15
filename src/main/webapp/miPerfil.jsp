<%-- 
    Document   : miPerfil
    Created on : 14-09-2026, 20:18:34
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <a class="nav-link active" aria-current="page" href="#">Cursos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="miPerfil.jsp">Mi perfil</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contacto</a>
                            </li>
                        </ul>
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Buscar curso" aria-label="Search"/>
                            <button class="btn btn-outline-success" type="submit">Buscar</button>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
        <div class="container my-5">
            <div class="row">
                <div class="col-md-4 text-center">
                    <img src="resources/img/avatar.png" class="rounded-circle mb-3" width="150">
                    <h4><%= nombre%></h4>
                    <p><%= correo%></p>
                    <button class="btn btn-secondary">Editar imagen</button>
                </div>

                <div class="col-md-8">
                    <form action="ActualizarPerfil.jsp" method="post">
                        <div class="mb-3">
                            <label class="form-label">Nombre</label>
                            <input type="text" name="nombre" class="form-control" value="<%= nombre%>">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Correo electrónico</label>
                            <input type="email" name="correo" class="form-control" value="<%= correo%>">
                        </div>
                        <button class="btn btn-primary">Actualizar</button>
                    </form>
                </div>
            </div>
        </div>
        <main>

        </main>
    </body>
</html>
