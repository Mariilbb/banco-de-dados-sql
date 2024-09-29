-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/09/2024 às 05:20
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_prog_web`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `musica`
--

CREATE TABLE `musica` (
  `id_musica` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `duracao` float NOT NULL,
  `compositor` varchar(100) NOT NULL,
  `album` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `musica`
--

INSERT INTO `musica` (`id_musica`, `titulo`, `duracao`, `compositor`, `album`) VALUES
(1, 'ainda bem', 2.2, 'marisa monte', 'sei la'),
(2, 'meu deus', 2.33, 'jesus', 'deus'),
(3, 'singular', 3.1, 'anavitoria', 'singular'),
(4, 'depois', 3.4, 'marisa monte', 'deus'),
(5, 'tulla', 2.6, 'deus', 'luana'),
(6, 'aaaaaaa', 6.3, 'sono', 'amimir'),
(7, '.', 0.1, '.', '.'),
(8, 'hghgh', 7, 'aaaaaaaa', 'aaaaaaaaaaa'),
(9, 'yt', 9, 'morgana', 'simn'),
(10, 'q', 6, 'tr', 'hn'),
(11, 'fome', 4.2, 'tue', '305');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`id_musica`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `musica`
--
ALTER TABLE `musica`
  MODIFY `id_musica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
