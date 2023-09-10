CREATE DATABASE sitefeiradb;

USE sitefeiradb;

create table tb_inscricao (
        id_inscricao                int primary key auto_increment,
        nm_nome                      varchar(100),
        nm_ser_chamado                varchar(50),
        ds_email                    varchar(30),
        nr_telefone                    varchar(20),
        nm_bairro                    varchar(20),
        ds_prev_chegada                varchar(50),
        ds_sabendo                    varchar(50),
        ds_foialuno                    varchar(50),
        bt_visitou                    boolean
);