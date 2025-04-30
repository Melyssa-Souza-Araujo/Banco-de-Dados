USE universidade;

SELECT * FROM turmas;

-- exerc�cio 1
SELECT * FROM docentes;

-- exerc�cio 2
SELECT cd_docente, nm_docente 
FROM docentes;

-- exerc�cio 3
SELECT * FROM disciplinas;

-- exerc�cio 4
SELECT * FROM alunos;

-- exerc�cio 5
SELECT nm_aluno, dt_matricula 
FROM alunos;

-- exerc�cio 6
SELECT * FROM notas;


SELECT * FROM turmas
WHERE cd_turma <= 4

SELECT * FROM turmas
WHERE ds_turma LIKE '%A%'

-- exerc�cio 1 where
SELECT * FROM docentes
WHERE cd_docente = '9233251013'

-- exerc�cio 2 where
SELECT * FROM alunos
WHERE cd_turma = 6

-- exerc�cio 3 where
SELECT * FROM alunos
WHERE dt_matricula > 2024-03-31

--  exerc�cio 4 where
SELECT * FROM alunos
WHERE cd_matricula LIKE 'G%'

--  exerc�cio 5 where
SELECT * FROM disciplinas
WHERE ds_disciplina LIKE '%SISTEMA%'

--  exerc�cio 6 where
SELECT * FROM disciplinas
WHERE cd_docente LIKE '%9233199257%'

-- exerc�cio 8 where (o professor decidiu pular o 7)
SELECT * FROM disciplinas
WHERE ds_disciplina LIKE '%SISTEMA%' 
OR ds_disciplina LIKE '%COMPUTADOR%'

--  exerc�cio 9 where
SELECT * FROM disciplinas
WHERE (ds_disciplina LIKE '%SISTEMA%' 
OR ds_disciplina LIKE '%COMPUTADOR%')
AND cd_docente LIKE '92331%'