CREATE DATABASE banco_prog_web;
USE banco_prog_web;

CREATE TABLE musica (
    id_musica INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    duracao FLOAT NOT NULL,
    compositor VARCHAR(100) NOT NULL,
    album VARCHAR(100) NOT NULL
);

