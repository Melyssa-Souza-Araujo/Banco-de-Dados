-- CREATE DATABASE Hospital;
USE Hospital;

-- exerc�cio 1
SELECT COUNT(*) AS QtdePacientes FROM pacientes;

-- exerc�cio 2
SELECT COUNT(*) AS QtdeProfissionais FROM profissionais;

-- exerc�cio 3
SELECT COUNT(*) AS QtdeMedicamentos FROM medicamentos;

-- exerc�cio 4
SELECT * FROM tipos_profissionais;

-- exerc�cio 5
SELECT COUNT(*) AS QtdeProfissionais FROM profissionais
	WHERE cd_tipo_profissional LIKE '%M%';

-- exerc�cio 6
SELECT COUNT(*) AS QtdeTriagem FROM triagem
	WHERE cd_enfermeiro = 20;

-- exerc�cio 7
SELECT AVG(vl_pulso) AS MediaPulso FROM triagem
	WHERE cd_enfermeiro = 20;

-- exerc�cio 8
SELECT MIN(vl_PA) AS MenorPulso, MAX(vl_PA) AS MaiorPulso FROM triagem
	WHERE cd_enfermeiro = 20;

-- exerc�cio 9
SELECT * FROM pacientes
	WHERE nm_paciente LIKE '%MAR%';

-- exerc�cio 10
SELECT * FROM atendimentos
	WHERE cd_medico = 10;

-- exerc�cio 1 com inner join
SELECT cd_atendimento, cd_triagem, cd_medico, nm_profissional, cd_CID FROM atendimentos
	INNER JOIN profissionais ON profissionais.cd_profissional = atendimentos.cd_medico
	WHERE cd_medico = 10;

-- exerc�cio 2 com inner join
SELECT cd_atendimento, cd_triagem, cd_medico, nm_profissional, atendimentos.cd_CID, ds_doenca FROM atendimentos
	INNER JOIN profissionais ON profissionais.cd_profissional = atendimentos.cd_medico
	INNER JOIN CID ON CID.cd_CID = atendimentos.cd_CID
	WHERE cd_medico = 10;

-- exerc�cio 3 com inner join
SELECT cd_atendimento, cd_triagem, cd_medico, nm_profissional, atendimentos.cd_CID, ds_doenca FROM atendimentos
	INNER JOIN profissionais ON profissionais.cd_profissional = atendimentos.cd_medico
	INNER JOIN CID ON CID.cd_CID = atendimentos.cd_CID
	INNER JOIN triagem ON triagem.cd_triagem = atendimentos.cd_triagem
	INNER JOIN pacientes ON pacientes.cd_paciente = triagem.cd_paciente
	WHERE cd_medico = 10;