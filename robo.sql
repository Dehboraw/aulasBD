CREATE DATABASE robo;
USE robo;

CREATE TABLE paciente(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	nome VARCHAR(250) NOT NULL,
    cpf INT NOT NULL,
    genero VARCHAR(50),
    telefone NUMERIC(11), 
    email VARCHAR(250),
    endereco VARCHAR(250),
    data_nascimento DATE,
    data_de_cadastro DATETIME
);

CREATE TABLE colaboradores(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(250) NOT NULL,
    cpf INT NOT NULL,
    telefone NUMERIC(11), 
    email VARCHAR(250),
    funcao VARCHAR(150),
    data_de_cadastro DATETIME, 
    cargo VARCHAR(250) NOT NULL,
    crm INT,
    status BOOLEAN
);

CREATE TABLE consulta(
	id INT NOT NULL AUTO_INCREMENT,
    local VARCHAR(250),
    horario DATETIME
);

INSERT INTO colaboradores (nome, cpf, telefone, email, funcao, data_de_cadastro, cargo, crm, status) VALUES 
('João Silva', 123456789, 11999999999, 'joao.silva@email.com', 'Médico', NOW(), 'Psiquiatra', 123456, TRUE);
