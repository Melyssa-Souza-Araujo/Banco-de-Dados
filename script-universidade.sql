CREATE DATABASE universidade;
USE universidade;

CREATE TABLE aluno(
cd_matricula char(10) NOT NULL,
nm_aluno varchar(50) NOT NULL,
dt_matricula datetime NOT NULL,
cd_turma int NULL);

CREATE TABLE turmas(
cd_turma int IDENTITY(1,1) NOT NULL, -- IDENTITY código automático
ds_turma char(6) NOT NULL);

CREATE TABLE docentes(
cd_docente char(10) NOT NULL,
nm_docente varchar(50) NOT NULL);

CREATE TABLE disciplinas(
cd_disciplina int IDENTITY(1,1) NOT NULL,
ds_disciplina varchar(50) NOT NULL,
cd_docente char(10) NULL);

CREATE TABLE notas(
cd_nota int IDENTITY(1,1) NOT NULL,
cd_disciplina int NOT NULL,
cd_aluno char(10) NOT NULL,
vl_np1 float NULL,
vl_np2 float NULL,
vl_exame float NULL);