-- Inserção de notas por disciplina
--INSERT INTO notas (cd_disciplina, cd_aluno, vl_np1, vl_np2)
--SELECT 24, cd_matricula, CAST(SUBSTRING(cd_matricula,6,1) AS float), CAST(SUBSTRING(cd_matricula,8,1) AS float) 
--FROM alunos WHERE cd_turma = 7

-- Ajusta notas para maior que 5
--UPDATE notas
--SET vl_np1 = vl_np1 + 3
--WHERE vl_np1 <= 6 AND cd_disciplina = 24 AND cd_nota >= 85

-- Seleção de notas de um aluno
SELECT cd_nota, cd_aluno, nm_aluno, notas.cd_disciplina, ds_disciplina, vl_np1, vl_np2 FROM notas
INNER JOIN disciplinas ON disciplinas.cd_disciplina = notas.cd_disciplina
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
WHERE cd_aluno = 'ADS4047116' 


-- Seleção de notas de um aluno
SELECT cd_nota, cd_aluno, nm_aluno, notas.cd_disciplina, ds_disciplina, vl_np1, vl_np2 FROM notas
INNER JOIN disciplinas ON disciplinas.cd_disciplina = notas.cd_disciplina
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
WHERE cd_aluno = 'ADS4047116' 


-- Seleção de notas de uma disciplina
SELECT cd_nota, cd_aluno, nm_aluno, notas.cd_disciplina, ds_disciplina, vl_np1, vl_np2, (vl_np1 + vl_np2)/2 AS vl_media FROM notas
INNER JOIN disciplinas ON disciplinas.cd_disciplina = notas.cd_disciplina
INNER JOIN alunos ON alunos.cd_matricula = notas.cd_aluno
WHERE ds_disciplina LIKE 'Banco%' 
ORDER BY nm_aluno
