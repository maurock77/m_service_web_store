CREATE DATABASE IF NOT EXISTS educaParaTodos_db
CHARACTER SET utf8mb4
	COLLATE utf8mb4_general_ci;
    
USE educaParaTodos_db;

/* tabla usuario */
CREATE TABLE IF NOT EXISTS usuario (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(100) NOT NULL,
correo VARCHAR(100) NOT NULL,
password_hash VARCHAR(255) NOT NULL,
foto_url VARCHAR(255) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* tabla curso */
CREATE TABLE IF NOT EXISTS curso (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(100) NOT NULL,
descripcion TEXT NOT NULL,
duracion INT NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* tabla usuario_curso */
CREATE TABLE IF NOT EXISTS usuario_curso (
usuario_id INT NOT NULL,
curso_id INT NOT NULL,
fecha_inscripcion DATETIME,
PRIMARY KEY (usuario_id, curso_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(id),
FOREIGN KEY (curso_id) REFERENCES curso(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS leccion (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
curso_id INT NOT NULL,
titulo VARCHAR(100) NOT NULL,
contenido TEXT NOT NULL,
orden INT NOT NULL,
FOREIGN KEY (curso_id) REFERENCES curso(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;