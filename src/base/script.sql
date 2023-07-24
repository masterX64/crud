CREATE DATABASE IF NOT EXISTS `pasteleria`;

CREATE TABLE IF NOT EXISTS `Pastel` (
  `idPastel` int(6) unsigned zerofill NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Fecha de creacion` date DEFAULT NULL,
  `Fecha de vencimiento` date DEFAULT NULL
  
);
ALTER TABLE `Pastel`
  ADD PRIMARY KEY (`idPastel`);



CREATE TABLE IF NOT EXISTS `Ingrediente` (
  `idIngrediente` int(6) unsigned zerofill NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Fecha de ingreso` date DEFAULT NULL,
  `Fecha de vencimiento` date DEFAULT NULL
);


ALTER TABLE `Ingrediente`
  ADD PRIMARY KEY (`idIngrediente`);

drop table pastel_Ingredientes;

CREATE TABLE IF NOT EXISTS `pastel_Ingredientes` (
`idpastel_Ingredientes` int(6) unsigned zerofill NOT NULL,
  `idIngrediente` int(6) unsigned zerofill NOT NULL,
  `idPastel` int(6) unsigned zerofill NOT NULL
);
ALTER TABLE `pastel_Ingredientes`
  ADD PRIMARY KEY (`idpastel_Ingredientes`),
  ADD FOREIGN KEY (`idIngrediente`) REFERENCES Ingrediente(idIngrediente),
  ADD FOREIGN KEY (`idPastel`) REFERENCES Pastel(idPastel)
  ;





