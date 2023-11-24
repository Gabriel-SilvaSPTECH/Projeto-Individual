CREATE DATABASE FielAlvinegro;
USE FielAlvinegro;

CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(45),
    senha VARCHAR(45),
    fkEndereco INT,
    FOREIGN KEY (fkEndereco) REFERENCES endereco(idEndereco),
    fkQuiz INT,
    FOREIGN KEY (fkQuiz) REFERENCES quiz(idQuiz)
);

CREATE TABLE endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    CEP VARCHAR(10)
);

CREATE TABLE quiz (
	idQuiz INT PRIMARY KEY AUTO_INCREMENT,
    qtdAcertos INT,
    qtdErros INT
);
