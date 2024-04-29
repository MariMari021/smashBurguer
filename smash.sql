-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/04/2024 às 16:16
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
-- Banco de dados: `smash`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `imagem`) VALUES
(5, '', '', '17-04-2024-08-59-03-4.png'),
(6, '', '', '17-04-2024-08-59-08-3.png'),
(7, '', '', '17-04-2024-08-59-13-2.png'),
(8, '', '', '17-04-2024-08-59-30-1.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `senha` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `endereco` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `logo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instagram` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `twitter` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `linkedin` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `facebook` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `youtube` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_servicos` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_servicos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_trabalhos` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_trabalhos` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_equipe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_equipe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titulo_contato` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `subtitulo_contato` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `texto_rodape` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'Smash Clean', 'admin@gmail.com', '123', '(11) 98765-4321', '', 'logo.png', 'icone.png', '', '', '', '', '', '#BCE7FF', NULL, NULL, NULL, NULL, 'Equipe', 'Conheça nossos colaboradores!', 'Contate-nos', 'Preencha os Campos abaixo para entrar em contato conosco!', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cargo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`id`, `nome`, `cargo`, `imagem`) VALUES
(6, 'Ricardo Gomes', 'Gerente de Operações', '17-04-2024-10-05-22-3.png'),
(7, 'Gabriela Mendes', 'Fundadora', '17-04-2024-10-06-04-1.png'),
(8, 'Paula Damasceno', 'Supervisora de Limpeza Residencial e Estofados', '17-04-2024-10-30-02-4.png'),
(9, 'Equipe limpeza', 'oi', '17-04-2024-11-08-15-5.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descricao` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exibir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subtitulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descricao` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exibir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Sobre nós', '', '<div style=\"text-align: justify;\"><font size=\"2\"><span style=\"font-family: var(--bs-font-sans-serif);\">No Smash Clean, estamos empenhados em elevar o padrão de limpeza em sua vida. Desde estofados impecáveis até casas reluzentes, passando pela higienização detalhada dos seus veículos, estamos aqui para tornar seu ambiente imaculado e livre de preocupações. O</span><span style=\"font-family: var(--bs-font-sans-serif);\">ferecemos uma gama abrangente de serviços, se o seu sofá precisa de uma revitalização, nossa equipe especializada em limpeza de estofados vai deixá-lo como novo, se sua casa está precisando de uma faxina completa, nossos profissionais cuidarão de cada cantinho, deixando tudo brilhando, e, se o seu carro merece um tratamento especial, nossa higienização automotiva garantirá que você entre em um ambiente fresco e limpo sempre que entrar no veículo.</span></font></div><div style=\"text-align: justify;\"><font size=\"2\"><span style=\"font-family: var(--bs-font-sans-serif);\"><br></span></font></div><div style=\"text-align: justify;\"><span style=\"font-size: small; font-family: var(--bs-font-sans-serif);\">Além disso, entendemos a importância da sustentabilidade e da segurança em nossos serviços. Utilizamos produtos e técnicas de limpeza que são eficazes, mas também seguros para você, sua família e o meio ambiente.&nbsp;</span><span style=\"font-size: small; font-family: var(--bs-font-sans-serif);\">No Smash Clean, não estamos apenas limpando espaços, estamos criando ambientes onde você pode relaxar, se sentir confortável e desfrutar da vida ao máximo.</span></div>', '17-04-2024-10-52-52-sobre.png', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descricao` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imagem` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exibir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
