-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 27/04/2018 às 20:30
-- Versão do servidor: 5.7.22-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pdv`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra`
--

CREATE TABLE `compra` (
  `numero` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `valor` decimal(6,2) NOT NULL,
  `itens` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `compra`
--

INSERT INTO `compra` (`numero`, `data`, `valor`, `itens`) VALUES
(1, '2018-04-27 20:05:19', '123.45', 'rfewrrewr'),
(2, '2018-04-27 20:21:23', '104.00', '\n                          \n                      Botina Amarela -- DaRoça -- R$ 45.89Botina Amarela -- DaRoça -- R$ 45.89chinelo -- baiana -- R$ 12.22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `marca` varchar(80) NOT NULL,
  `categoria` varchar(80) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `preco` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `marca`, `categoria`, `sexo`, `preco`) VALUES
(1, 'Bota Preta', 'Nord', 'Bota', 'M', '123.45'),
(2, 'Botina Amarela', 'DaRoça', 'Botas', 'M', '45.89'),
(3, 'chinelo', 'baiana', 'seila', 'F', '12.22'),
(5, 'Sapato social', 'DaRoça', 'Social', 'U', '233.80'),
(6, 'sandalia paris', 'Caipira', 'Esporte', 'F', '76.50'),
(7, 'Novo sapato', 'Caipira', 'Social', '', '121.22'),
(8, 'outro', 'DaRoça', 'Botas', 'F', '111.11'),
(13, 'outro', 'DaRoça', 'Botas', 'F', '111.11');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`numero`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
