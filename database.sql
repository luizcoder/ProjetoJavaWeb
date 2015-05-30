

create database javaweb;
use javaweb;

CREATE TABLE tb_usuario(
id_usuario SERIAL,
nm_usuario VARCHAR(40) CONSTRAINT nn_nm_usuario NOT NULL,
nm_login VARCHAR(10) CONSTRAINT uq_login UNIQUE,
senha VARCHAR(35) CONSTRAINT nn_senha NOT NULL,
dt_admissao VARCHAR(10),
fg_ativo INTEGER CONSTRAINT nn_fg_ativo NOT NULL,
CONSTRAINT pk_id_usuario PRIMARY KEY(id_usuario)
);