USE Hospital;
-- Seleciona linhas da Tab. Destinos
SELECT * FROM destinos

-- Insere nova linha na Tab. Destinos
INSERT INTO destinos (ds_destino)
VALUES ('Outro Hospital')

-- Seleciona de novo as linhas da Tab. Destinos
SELECT * FROM destinos

-- Altera o conteúdo da linha 4
UPDATE destinos
SET ds_destino = 'Hospital de Referência'
WHERE cd_destino = 4

-- Seleciona de novo as linhas da Tab. Destinos
SELECT * FROM destinos


-- Seleciona os atendimentos encaminhados para destino 3
SELECT * FROM encaminhamentos
WHERE cd_destino = 3

-- Altera os encaminhamentos para destino 3 e maiores que 1035 para destino 4
UPDATE encaminhamentos
SET cd_destino = 4
WHERE cd_destino = 3 AND cd_atendimento >= 1035 

-- Seleciona os atendimentos encaminhados para destino 3 ou 4
SELECT * FROM encaminhamentos
WHERE cd_destino = 3 OR cd_destino = 4