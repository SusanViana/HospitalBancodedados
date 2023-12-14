
DROP DATABASE IF EXISTS hospital;

-- Crie o banco de dados
CREATE DATABASE IF NOT EXISTS hospital;
USE hospital;

-- Crie a tabela especialidades
CREATE TABLE `especialidades` (
    `id_especialidade` INT NOT NULL AUTO_INCREMENT,
    `nome_da_especialidade` VARCHAR(520) NOT NULL,
    PRIMARY KEY (`id_especialidade`)
);

INSERT INTO `especialidades` (nome_especialidade) VALUES
('pediatria'),
('clínico Geral'),
('gastroenterologia'),
('dermatologia');


CREATE TABLE `medico` (
    `id` INT NOT NULL AUTO_INCREMENT, 
    `nome` VARCHAR(120) NOT NULL,
    `rg` VARCHAR(10) NOT NULL,
    `cpf` VARCHAR(11) NOT NULL,
	`email` VARCHAR(120) NOT NULL,
    `telefone` VARCHAR(11) NOT NULL,
	`especialidade` INT NOT NULL,
    `senha` VARCHAR(11) NOT NULL,
  
    PRIMARY KEY (`id`),
    CONSTRAINT `medico_fk0` FOREIGN KEY (`especialidade`) REFERENCES `especialidades`(`id_especialidade`)
);

INSERT INTO `medico` (cpf, rg, nome, email, telefone, senha, especialidade) VALUES
('11112222333', '987654321', 'Dra. Renata Almeida', 'renata.almeida@example.com', '11112222333', 'senha111', 4),
('44445555666', '123456789', 'Dr. Rafael Pereira', 'rafael.pereira@example.com', '44445555666', 'senha444', 4),
('77778888999', '987654321', 'Dra. Larissa Silva', 'larissa.silva@example.com', '77778888999', 'senha777', 3),
('12121212121', '123456789', 'Dr. Victor Oliveira', 'victor.oliveira@example.com', '12121212121', 'senha121', 3),
('13131313131', '987654321', 'Dra. Renan Lima', 'renan.lima@example.com', '13131313131', 'senha131', 2),
('14141414141', '123456789', 'Dr. Vanessa Santos', 'vanessa.santos@example.com', '14141414141', 'senha141', 2),
('15151515151', '987654321', 'Dra. Bruno Santos', 'bruno.santos@example.com', '15151515151', 'senha151', 2),
('16161616161', '123456789', 'Dr. Isabella Lima', 'isabella.lima@example.com', '16161616161', 'senha161', 1),
('17171717171', '987654321', 'Dra. Lucas Oliveira', 'lucas.oliveira@example.com', '17171717171', 'senha171', 1),
('18181818181', '123456789', 'Dr. Carolina Silva', 'carolina.silva@example.com', '18181818181', 'senha181', 1),
('19191919191', '987654321', 'Dra. Felipe Lima', 'felipe.lima@example.com', '19191919191', 'senha191', 2),
('20202020202', '123456789', 'Dr. Thais Oliveira', 'thais.oliveira@example.com', '20202020202', 'senha202', 3),
('21212121212', '987654321', 'Dra. Pedro Santos', 'pedro.santos@example.com', '21212121212', 'senha212', 4),
('22222222222', '123456789', 'Dr. Camila Lima', 'camila.lima@example.com', '22222222222', 'senha222', 4),
('23232323232', '987654321', 'Dra. Gustavo Oliveira', 'gustavo.oliveira@example.com', '23232323232', 'senha232', 3),
('24242424242', '123456789', 'Dr. Fernanda Santos', 'fernanda.santos@example.com', '24242424242', 'senha242', 2),
('25252525252', '987654321', 'Dra. Matheus Lima', 'matheus.lima@example.com', '25252525252', 'senha252', 1),
('26262626262', '123456789', 'Dr. Isadora Oliveira', 'isadora.oliveira@example.com', '26262626262', 'senha262', 2),
('27272727272', '987654321', 'Dra. Ricardo Santos', 'ricardo.santos@example.com', '27272727272', 'senha272', 4),
('28282828282', '123456789', 'Dr. Camila Santos', 'camila.santos@example.com', '28282828282', 'senha282', 3),
('29292929292', '987654321', 'Dra. Gustavo Lima', 'gustavo.lima@example.com', '29292929292', 'senha292', 1);



CREATE TABLE `paciente` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(120) NOT NULL, 
    `cpf` VARCHAR(11) NOT NULL,
    `telefone` VARCHAR(11) NOT NULL,
    `altura` FLOAT(5) NOT NULL,
    `endereco` VARCHAR(520) NOT NULL,
    `peso` INT NOT NULL,
    `rg` VARCHAR(10) NOT NULL,
    `data_nascimento` DATE NOT NULL,
    `rne` VARCHAR(14) NOT NULL,
    PRIMARY KEY (`id`)
);


INSERT INTO `paciente` (nome, endereco, rg, cpf, telefone, data_nascimento, altura, peso, rne) VALUES
('Maria Santos', 'Rua X, 123', '555566667', '12312312312',  '98765432101', '1992-08-15', 1.65, 55, 'RNE54321'),
('João Oliveira', 'Av. Y, 456', '888899991', '45645645645',  '87654321098', '1980-04-10', 1.70, 75, 'RNE67890'),
('Carolina Lima', 'Rua Z, 789', '444455556', '78978978978',  '76543210987', '1995-06-25', 1.75, 65, 'RNE87654'),
('Ricardo Souza', 'Av. W, 101', '333344445', '10101010101',  '65432109876', '1987-12-03', 1.80, 80, 'RNE76543'),
('Juliana Martins', 'Rua V, 202', '222233334', '20202020202',  '54321098765', '1990-03-20', 1.68, 70, 'RNE65432'),
('Fernando Lima', 'Av. U, 303', '666677778', '30303030303',  '43210987654', '1983-09-12', 1.72, 78, 'RNE54321'),
('Amanda Silva', 'Rua T, 404', '777788889', '40404040404',  '32109876543', '1994-05-07', 1.67, 60, 'RNE43210'),
('Mateus Oliveira', 'Av. S, 505', '111122223', '50505050505',  '21098765432', '1988-01-15', 1.76, 85, 'RNE32109'),
('Isabel Santos', 'Rua R, 606', '999900001', '60606060606',  '10987654321', '1992-10-28', 1.68, 63, 'RNE21098'),
('Roberto Souza', 'Av. Q, 707', '888899992', '70707070707',  '09876543210', '1985-07-06', 1.82, 90, 'RNE10987'),
('Luciana Lima', 'Rua P, 808', '444455557', '80808080808',  '98765432109', '1998-02-14', 1.63, 55, 'RNE09876'),
('Gustavo Martins', 'Av. O, 909', '333344446', '90909090909',  '87654321098', '1989-11-30', 1.75, 72, 'RNE98765'),
('Renata Santos', 'Rua N, 1010', '222233335', '10101010101',  '76543210987', '1984-04-02', 1.70, 68, 'RNE87654'),
('Bruno Lima', 'Av. M, 1111', '666677779', '11111111111',  '65432109876', '1996-08-19', 1.78, 77, 'RNE76543'),
('Aline Oliveira', 'Rua L, 1212', '777788880', '12121212121',  '54321098765', '1981-12-05', 1.66, 62, 'RNE65432');


CREATE TABLE `convenio` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `cnpj` VARCHAR(18) NOT NULL,
    `nome` VARCHAR(120) NOT NULL,
    `tempo_carencia` DATE NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `convenio` (nome, cnpj, tempo_carencia) VALUES
('Convenio Alpha', '98765432101234', '2023-01-05'),
('Convenio Beta', '54321098765432', '2023-02-20'),
('Convenio Gamma', '10987654321098', '2023-03-25'),
('Convenio Delta', '76543210987654', '2023-04-15'),
('Convenio Epsilon', '21098765432109', '2023-05-10'),
('Convenio Zeta', '65432109876543', '2023-06-30'),
('Convenio Eta', '10987654321098', '2023-07-20'),
('Convenio Theta', '98765432101234', '2023-08-35'),
('Convenio Iota', '54321098765432', '2023-09-27'),
('Convenio Kappa', '10987654321098', '2023-10-23'),
('Convenio Lambda', '76543210987654', '2023-11-17'),
('Convenio Mu', '21098765432109', '2023-12-10'),
('Convenio Nu', '65432109876543', '2024-01-20'),
('Convenio Xi', '10987654321098', '2024-02-25'),
('Convenio Omicron', '98765432101234', '2024-03-15');


CREATE TABLE `consulta` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `id_medico` INT NOT NULL,
    `id_paciente` INT NOT NULL,
    `data` DATE NOT NULL,
    `hora` TIME NOT NULL,
    `valor_consulta` VARCHAR(520) NOT NULL,
    `numero_paciente` VARCHAR(520) NOT NULL,
    `nome_convenio` INT NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `consulta_fk0` FOREIGN KEY (`id_medico`) REFERENCES `medico`(`id`),
    CONSTRAINT `consulta_fk1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente`(`id`),
    CONSTRAINT `consulta_fk2` FOREIGN KEY (`nome_convenio`) REFERENCES `convenio`(`id`)
);

INSERT INTO `consulta` (id_medico, id_paciente, data, hora, valor_consulta, numero_paciente, nome_convenio) VALUES
('1', '1', '2023-01-20', '08:00:00', '130.00', 'P123X', '1'),
('2', '2', '2023-03-14', '10:10:00', '160.00', 'P456Y', '2'),
('3', '3', '2023-03-20', '11:20:00', '110.00', 'P789Z', '3'),
('4', '4', '2023-04-05', '07:30:00', '180.00', 'P111A', '4'),
('5', '5', '2023-05-25', '13:00:00', '140.00', 'P222B', '5'),
('6', '6', '2023-07-08', '10:00:00', '120.00', 'P333C', '6'),
('7', '7', '2023-07-15', '10:30:00', '160.00', 'P444D', '7'),
('8', '8', '2023-08-30', '12:50:00', '130.00', 'P555E', '8'),
('9', '9', '2023-10-22', '13:00:00', '170.00', 'P666F', '9'),
('10', '10', '2023-10-29', '13:30:00', '140.00', 'P777G', '10'),
('11', '11', '2023-11-14', '09:15:00', '150.00', 'P888H', '11'),
('12', '12', '2023-12-05', '12:45:00', '180.00', 'P999I', '12'),
('13', '13', '2024-02-01', '08:00:00', '120.00', 'P121J', '13'),
('14', '14', '2024-02-20', '10:45:00', '160.00', 'P131K', '14'),
('15', '15', '2024-03-10', '11:30:00', '140.00', 'P141L', '15');


CREATE TABLE `receita` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `id_paciente` INT NOT NULL,
    `medicamento` VARCHAR(520) NOT NULL,
    `instrucoes` VARCHAR(520) NOT NULL,
    `quant_medicamento` FLOAT(3) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `receita_fk0` FOREIGN KEY (`id_paciente`) REFERENCES `paciente`(`id`)
);

INSERT INTO `receita` (id_paciente, medicamento, instrucoes, quant_medicamento) VALUES
('1', 'Aspirina', 'Tomar 1 comprimido a cada 4 horas', 20),
('2', 'Cefalexina', 'Tomar 1 comprimido a cada 6 horas', 15),
('3', 'Naproxeno', 'Tomar 1 comprimido a cada 8 horas', 30),
('4', 'Paracetamol', 'Tomar 1 comprimido a cada 12 horas', 25),
('5', 'Ranitidina', 'Tomar 1 comprimido antes do jantar', 30),
('6', 'Tramadol', 'Tomar 2 comprimidos a cada 6 horas', 20),
('7', 'Fexofenadina', 'Tomar 1 comprimido pela manhã', 10),
('8', 'Prednisona', 'Tomar 2 comprimidos pela manhã', 10),
('9', 'Ciprofloxacino', 'Tomar 1 comprimido a cada 24 horas', 10),
('10', 'Metronidazol', 'Tomar 1 comprimido a cada 12 horas', 15),
('11', 'Amlodipina', 'Tomar 1 comprimido pela manhã', 30),
('12', 'Propranolol', 'Tomar 0.5 comprimido pela noite', 30),
('13', 'Atorvastatina', 'Tomar 1 comprimido antes do almoço', 30),
('14', 'Pioglitazona', 'Tomar 1 comprimido antes do jantar', 30),
('15', 'Insulina Regular', 'Aplicar 15 unidades antes do café da manhã', 10);



CREATE TABLE `enfermeiros` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(120) NOT NULL,
    `cpf` VARCHAR(11) NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `enfermeiros` (nome, cpf) VALUES
('Enfermeira Patrícia Oliveira', '98765432101'),
('Enfermeiro André Silva', '87654321012'),
('Enfermeira Carolina Santos', '76543210923'),
('Enfermeiro Bruno Lima', '65432109834'),
('Enfermeira Renata Souza', '54321098745'),
('Enfermeiro Camilo Oliveira', '43210987656'),
('Enfermeira Beatriz Martins', '32109876567'),
('Enfermeiro Diego Santos', '21098765478'),
('Enfermeira Isabel Lima', '10987654389'),
('Enfermeiro Felipe Oliveira', '01234567890'),
('Enfermeira Amanda Martins', '98765432101'),
('Enfermeiro Lucas Silva', '87654321012'),
('Enfermeira Vanessa Lima', '76543210923'),
('Enfermeiro Rafael Souza', '65432109834'),
('Enfermeira Bianca Oliveira', '54321098745');


CREATE TABLE `tipo_quartos` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `descricao` VARCHAR(520) NOT NULL,
    `valor_diariO` VARCHAR(520) NOT NULL,
    
    PRIMARY KEY (`id`)
);

INSERT INTO `tipo_quartos` (valor_diaria, descricao) VALUES
('320.00', 'Quarto Luxo Vista Mar'),
('270.00', 'Quarto Luxo Vista Cidade'),
('300.00', 'Quarto Superior 1'),
('280.00', 'Quarto Superior 2'),
('290.00', 'Quarto Superior 3'),
('310.00', 'Quarto Deluxe 1'),
('500.00', 'Quarto Deluxe 2'),
('620.00', 'Quarto Júnior 1'),
('630.00', 'Quarto Júnior 2'),
('640.00', 'Quarto Executivo 1'),
('650.00', 'Quarto Executivo 2'),
('980.00', 'Quarto Presidencial 1'),
('990.00', 'Quarto Presidencial 2'),
('1000.00', 'Quarto Presidencial 3');



CREATE TABLE `quarto` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `tipo` INT NOT NULL,
    `numero` INT NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `quarto_fk0` FOREIGN KEY (`tipo`) REFERENCES `tipo_quartos`(`id`)
);

INSERT INTO `quarto` (tipo, numero) VALUES
(1, 111),
(2, 112),
(3, 113),
(4, 114),
(5, 115),
(6, 211),
(7, 212),
(8, 213),
(9, 311),
(10, 312),
(11, 411),
(12, 412),
(13, 413),
(14, 511),
(15, 512);


CREATE TABLE `internacao` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `id_medico` INT NOT NULL,
    `id_paciente` INT NOT NULL,
    `id_quarto` INT NOT NULL,
    `id_enfermeira` INT NOT NULL,
    `data_entrada` DATE NOT NULL,
    `data_prev_alta` DATE NOT NULL,
    `data_alta` DATE NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `internacao_fk0` FOREIGN KEY (`id_medico`) REFERENCES `medico`(`id`),
    CONSTRAINT `internacao_fk1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente`(`id`),
    CONSTRAINT `internacao_fk2` FOREIGN KEY (`id_quarto`) REFERENCES `quarto`(`id`),
    CONSTRAINT `internacao_fk3` FOREIGN KEY (`id_enfermeira`) REFERENCES `enfermeiros`(`id`)
);

INSERT INTO `internacao` (id_medico, id_paciente, id_quarto, id_enfermeira, data_entrada, data_prev_alta, data_alta) VALUES
('1', '1', 1, '1', '2023-01-01', '2023-01-10', '2023-01-15'),
('2', '2', 2, '2', '2023-02-01', '2023-02-10', '2023-02-15'),
('3', '3', 3, '3', '2023-03-01', '2023-03-10', '2023-03-15'),
('4', '4', 4, '4', '2023-04-01', '2023-04-10', '2023-04-15'),
('5', '5', 5, '5', '2023-05-01', '2023-05-10', '2023-05-15'),
('6', '6', 6, '6', '2023-06-01', '2023-06-10', '2023-06-15'),
('7', '7', 7, '7', '2023-07-01', '2023-07-10', '2023-07-15'),
('8', '8', 8, '8', '2023-08-01', '2023-08-10', '2023-08-15'),
('9', '9', 9, '9', '2023-09-01', '2023-09-10', '2023-09-15'),
('10', '10', 10, '10', '2023-10-01', '2023-10-10', '2023-10-15'),
('11', '11', 11, '11', '2023-11-01', '2023-11-10', '2023-11-15'),
('12', '12', 12, '12', '2023-12-01', '2023-12-10', '2023-12-15'),
('13', '13', 13, '13', '2024-01-01', '2024-01-10', '2024-01-15'),
('14', '14', 14, '14', '2024-02-01', '2024-02-10', '2024-02-15'),
('15', '15', 15, '15', '2024-03-01', '2024-03-10', '2024-03-15');

ALTER TABLE medico ADD em_atividade VARCHAR(100);

UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 1;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 2;
UPDATE medico SET em_atividade = 'Inativo' WHERE id_medico = 3;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 4;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 5;
UPDATE medico SET em_atividade = 'Inativo' WHERE id_medico = 6;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 7;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 8;
UPDATE medico SET em_atividade = 'Inativo' WHERE id_medico = 9;
UPDATE medico SET em_atividade = 'Ativo' WHERE id_medico = 10;

SELECT *
FROM Consulta
WHERE YEAR(Data_consulta) = 2020 OR id_Convenio IS NOT NULL;

SELECT AVG(Valor_consulta) AS ValorMedioConsultas
FROM Consulta
WHERE YEAR(Data_consulta) = 2020 OR id_Convenio IS NOT NULL;

SELECT *
FROM Internacao
WHERE Data_efet_alta > Data_prev_alta;

SELECT *
FROM receita
WHERE id_consulta = (SELECT MIN(id_consulta) FROM Consulta);

SELECT *
FROM consulta
WHERE id_convenio IS NULL
ORDER BY valor_consulta DESC
LIMIT 1;

SELECT *
FROM consulta
WHERE id_convenio IS NULL
ORDER BY valor_consulta ASC
LIMIT 1;

select *, DATEDIFF(data_efet_alta, data_entrada) dias_internado, tipo_quarto.valor_diario, DATEDIFF(data_efet_alta, data_entrada) * tipo_quarto.valor_diario valor_total from internacao inner join quarto 
on internacao.id_quarto = quarto.id_quarto inner join tipo_quarto 
on quarto.id_tipo_quarto = tipo_quarto.id_tipo_quarto;

SELECT I.data_entrada, I.desc_procedimentos, I.id_quarto
FROM internacao I
JOIN Quarto Q ON I.id_quarto = Q.id_quarto
WHERE id_tipo_quarto = 'apartamento';

select nome_paciente, data_consulta, nome_especialidade from consulta c inner join paciente p 
on p.id_paciente = c.id_paciente inner join especialidade e 
on e.id_especialidade = c.id_especialidade 
where c.id_especialidade <> 1 and year(c.data_consulta) - year(p.data_nascimento_paciente) < 19 and year(c.data_consulta) - year(p.data_nascimento_paciente) > 0 
order by c.data_consulta;

SELECT nome_paciente, nome_medico, data_entrada, desc_procedimentos
FROM internacao I
JOIN medico M ON I.id_medico = M.id_medico
JOIN paciente P ON I.id_paciente = P.id_paciente
WHERE M.id_especialidade = 'gastroenterologia'; -- AND I.id_tipo_quarto = 'enfermaria' essa parte não funciona 

SELECT nome_medico, COUNT(C.id_consulta) AS QuantConsultas
FROM medico 
LEFT JOIN consulta  ON id_medico = id_medico
GROUP BY nome_medico;

SELECT *
FROM medico
WHERE nome_medico LIKE '%Gabriel%';

SELECT nome_enfermeiro, E.cre, COUNT(I.id_internacao) AS NumeroInternacoes
FROM enfermeiro E
JOIN ParticipacaoEnfermeiro P ON E.id_enfermeiro = P.id_enfermeiro
JOIN internacao I ON P.id_internacao = I.id_internacao
GROUP BY E.nome_enfermeiro, E.cre
HAVING COUNT(I.id_internacao) > 1;









