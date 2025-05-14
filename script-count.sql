-- Seleciona quantidade de linhas da Tab. Alunos
SELECT COUNT(*) AS Qtde FROM alunos

-- Seleciona quantidade de linhas da Tab. Docentes
SELECT COUNT(*) AS Qtde FROM docentes

-- Seleciona quantidade de linhas da Tab. Disciplinas
SELECT COUNT(*) AS Qtde FROM disciplinas

-- Seleciona quantidade de linhas da Tab. Notas
SELECT COUNT(*) AS Qtde FROM notas

-- Seleciona quantidade de alunos da Turma DS1P41
SELECT COUNT(*) AS Qtde FROM alunos 
WHERE cd_turma = 1

-- Seleciona quantidade de docentes com nome iniciando por 'Mar%'
SELECT COUNT(*) AS Qtde FROM docentes
WHERE nm_docente LIKE 'Mar%'

-- Seleciona quantidade de disciplinas lecionadas pelo(a) docente '92330139'
SELECT COUNT(*) AS Qtde FROM disciplinas
WHERE cd_docente = '92330139'

-- Seleciona quantidade de notas da disciplina PIM III (cód. = 24)
SELECT COUNT(*) AS Qtde FROM notas
WHERE cd_disciplina = 24

-- Seleciona quantidade de notas da disciplina Banco de Dados (cód. = 2)
SELECT COUNT(vl_np1) AS Qtde_NP1 FROM notas
WHERE cd_disciplina = 2

-- Seleciona quantidade de notas da disciplina Infra Computacional (cód. = 13)
SELECT COUNT(vl_np2) AS Qtde_NP2 FROM notas
WHERE cd_disciplina = 13



-- Seleciona a maior nota de NP1 da Tab. Notas
SELECT MAX(vl_np1) AS Maior_Nota_NP1 FROM notas

-- Seleciona a menor nota de NP2 da Tab. Notas
SELECT MIN(vl_np2) AS Menor_Nota_NP2 FROM notas

-- Seleciona a maior nota de NP2 da disciplina Matematica e Estatística (cód. = 17)
SELECT MAX(vl_np2) AS Maior_Nota_ME_NP2 FROM notas
WHERE cd_disciplina = 17

-- Seleciona a maior nota de NP2 da disciplina Banco de Dados (cód. = 2)
SELECT MAX(vl_np2) AS Maior_Nota_BD_NP2 FROM notas
WHERE cd_disciplina = 2

-- Seleciona a menor e a maior nota de NP1 da disciplina PIM III (cód. = 24)
SELECT MIN(vl_np1) AS Menor_Nota_PIM_NP1, MAX(vl_np1) AS Maior_Nota_PIM_NP1 FROM notas
WHERE cd_disciplina = 24



-- Seleciona a média das notas de NP2 da disciplina Infra Computacional (cód. = 13)
SELECT AVG(vl_np2) AS Media_IC_NP2 FROM notas
WHERE cd_disciplina = 24

-- Seleciona a média das notas de NP1 da disciplina Banco de Dados (cód. = 2)
SELECT AVG(vl_np1) AS Media_BD_NP1 FROM notas
WHERE cd_disciplina = 2

-- Seleciona a média das notas de NP1 da disciplina Banco de Dados (cód. = 2) da turma DS3A41 (cód. = 4)
SELECT AVG(vl_np1) AS Media_BD_NP1 FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
WHERE cd_disciplina = 2 AND cd_turma = 4

-- Seleciona a média das notas de NP1 da disciplina Banco de Dados (cód. = 2) da turma DS3C51 (cód. = 7)
SELECT AVG(vl_np1) AS Media_BD_NP1 FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
WHERE cd_disciplina = 2 AND cd_turma = 7

-- Seleciona a média das notas de NP2 da disciplina Banco de Dados (cód. = 24)
SELECT AVG(vl_NP2) AS Media_BD_NP2 FROM notas
WHERE cd_disciplina = 24

-- Seleciona a média das notas de NP1 da disciplina Banco de Dados (cód. = 2) da turma DS3A41 (cód. = 4)
SELECT AVG(vl_NP1) AS Media_BD_NP1 FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
WHERE cd_disciplina = 2 AND cd_turma = 4

-- Seleciona a média das notas de NP2 da disciplina Banco de Dados (cód. = 2) da turma DS3C51 (cód. = 7)
SELECT AVG(vl_NP2) AS Media_BD_NP2 FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
WHERE cd_disciplina = 2 AND cd_turma = 7

-- Seleciona a média das notas de NP1 da disciplina Banco de Dados (cód. = 2) da turma DS3C51 (cód. = 7)
SELECT ROUND(AVG(vl_np1),2) AS Media_NP1 FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
INNER JOIN turmas ON turmas.cd_turma = alunos.cd_turma
WHERE cd_disciplina = 2 AND ds_turma = 'DS3C51'

-- Seleciona matrícula, nome do aluno, sigla da turma e notas da NP1 e NP2 da disciplina PIM III (cód. = 24)
SELECT cd_aluno, nm_aluno, ds_turma, vl_np1, vl_np2 FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
INNER JOIN turmas ON turmas.cd_turma = alunos.cd_turma
WHERE cd_disciplina = 24

-- Inclua a média aritmética da disciplina PIM III (cód. = 24)
SELECT cd_aluno, nm_aluno, ds_turma, vl_np1, vl_np2, (vl_np1 + vl_np2)/2 AS média FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
INNER JOIN turmas ON turmas.cd_turma = alunos.cd_turma
WHERE cd_disciplina = 24

-- Aprimore, ordenando por turma e nome
SELECT cd_aluno, nm_aluno, ds_turma, vl_np1, vl_np2, (vl_np1 + vl_np2)/2 AS média FROM notas
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
INNER JOIN turmas ON turmas.cd_turma = alunos.cd_turma
WHERE cd_disciplina = 24
ORDER BY ds_turma, nm_aluno



-- Seleciona a média das notas de NP1 da disciplina PIM III (cód. = 24)
SELECT AVG(vl_NP1) AS Media_PLCP_NP1 FROM notas
WHERE cd_disciplina = 24

-- Seleciona a soma das notas, a qtde de notas e calcula a média de NP1 da disciplina PLCP (cód. = 19)
SELECT SUM(vl_NP1) AS Soma_PLCP_NP1, COUNT(vl_NP1) AS Qtde_PLCP_NP1, (SUM(vl_NP1)/COUNT(vl_NP1)) AS Media FROM notas
WHERE cd_disciplina = 19

