USE universidade;

SELECT * FROM turmas;

-- exercício 1
SELECT * FROM docentes;

-- exercício 2
SELECT cd_docente, nm_docente 
FROM docentes;

-- exercício 3
SELECT * FROM disciplinas;

-- exercício 4
SELECT * FROM alunos;

-- exercício 5
SELECT nm_aluno, dt_matricula 
FROM alunos;

-- exercício 6
SELECT * FROM notas;


SELECT * FROM turmas
WHERE cd_turma <= 4

SELECT * FROM turmas
WHERE ds_turma LIKE '%A%'

-- exercício 1 where
SELECT * FROM docentes
WHERE cd_docente = '9233251013'

-- exercício 2 where
SELECT * FROM alunos
WHERE cd_turma = 6

-- exercício 3 where
SELECT * FROM alunos
WHERE dt_matricula > 2024-03-31

--  exercício 4 where
SELECT * FROM alunos
WHERE cd_matricula LIKE 'G%'

--  exercício 5 where
SELECT * FROM disciplinas
WHERE ds_disciplina LIKE '%SISTEMA%'

--  exercício 6 where
SELECT * FROM disciplinas
WHERE cd_docente LIKE '%9233199257%'

-- exercício 8 where (o professor decidiu pular o 7)
SELECT * FROM disciplinas
WHERE ds_disciplina LIKE '%SISTEMA%' 
OR ds_disciplina LIKE '%COMPUTADOR%'

--  exercício 9 where
SELECT * FROM disciplinas
WHERE (ds_disciplina LIKE '%SISTEMA%' 
OR ds_disciplina LIKE '%COMPUTADOR%')
AND cd_docente LIKE '92331%'
