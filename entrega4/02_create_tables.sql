
/*
   =========================================================
   PROJETO: Projeto Academia UA
   GRUPO: Bruna da Silva Sant'Ana, Gabriel Ortega Vieira
   DISCIPLINA: Banco de Dados
   PROFESSOR: Caio
   DATA: 15/10/2026

   DESCRIÇÃO:
   Script de criação das tabelas do banco de dados
   Academia UA, incluindo chaves primárias, chaves
   estrangeiras e restrições de integridade.

   REFERÊNCIA:
   Script baseado no dicionário de dados versão 1.0
   =========================================================
*/

/*
   =========================================================
   CONFIGURAÇÕES INICIAIS
   =========================================================
*/

-- Define o schema padrão para a criação das tabelas.
SET search_path TO public;

/*
   =========================================================
   CRIAÇÃO DE OBJETOS
   =========================================================
*/
	CREATE TABLE Instrutor(
	
		id_instrutor SERIAL PRIMARY KEY,
		nome VARCHAR(30) NOT NULL,
		cpf VARCHAR(11) UNIQUE NOT NULL,
		telefone VARCHAR(11),
		especialidade VARCHAR(50),
		horario_trabalho TIME
	
	);
	
	CREATE TABLE Plano (
		
		id_plano SERIAL PRIMARY KEY,
		nome VARCHAR(30) NOT NULL,
		descricao VARCHAR(100),
		valor_mensal DECIMAL(10,2) NOT NULL,
		duracao VARCHAR(20),
		beneficios VARCHAR(200)
	
	);
	
	CREATE TABLE Aula (
		
		id_aula SERIAL PRIMARY KEY,
		nome VARCHAR(50) NOT NULL,
		descricao VARCHAR(100),
		capacidade_max INTEGER,
		horario TIME,
		codigo_instrutor INTEGER,
	
		FOREIGN KEY (codigo_instrutor) REFERENCES Instrutor(id_instrutor)
	);
	
	CREATE TABLE Aluno (
	
		id_aluno SERIAL PRIMARY KEY,
		nome VARCHAR(50) NOT NULL,
		cpf VARCHAR(11) UNIQUE NOT NULL,
		dt_nascimento DATE,
		telefone VARCHAR(11),
		email VARCHAR(30),
		dt_matricula DATE,
		codigo_plano INTEGER,
	
		FOREIGN KEY (codigo_plano) REFERENCES Plano(id_plano)
	);
	
	CREATE TABLE Frequencia (
	
		id_frequencia SERIAL PRIMARY KEY,
		data_entrada DATE NOT NULL,
		hora_entrada TIME NOT NULL,
		codigo_aluno INTEGER NOT NULL,
	
		FOREIGN KEY (codigo_aluno) REFERENCES Aluno(id_aluno)
	);
	
	CREATE TABLE Inscreve (
	
		id_inscreve SERIAL PRIMARY KEY,
		codigo_aluno INTEGER NOT NULL,
		codigo_aula INTEGER NOT NULL,
	
		FOREIGN KEY (codigo_aluno) REFERENCES Aluno(id_aluno),
		FOREIGN KEY (codigo_aula) REFERENCES Aula(id_aula)
	);
/*
   =========================================================
   OBSERVAÇÕES
   =========================================================
*/

-- Este script deve ser executado após 01_create_database.sql.
-- É necessário estar conectado ao banco academia_ua.
-- As tabelas são criadas em ordem de dependência,
-- garantindo a integridade das chaves estrangeiras.
