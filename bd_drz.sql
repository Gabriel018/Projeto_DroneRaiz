-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Out-2018 às 23:24
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
  `IDCliente` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `DDD` int(8) DEFAULT NULL,
  `Telefone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `CPF` varchar(45) DEFAULT NULL,
  `RG` varchar(45) DEFAULT NULL,
  `DtNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`IDCliente`, `Nome`, `DDD`, `Telefone`, `Email`, `CPF`, `RG`, `DtNascimento`) VALUES
(1, 'Duke', 21, '22757430', 'Duke@gmail.com', '123495987', '239898796', '2000-10-15'),
(2, 'Roberta', 21, '897266566', 'Roberta@gmail.com', '298198797', '234878769', '1998-10-12'),
(3, 'Aldabert', 84, '23549872', 'Aldabert@gmail.com', '123499799', '239389890', '1970-10-15'),
(4, 'Diniz', 21, '25468797', 'gbadinizpistola@photmail.com', '234987234', '239897073', '2010-10-01'),
(5, 'Daniel CS', 86, '2398969', 'danieldocs@gmail.com', '1284975234532', '9296186868', '2010-09-18'),
(6, 'Daniel Fla', 21, '23457675', 'danifla@gmail.com', '12923499889', '2345698743', '2012-10-05');

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
  `IDProduto` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `quant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`IDProduto`, `Nome`, `Descricao`, `valor`, `quant`) VALUES
(919, 'Drone Consumidor', 'Drone feito para comsumidor padrao', '89', 2),
(920, 'Drone infantil', 'replica de drone', '29', 2),
(921, 'Drone app', 'Drone da maça', '59', 3),
(922, 'Kit bateria Drone R2', 'Kit com baterias do Drone R2', '30', 5),
(923, 'Helices', 'Par com 4 helices para drone r2', '39', 1),
(924, 'Kit Bateria', 'Kit com 3 baterias ', '35', 6),
(925, 'Drone Profissional', 'Drone criado para fotografia', '19', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDCliente`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cep`);

--
-- Indexes for table `lista_produto`
--
ALTER TABLE `lista_produto`
  ADD KEY `id_produto` (`id_produto`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`IDProduto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `IDProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=926;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `lista_produto`
--
ALTER TABLE `lista_produto`
  ADD CONSTRAINT `lista_produto_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`idProduto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
