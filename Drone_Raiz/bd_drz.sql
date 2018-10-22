-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22-Out-2018 às 23:05
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_drz`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `telefone` int(8) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nome`, `telefone`, `email`) VALUES
(1, 'Aderbal', 21234587, 'aderbal@hotmail.com'),
(2, 'Roberta', 21234587, 'roberta@hotmail.com'),
(3, 'Gabriel', 31234876, 'gba_cs@hotmail.com'),
(4, 'Carolina', 39886275, 'carolcomc@gmail.com'),
(5, 'Frank', 84287165, 'franck@gmail.com'),
(6, 'Tito', 21287638, 'tito@hotmail.com'),
(7, 'Godofredo', 21384876, 'Godfred@yahoo.com'),
(8, 'Jessica', 21398988, 'jjsicaa@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cep` varchar(9) CHARACTER SET latin1 NOT NULL,
  `logradouro` varchar(100) CHARACTER SET latin1 NOT NULL,
  `bairro` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cidade` varchar(50) CHARACTER SET latin1 NOT NULL,
  `uf` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_cliente`
--

CREATE TABLE `lista_cliente` (
  `cliente_idcliente` int(11) NOT NULL,
  `endereco_cep` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_produto`
--

CREATE TABLE `lista_produto` (
  `id_produto` int(11) DEFAULT NULL,
  `quant` int(11) DEFAULT '1',
  `valor_itens` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `quant` int(11) NOT NULL DEFAULT '1',
  `foto01` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `descricao`, `valor`, `quant`, `foto01`) VALUES
(118, 'DRONE SYMA X5C', 'CÂMERA DE 2.0MP QUE FILMA E TIRA FOTOS', '349.00', 8, ''),
(218, 'DRONE SYMA X5-HW', 'CÂMERA HD 720P - FUNÇÃO PAIRA NO AR', '479.00', 8, ''),
(318, 'DRONE DJI MAVIC AIR', 'Drone com câmera 4k com braço servo de três eixos mais portátil', '6.31', 4, ''),
(418, 'DRONE DJI MAVIC 2 ZOOM - FLY MORE COMBO', 'O Mavic 2 ZOOM é o mais avançado drone de câmera da DJI já construído, projetado para profissionais,', '12.60', 10, ''),
(518, 'DRONE JXD 509G', 'EQUIPAMENTO SUPER ROBUSTO E DE ÓTIMA QUALIDADE, FILMA E TIRA FOTOS, CONTROLE REMOTO COM TELA PARA AS', '659.00', 4, ''),
(618, 'CABO CARREGADOR 5X1 PARA BATERIA DRONE MJX X400', 'CABO CARREGADOR 5X1 PARA BATERIA 750 mAh', '169.00', 12, ''),
(718, 'KIT CARREGADOR 6X1 + 6 BATERIAS 500 mAh PARA DRONE', '6 pcs 3.7 V 500 mAh Lipo bateria.', '70.00', 12, ''),
(818, 'KIT DE HÉLICES PARA DRONE PHANTOM 3', '4 HÉLICES SENTIDO HORÁRIO', '107.00', 1, ''),
(918, '    Compartilhar SEJALOJAS  ESTE PRODUTO ESTÁ PART', '1 MOTOR CW - SENTIDO HORÁRIO\r\n1 MOTOR CCW - SENTIDO ANTI-HORÁRIO', '54.00', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cep`);

--
-- Indexes for table `lista_cliente`
--
ALTER TABLE `lista_cliente`
  ADD PRIMARY KEY (`cliente_idcliente`),
  ADD KEY `fk_cliente_has_endereco_endereco1_idx` (`endereco_cep`),
  ADD KEY `fk_cliente_has_endereco_cliente1_idx` (`cliente_idcliente`);

--
-- Indexes for table `lista_produto`
--
ALTER TABLE `lista_produto`
  ADD KEY `id_produto` (`id_produto`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `lista_cliente`
--
ALTER TABLE `lista_cliente`
  ADD CONSTRAINT `fk_cliente_has_endereco_cliente1` FOREIGN KEY (`cliente_idcliente`) REFERENCES `cliente` (`idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cliente_has_endereco_endereco1` FOREIGN KEY (`endereco_cep`) REFERENCES `endereco` (`cep`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `lista_produto`
--
ALTER TABLE `lista_produto`
  ADD CONSTRAINT `lista_produto_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
