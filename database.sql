-- SGBD: MySql 
-- Host: localhost
-- User: javaweb
-- Database: pwj_crud
-- Charset: utf-8
-- Password: javaweb


DROP DATABASE IF EXISTS pwj_crud;
CREATE DATABASE pwj_crud CHARACTER SET utf8 COLLATE utf8_bin;

DROP USER  'javaweb'@'localhost';
CREATE USER 'javaweb'@'localhost' IDENTIFIED BY 'javaweb';
GRANT ALL ON pwj_crud.* TO 'javaweb'@'localhost';

USE pwj_crud;



-- Table: tb_usuario
-- Columns: id_usuario, nm_usuario, nm_login, senha, dt_admissao, fg_ativo
CREATE TABLE tb_usuario(
id_usuario SERIAL,
nm_usuario VARCHAR(40) NOT NULL,
nm_login VARCHAR(10) UNIQUE NOT NULL,
senha CHAR(32) NOT NULL,
dt_admissao VARCHAR(10),
fg_ativo INTEGER NOT NULL DEFAULT 0,
CONSTRAINT pk_id_usuario PRIMARY KEY(id_usuario)
);

insert into tb_usuario ( nm_usuario, nm_login, senha, dt_admissao, fg_ativo ) values ('Marcelo','mbeltrame',md5('minhasenha'),'08/05/2015',1);