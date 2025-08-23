CREATE DATABASE IF NOT EXISTS PROYECTO;
USE PROYECTO;
CREATE TABLE IF NOT EXISTS T_USUARIO(
    id_usuario  int(11) auto_increment NOT NULL,
    nombre       varchar(100)          NOT NULL,
    apellidos    varchar(100)          NOT NULL,
    
    email        varchar(200)          NOT NULL,
    password    varchar(250)          NOT NULL,
    rol          varchar(20),
    imagen       varchar(255),
    CONSTRAINT   pk_usuario        PRIMARY KEY(id_usuario),
    CONSTRAINT   uq_email          UNIQUE(email)      

)ENGINE=InnoDb;

INSERT INTO t_usuario VALUES(NULL,'admin','admin','admin@admin.com','1234','admin','imagen')