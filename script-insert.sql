USE Universidade

-- Inclusão na Tab. Turmas
INSERT INTO turmas (ds_turma)
VALUES	('DS1A51'),
		('DS2B51'),
		('DS3C51'),
		('DS4D51')



-- Inclusão na Tab. Docentes
INSERT INTO docentes (cd_docente, nm_docente) 
VALUES	('9233251013', 'LUIZ ANTONIO MOURA'),
		('9233158269', 'ARMANDO ALENCAR'),
		('9233201456', 'HUMBERTO GUIMARÃES'),
		('9233199257', 'BENEDITO DA SILVA')

			   
-- Inclusão na Tab. Alunos
INSERT INTO alunos (cd_matricula, nm_aluno, dt_matricula, cd_turma) 
VALUES  ('G9403H0', 'ALICE FERNANDES', '2024-01-20', 1),
		('G05CAI5', 'DAVID DA SILVA', '2024-01-22', 1),
		('T547BH0', 'GUSTAVO VICTAL', '2024-01-27', 1),
		('G73IEJ1', 'MELYSSA ARAUJO', '2024-02-02', 2),
		('G7737I4', 'RENAN RIBEIRO', '2024-02-02', 2)


-- Inclusão na Tab. Disciplinas
INSERT INTO disciplinas (ds_disciplina, cd_docente) 
VALUES  ('ANALISE DE SISTEMAS ORIENTADA A OBJETOS', '9233251013'),
		('BANCO DE DADOS', '9233158269'),
		('ENGENHARIA DE SOFTWARE', '9233201456'),
		('FUNDAMENTOS DE SISTEMAS OPERACIONAIS', '9233199257'),
		('ORGANIZACAO DE COMPUTADORES', '9233199257')

