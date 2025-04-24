USE universidade;
CREATE TABLE teste(
cd_matricula char(10) NOT NULL,
nm_aluno varchar(50) NOT NULL,
dt_matricula datetime NOT NULL,
id_turma int NULL);

-- adiciona coluna
ALTER TABLE teste
ADD ds_email varchar(50)

-- altera atributo já adicionado
ALTER TABLE teste
ALTER COLUMN ds_email varchar(150)

-- renomear
EXEC sp_rename 'teste.ds_email', 'ds_email_modificada', 'COLUMN';

-- removeatributo adicionado
ALTER TABLE teste
DROP COLUMN ds_email_modificada

-- exclui a tabela
DROP TABLE teste