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

            <!-- sección beneficios -->
            <section class="container py-5">
                <h2 class="text-center mb-5">¿Qué encontrarás en este lugar?</h2>

                <div class="row text-center mb-5">
                    <div class="col-md-3">
                        <!--
tags: [justice, inviolability, freedom]
version: "1.49"
unicode: "efb6"
                        -->
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="60"
                            height="60"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="#000"
                            stroke-width="1"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            >
                        <path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0" />
                        <path d="M13.867 9.75c-.246 -.48 -.708 -.769 -1.2 -.75h-1.334c-.736 0 -1.333 .67 -1.333 1.5c0 .827 .597 1.499 1.333 1.499h1.334c.736 0 1.333 .671 1.333 1.5c0 .828 -.597 1.499 -1.333 1.499h-1.334c-.492 .019 -.954 -.27 -1.2 -.75" />
                        <path d="M12 7v2" />
                        <path d="M12 15v2" />
                        <path d="M6 6l1.5 1.5" />
                        <path d="M16.5 16.5l1.5 1.5" />
                        </svg>

                        <h4>Acceso gratuito</h4>
                        <p>Todos los cursos disponibles sin costo.</p>
                    </div>
                    <div class="col-md-3">
                        <svg data-slot="icon" fill="none" width="60" height="60 " stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M4.26 10.147a60.438 60.438 0 0 0-.491 6.347A48.62 48.62 0 0 1 12 20.904a48.62 48.62 0 0 1 8.232-4.41 60.46 60.46 0 0 0-.491-6.347m-15.482 0a50.636 50.636 0 0 0-2.658-.813A59.906 59.906 0 0 1 12 3.493a59.903 59.903 0 0 1 10.399 5.84c-.896.248-1.783.52-2.658.814m-15.482 0A50.717 50.717 0 0 1 12 13.489a50.702 50.702 0 0 1 7.74-3.342M6.75 15a.75.75 0 1 0 0-1.5.75.75 0 0 0 0 1.5Zm0 0v-3.675A55.378 55.378 0 0 1 12 8.443m-7.007 11.55A5.981 5.981 0 0 0 6.75 15.75v-1.5"></path>
                        </svg>

                        <h4>Variedad de cursos</h4>
                        <p>Básicos y avanzados en múltiples áreas.</p>
                    </div>
                    <div class="col-md-3">
                        <!--
category: Document
tags: [document, official, attest, signature, birth, death, gift, authenticity, seal, course, complete, qualification]
version: "1.33"
unicode: "ed76"
                        -->
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="60"
                            height="60"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="#000"
                            stroke-width="1"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            >
                        <path d="M15 15m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0" />
                        <path d="M13 17.5v4.5l2 -1.5l2 1.5v-4.5" />
                        <path d="M10 19h-5a2 2 0 0 1 -2 -2v-10c0 -1.1 .9 -2 2 -2h14a2 2 0 0 1 2 2v10a2 2 0 0 1 -1 1.73" />
                        <path d="M6 9l12 0" />
                        <path d="M6 12l3 0" />
                        <path d="M6 15l2 0" />
                        </svg>

                        <h4>Certificados digitales</h4>
                        <p>Recibe un certificado al completar.</p>
                    </div>
                    <div class="col-md-3">
                        <!--
tags: [time, hour, watch, timepiece, twenty-four-hour, 24-hour, military, clock-face, round-clock, day-night]
category: System
version: "2.32"
unicode: "fc57"
                        -->
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="60"
                            height="60"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="#000"
                            stroke-width="1"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            >
                        <path d="M3 12a9 9 0 0 0 5.998 8.485m12.002 -8.485a9 9 0 1 0 -18 0" />
                        <path d="M12 7v5" />
                        <path d="M12 15h2a1 1 0 0 1 1 1v1a1 1 0 0 1 -1 1h-1a1 1 0 0 0 -1 1v1a1 1 0 0 0 1 1h2" />
                        <path d="M18 15v2a1 1 0 0 0 1 1h1" />
                        <path d="M21 15v6" />
                        </svg>

                        <h4>Acceso 24/7</h4>
                        <p>Aprende cuando quieras.</p>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col-md-3">
                        <!--
category: Map
tags: [earth, globe, global, language, union]
version: "1.0"
unicode: "eb54"
                        -->
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="60"
                            height="60"
                            viewBox="0 0 24 24"
                            fill="none"
                            stroke="#000"
                            stroke-width="1"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            >
                        <path d="M3 12a9 9 0 1 0 18 0a9 9 0 0 0 -18 0" />
                        <path d="M3.6 9h16.8" />
                        <path d="M3.6 15h16.8" />
                        <path d="M11.5 3a17 17 0 0 0 0 18" />
                        <path d="M12.5 3a17 17 0 0 1 0 18" />
                        </svg>

                        <h4>Inclusión educativa</h4>
                        <p>Para comunidades desfavorecidas.</p>
                    </div>
                    <div class="col-md-3">
                        <svg fill="#000000" height="60px" width="60px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 511.999 511.999" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <path d="M302.195,11.833H13.049C5.842,11.833,0,17.675,0,24.882v214.289c0,7.207,5.842,13.049,13.049,13.049h283.839 l-34.352-21.329c-2.247-1.396-4.282-3.002-6.109-4.768H26.097V37.93h263.049v126.703c4.01,0.847,7.943,2.39,11.625,4.677 l14.473,8.986V24.882C315.244,17.675,309.402,11.833,302.195,11.833z"></path> </g> </g> <g> <g> <path d="M216.857,134.337c-4.352-3.43-10.665-2.685-14.097,1.668c-3.432,4.353-2.686,10.665,1.668,14.097l44.279,34.914 c0.63-1.371,1.34-2.719,2.156-4.034c2.883-4.643,6.649-8.401,10.94-11.206L216.857,134.337z"></path> </g> </g> <g> <g> <circle cx="419.71" cy="81.405" r="37.557"></circle> </g> </g> <g> <g> <path d="M511.33,173.609c-0.118-23.528-19.355-42.67-42.884-42.67H450.26c-17.831,46.242-11.329,29.381-22.507,58.37l4.709-23.724 c0.346-1.744,0.067-3.555-0.79-5.113l-7.381-13.424l6.551-11.914c0.454-0.826,0.438-1.829-0.041-2.64 c-0.479-0.811-1.352-1.308-2.293-1.308h-17.96c-0.942,0-1.813,0.497-2.293,1.308s-0.495,1.815-0.041,2.64l6.537,11.889 l-7.367,13.4c-0.873,1.589-1.147,3.438-0.77,5.211l5.438,23.675c-3.119-8.087-21.08-52.728-23.255-58.37h-17.83 c-23.529,0-42.766,19.141-42.884,42.67c-0.098,19.565-0.016,3.179-0.17,33.884l-36.702-22.787 c-8.501-5.28-19.674-2.667-24.953,5.836c-5.279,8.503-2.666,19.675,5.836,24.954l64.219,39.873 c12.028,7.47,27.609-1.167,27.68-15.304c0.036-7.091,0.292-57.809,0.334-66.275c0.013-2.092,1.714-3.776,3.805-3.769 c2.089,0.007,3.779,1.703,3.779,3.794c-0.018,87.323-0.394,111.735-0.394,304.606c0,12.01,9.736,21.746,21.746,21.746 s21.746-9.736,21.746-21.746V304.604h9.388v173.817c0,12.01,9.736,21.746,21.746,21.746s21.746-9.736,21.746-21.746l0.008-304.612 c0-1.981,1.604-3.589,3.586-3.595c1.981-0.006,3.595,1.594,3.605,3.577l0.669,133.132c0.05,9.977,8.154,18.03,18.119,18.03 c0.031,0,0.062,0,0.094,0c10.007-0.05,18.081-8.205,18.03-18.212L511.33,173.609z"></path> </g> </g> </g></svg>
                        <h4>Profesores voluntarios</h4>
                        <p>Expertos comprometidos con enseñar.</p>
                    </div>
                    <div class="col-md-3">
                        <svg fill="#000000" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" xml:space="preserve" width="60px" height="60px"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path id="collaboration_1_" d="M1.36,11.318V16H0.64v-4.683c0-2.221,1.342-4.163,3.347-4.969C3.242,5.749,2.79,4.834,2.79,3.85 c0-1.77,1.44-3.21,3.21-3.21s3.21,1.44,3.21,3.21c0,0.984-0.452,1.898-1.197,2.499c2.005,0.806,3.347,2.748,3.347,4.969V16h-0.72 v-4.683c0-2.16-1.467-4.016-3.566-4.514C6.924,6.768,6.813,6.64,6.799,6.487c-0.014-0.154,0.071-0.3,0.212-0.363 c0.899-0.4,1.48-1.293,1.48-2.275c0-1.373-1.117-2.49-2.49-2.49S3.51,2.477,3.51,3.85c0,0.982,0.581,1.875,1.48,2.275 c0.141,0.063,0.226,0.209,0.212,0.362C5.188,6.641,5.077,6.769,4.926,6.804C2.827,7.302,1.36,9.158,1.36,11.318z M28.014,21.349 c0.745-0.601,1.197-1.516,1.197-2.499c0-1.771-1.44-3.21-3.211-3.21s-3.211,1.439-3.211,3.21c0,0.983,0.452,1.898,1.197,2.499 c-2.005,0.806-3.347,2.748-3.347,4.969V31h0.721v-4.683c0-2.16,1.466-4.016,3.565-4.514c0.15-0.036,0.261-0.163,0.275-0.317 c0.015-0.153-0.071-0.3-0.212-0.362c-0.899-0.399-1.479-1.292-1.479-2.274c0-1.373,1.117-2.49,2.49-2.49s2.49,1.117,2.49,2.49 c0,0.982-0.58,1.875-1.479,2.274c-0.141,0.062-0.227,0.209-0.212,0.362c0.015,0.154,0.125,0.281,0.275,0.317 c2.1,0.498,3.565,2.354,3.565,4.514V31h0.721v-4.683C31.36,24.097,30.019,22.154,28.014,21.349z M6.36,23v-5.131l2.386,2.386 l0.509-0.51L6,16.491l-3.254,3.254l0.509,0.51l2.386-2.386V23c0,2.404,1.956,4.36,4.36,4.36h9v-0.72h-9 C7.993,26.64,6.36,25.007,6.36,23z M25.64,8v5.13l-2.385-2.385l-0.51,0.509L26,14.509l3.255-3.255l-0.51-0.509L26.36,13.13V8 c0-2.404-1.956-4.36-4.36-4.36H11v0.72h11C24.007,4.36,25.64,5.993,25.64,8z"></path> <rect id="_Transparent_Rectangle" style="fill:none;" width="32" height="32"></rect> </g></svg>
                        <h4>Aprendizaje colaborativo</h4>
                        <p>Comparte y debate con otros.</p>
                    </div>
                    <div class="col-md-3">
                       <svg fill="#000000" width="60px" height="60px" viewBox="0 0 24 24" id="update-alt" data-name="Flat Line" xmlns="http://www.w3.org/2000/svg" class="icon flat-line"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path id="primary" d="M5.07,8A8,8,0,0,1,20,12" style="fill: none; stroke: #000000; stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path><path id="primary-2" data-name="primary" d="M18.93,16A8,8,0,0,1,4,12" style="fill: none; stroke: #000000; stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></path><polyline id="primary-3" data-name="primary" points="5 3 5 8 10 8" style="fill: none; stroke: #000000; stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></polyline><polyline id="primary-4" data-name="primary" points="19 21 19 16 14 16" style="fill: none; stroke: #000000; stroke-linecap: round; stroke-linejoin: round; stroke-width: 2;"></polyline></g></svg>
                        <h4>Actualización constante</h4>
                        <p>Cursos renovados según necesidades.</p>
                    </div>
                </div>
            </section>



        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
