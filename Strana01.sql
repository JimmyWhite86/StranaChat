-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 22, 2024 alle 13:03
-- Versione del server: 5.7.39
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Strana01`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Eventi`
--

CREATE TABLE `Eventi` (
  `IDEvento` int(11) NOT NULL,
  `NomeEvento` varchar(40) NOT NULL,
  `DataEvento` date NOT NULL,
  `Immagine` text NOT NULL,
  `Descrizione` text NOT NULL,
  `eliminato` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Eventi`
--

INSERT INTO `Eventi` (`IDEvento`, `NomeEvento`, `DataEvento`, `Immagine`, `Descrizione`, `eliminato`) VALUES
(1, 'Partizan', '2024-10-31', 'immagini/IG _ Partizan _ 01.png', 'Cena partizan piu musica e djset', 0),
(3, 'Bagna Cauda', '2024-10-24', 'immagini/IG _ Bagna _ 01.png', 'cena bagna', 0),
(4, 'Cena BSD + Live Music', '2024-12-26', 'immagini/IG _ BSD _ 01.JPG', 'Cena e musica', 0),
(5, 'Musica in Prossimità & LavaLamp', '2024-11-30', 'immagini/ig _ lavalamp _ 01.png', '            qua provo a scrivere un sacco di cosae sadflkmasdf lkadmvlkasm flkasjflkasdjfoisjadfoiwjogaskjnaskjvn. jdsoifjasldkfjlkasdjf joiasdjfoaisjdfoiajsdfojiasdfl oisjdfoiajsdfoiasjdf', 0),
(6, 'Mamme contro la repressione', '2024-11-28', 'immagini/Locandina _ Mamme contro repressione _ 02.png', 'sdf', 0),
(7, 'Arte solidale con la palestina', '2014-11-16', 'immagini/IG _ Arte Solidale _ 01.png', 'Innaugurazione della mostra HeART of Gaza\r\nLaboratorio creativo \"Sperimenta i colori della natura\"\r\nCena a buffet benefit\r\nAlessio Lerda e Darianna Tedesco di RBE dialogano con Andrea Pomini su \"We Will Stay Here\" e Ilaria Cozzi di \"HeART of Gaza\"', 0),
(8, 'Arte solidale con la palestina', '2014-11-16', 'immagini/IG _ Arte Solidale _ 01.png', 'Innaugurazione della mostra HeART of Gaza\r\nLaboratorio creativo \"Sperimenta i colori della natura\"\r\nCena a buffet benefit\r\nAlessio Lerda e Darianna Tedesco di RBE dialogano con Andrea Pomini su \"We Will Stay Here\" e Ilaria Cozzi di \"HeART of Gaza\"', 1),
(9, 'DJVorrej', '2024-11-23', 'immagini/Carosello 05.png', 'Ci farà ballare', 0),
(10, 'Evento di prova', '2025-11-24', 'immagini/Salviette asciugamani nel wc.png', 'Evento per prove            ', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `logsAdmin`
--

CREATE TABLE `logsAdmin` (
  `idAzione` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `nomeAdmin` varchar(20) NOT NULL,
  `azione` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `idEntita` int(11) NOT NULL,
  `nomeEntita` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `errore` tinyint(1) NOT NULL,
  `descrizioneErrore` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `logsAdmin`
--

INSERT INTO `logsAdmin` (`idAzione`, `idAdmin`, `nomeAdmin`, `azione`, `categoria`, `idEntita`, `nomeEntita`, `timestamp`, `errore`, `descrizioneErrore`) VALUES
(1, 3, 'Andrea', 'Piatto eliminato', 'Cucina', 11, 'Prova', '2024-11-22 10:22:02', 0, NULL),
(2, 3, 'Andrea', 'Piatto eliminato', 'Cucina', 10, 'Prova', '2024-11-22 10:23:30', 0, NULL),
(3, 3, 'Andrea', 'Piatto eliminato', 'Cucina', 9, 'Battuta di fassone', '2024-11-22 10:29:16', 0, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `menuCucina`
--

CREATE TABLE `menuCucina` (
  `idPiatto` int(11) NOT NULL,
  `nomePiatto` varchar(40) NOT NULL,
  `descrizionePiatto` text NOT NULL,
  `categoriaPiatto` varchar(40) NOT NULL,
  `prezzoPiatto` float NOT NULL,
  `cuoco` varchar(40) NOT NULL,
  `disponibilitaPiatto` tinyint(1) NOT NULL,
  `dataInserimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `menuCucina`
--

INSERT INTO `menuCucina` (`idPiatto`, `nomePiatto`, `descrizionePiatto`, `categoriaPiatto`, `prezzoPiatto`, `cuoco`, `disponibilitaPiatto`, `dataInserimento`) VALUES
(1, 'Gnocchi ai formaggi', '            ', 'primi', 7, 'Pino', 1, '2028-10-24'),
(3, 'cotoletta', '            ', 'secondi', 10, 'Tarta', 1, '2028-10-24'),
(4, 'patate al forno', '            ', 'contorni', 4, 'Pino', 1, '2028-10-24'),
(5, 'verdure miste', '            ', 'contorni', 4, 'Pino', 1, '2028-10-24'),
(6, 'insalata', '            ', 'contorni', 3, 'Pino', 1, '2028-10-24'),
(7, 'Pasta al pesto', '            ', 'primi', 4, 'Tarta', 1, '2028-10-24'),
(8, 'Tomini al forno', '            ', 'secondi', 6, 'Tarta', 1, '2028-10-24'),
(9, 'Battuta di fassone', '            ', 'antipasti', 6, 'Tarta', 1, '2028-10-24'),
(10, 'Acciughe al verde', '                    ', 'antipasti', 5, 'Tarta', 1, '2011-11-24'),
(11, 'Pasta con tonno', 'Tipico piatto da studenti', 'primi', 4, 'Pino', 1, '2011-11-24'),
(12, 'Verdure grigliate', '                    ', 'contorni', 4, 'Tarta', 1, '2011-11-24'),
(13, 'Caserecce zucca e salsiccia', '                    ', 'primi', 5, 'Pino', 1, '2011-11-24'),
(14, 'pasta in bianco', '', 'primi', 5, 'Tarta', 1, '2012-11-24'),
(15, 'merluzzo mantecato', '                    ', 'secondi', 9, 'Tarta', 1, '2012-11-24'),
(16, 'Polpette di ceci', '                    ', 'secondi', 4, 'Tarta', 1, '2012-11-24'),
(17, 'insalata mista', '                    ', 'contorni', 2, 'Pino', 1, '2012-11-24'),
(18, 'pane e salame', '                    ', 'antipasti', 1, 'Pino', 1, '2012-11-24'),
(19, 'spaghetti aglio olio e peperoncino', '                    ', 'primi', -1, 'Pino', 1, '2012-11-24'),
(20, 'Lenticchie', '                    ', 'contorni', 4, 'Tarta', 1, '2018-11-24'),
(21, 'Lasagne', '                    ', 'primi', 3, 'Pino', 1, '2018-11-24'),
(22, 'Brodino', '                    ', 'primi', -12, 'Tarta', 1, '2018-11-24'),
(23, 'Pollo arrosto', '                    ', 'secondi', -2, 'Tarta', 1, '2018-11-24'),
(24, 'Pasta e fagioli', '                    ', 'primi', 6, 'Pino', 1, '2018-11-24'),
(25, 'cotoletta', '                    ', 'secondi', 3, 'Pino', 0, '2018-11-24'),
(26, 'involtini primavera', '                    ', 'antipasti', 3, 'Pino', 0, '2022-11-24');

-- --------------------------------------------------------

--
-- Struttura della tabella `User`
--

CREATE TABLE `User` (
  `IDUser` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `utenteAttivo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `User`
--

INSERT INTO `User` (`IDUser`, `UserName`, `Password`, `admin`, `utenteAttivo`) VALUES
(3, 'Andrea', 'Strana86', 1, 1),
(4, 'Alice', 'Abbadia01', 1, 1),
(5, 'Fede', 'FVCG2024', 1, 1),
(6, 'Manfredo', 'Brasile123', 1, 1),
(7, 'Prova', 'a', 1, 0),
(8, 'Angel', 'vivaDio', 1, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Eventi`
--
ALTER TABLE `Eventi`
  ADD PRIMARY KEY (`IDEvento`);

--
-- Indici per le tabelle `logsAdmin`
--
ALTER TABLE `logsAdmin`
  ADD PRIMARY KEY (`idAzione`),
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Indici per le tabelle `menuCucina`
--
ALTER TABLE `menuCucina`
  ADD PRIMARY KEY (`idPiatto`);

--
-- Indici per le tabelle `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`IDUser`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Eventi`
--
ALTER TABLE `Eventi`
  MODIFY `IDEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `logsAdmin`
--
ALTER TABLE `logsAdmin`
  MODIFY `idAzione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `menuCucina`
--
ALTER TABLE `menuCucina`
  MODIFY `idPiatto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT per la tabella `User`
--
ALTER TABLE `User`
  MODIFY `IDUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `logsAdmin`
--
ALTER TABLE `logsAdmin`
  ADD CONSTRAINT `logsadmin_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `User` (`IDUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
