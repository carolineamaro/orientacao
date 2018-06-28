-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 28/06/2018 às 03:59
-- Versão do servidor: 10.1.31-MariaDB
-- Versão do PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `orientacao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `orientacao`
--

CREATE TABLE `orientacao` (
  `id_orientacao` int(11) NOT NULL,
  `tema` varchar(200) NOT NULL,
  `aluno` varchar(200) NOT NULL,
  `id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `orientacao`
--

INSERT INTO `orientacao` (`id_orientacao`, `tema`, `aluno`, `id_professor`) VALUES
(2, 'Desenvolvimento Web', 'Caroline Amaro Correa', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `professor`
--

INSERT INTO `professor` (`id_professor`, `nome`) VALUES
(2, 'Renilson Picinin');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `orientacao`
--
ALTER TABLE `orientacao`
  ADD PRIMARY KEY (`id_orientacao`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `orientacao`
--
ALTER TABLE `orientacao`
  MODIFY `id_orientacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
