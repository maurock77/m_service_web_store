<%-- 
    Document   : index
    Created on : 10-09-2026, 07:38:05
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Educa ara Todos</title>
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                        <a class="navbar-brand" href="#">
                            <img src="img/educaParaTodos.png" alt="logo m_service" width="140" height="auto">
                        </a>

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Cursos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Mi perfil</a>
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

            <!-- carrusel -->
            <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="10000">
                        <img src="img/hero.webp" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="img/hero2.webp" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </header>
        <main>
            <section class="container py-5">
                <h2 class="text-center mb-5">¿Qué encontrarás en este lugar?</h2>

                <div class="row text-center mb-5">
                    <div class="col-md-3">
                        <img src="icons/gratis.svg" alt="Acceso gratuito" width="60" class="mb-3">
                        <h4>Acceso gratuito</h4>
                        <p>Todos los cursos disponibles sin costo.</p>
                    </div>
                    <div class="col-md-3">
                        <img src="icons/cursos.svg" alt="Variedad de cursos" width="60" class="mb-3">
                        <h4>Variedad de cursos</h4>
                        <p>Básicos y avanzados en múltiples áreas.</p>
                    </div>
                    <div class="col-md-3">
                        <img src="icons/certificado.svg" alt="Certificados digitales" width="60" class="mb-3">
                        <h4>Certificados digitales</h4>
                        <p>Recibe un certificado al completar.</p>
                    </div>
                    <div class="col-md-3">
                        <img src="icons/tiempo.svg" alt="Acceso 24/7" width="60" class="mb-3">
                        <h4>Acceso 24/7</h4>
                        <p>Aprende cuando quieras.</p>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col-md-3">
                        <img src="icons/inclusion.svg" alt="Inclusión educativa" width="60" class="mb-3">
                        <h4>Inclusión educativa</h4>
                        <p>Para comunidades desfavorecidas.</p>
                    </div>
                    <div class="col-md-3">
                        <img src="icons/profesores.svg" alt="Profesores voluntarios" width="60" class="mb-3">
                        <h4>Profesores voluntarios</h4>
                        <p>Expertos comprometidos con enseñar.</p>
                    </div>
                    <div class="col-md-3">
                        <img src="icons/colaborativo.svg" alt="Aprendizaje colaborativo" width="60" class="mb-3">
                        <h4>Aprendizaje colaborativo</h4>
                        <p>Comparte y debate con otros.</p>
                    </div>
                    <div class="col-md-3">
                        <img src="icons/actualizacion.svg" alt="Actualización constante" width="60" class="mb-3">
                        <h4>Actualización constante</h4>
                        <p>Cursos renovados según necesidades.</p>
                    </div>
                </div>
            </section>



        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
