use bd_tsi_clinica;

create table Ambulatorios
(
nroa int not null auto_increment,
andar numeric(3) not null,
capacidade smallint,
primary key (nroa)
);



create table Medicos
( 
codm int not null auto_increment,
nome varchar(40) not null,
idade smallint not null,
especialidade char(20),
CPF numeric(11) unique,
cidade varchar(30),
fk_nroa int REFERENCES ambulatorios(nroa), 
primary key (codm) 
);
  
  
  
  create table Pacientes
  (
  codp int not null auto_increment,
  nome varchar(40) not null,
  idade smallint not null,
  cidade char(30), 
  CPF numeric(11) unique,
  doenca varchar(40),
  primary key(codp)
  );
  
  
  
create table Funcionarios
(
codf int not null auto_increment,
nome varchar(40) not null,
idade smallint,
CPF numeric(11) unique,
cidade varchar(30),
salario numeric(10),
cargo varchar(20),
primary key (codf)
);



create table Consultas
(
codm int not null auto_increment,
fk_codp int REFERENCES pacientes (codp),
dataa date, 
hora time,
primary key (codm,dataa,hora) 
);

#inserção do dados na tabela Ambulatorios
INSERT INTO Ambulatorios (andar, capacidade)
VALUES (1,30);
INSERT INTO Ambulatorios (andar, capacidade)
VALUES (1,50);
INSERT INTO Ambulatorios (andar, capacidade)
VALUES (2,40);
INSERT INTO Ambulatorios (andar, capacidade)
VALUES (2,25);
INSERT INTO Ambulatorios (andar, capacidade)
VALUES (2,55);

#inserção do dados na tabela Medicos
INSERT INTO Medicos (nome, idade, especialidade, CPF, cidade, fk_nroa)
VALUES ('Joao',40, 'ortopedia', 10000100000, 'Florianopolis', 1);
INSERT INTO Medicos (nome, idade, especialidade, CPF, cidade, fk_nroa)
VALUES ('Maria',42, 'traumatologia', 10000110000, 'Blumenau', 2);
INSERT INTO Medicos (nome, idade, especialidade, CPF, cidade, fk_nroa)
VALUES ('Pedro',51, 'pediatria', 11000100000, 'São José', 2);
INSERT INTO Medicos (nome, idade, especialidade, CPF, cidade)
VALUES ('Carlos',28, 'ortopedia', 11000110000, 'Joinville');
INSERT INTO Medicos (nome, idade, especialidade, CPF, cidade, fk_nroa)
VALUES ('Marcia',33, 'neurologia', 11000111000, 'Biguacu', 3);

#inserção do dados na tabela Pacientes
INSERT INTO Pacientes (nome, idade, cidade, CPF, doenca)
VALUES ('Ana',20, 'Florianopolis', 20000200000, 'gripe');
INSERT INTO Pacientes (nome, idade, cidade, CPF, doenca)
VALUES ('Paulo',24, 'Palhoca', 20000220000, 'fratura');
INSERT INTO Pacientes (nome, idade, cidade, CPF, doenca)
VALUES ('Lucia',30, 'Biguacu', 22000200000, 'tendinite');
INSERT INTO Pacientes (nome, idade, cidade, CPF, doenca)
VALUES ('Carlos',28, 'Joinville', 11000110000, 'sarampo');

#inserção do dados na tabela Funcionarios
INSERT INTO Funcionarios (nome, idade, CPF, cidade, salario)
VALUES ('Rita', 32, 20000100000,'Sao Jose', 1200);
INSERT INTO Funcionarios (nome, idade, CPF, cidade, salario)
VALUES ('Maria', 55, 30000110000,'Palhoca', 1220);
INSERT INTO Funcionarios (nome, idade, CPF, cidade, salario)
VALUES ('Caio', 45, 41000100000,'Florianopolis', 1100);
INSERT INTO Funcionarios (nome, idade, CPF, cidade, salario)
VALUES ('Carlos', 44, 51000110000,'Florianopolis', 1200);
INSERT INTO Funcionarios (nome, idade, CPF, cidade, salario)
VALUES ('Paula', 33, 61000111000,'Florianopolis', 2500);

#ALTER TABLE Consultas DROP COLUMN codp;
#inserção do dados na tabela Consultas
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (1, '2006/06/12', '14:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (4, '2006/06/13', '10:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (1, '2006/06/13', '09:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (2, '2006/06/13', '11:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (3, '2006/06/14', '14:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (4, '2006/06/14', '17:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (1, '2006/06/19', '18:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (3, '2006/06/12', '10:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (4, '2006/06/19', '13:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (4, '2006/06/20', '13:00');
INSERT INTO Consultas (fk_codp, dataa, hora)
VALUES (4, '2006/06/22', '19:30');

UPDATE Pacientes SET cidade = 'Ilhota' 
WHERE codp=2;
UPDATE Consultas SET dataa = '2006/07/04/', hora='12:00' 
WHERE (codm = 1) AND (codp = 4);
UPDATE Pacientes SET doenca = 'cancer' 
WHERE codp = 1;
UPDATE Consultas SET hora = '14:30' WHERE codm = 3 AND codp = 4;
DELETE


