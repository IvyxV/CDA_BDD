DROP DATABASE IF EXISTS commerce;
CREATE DATABASE IF NOT EXISTS commerce;

USE commerce;

DROP TABLE IF EXISTS `Client`;
CREATE TABLE IF NOT EXISTS `Client`(
cli_num INT NOT NULL AUTO_INCREMENT,
cli_nom VARCHAR(50),
cli_adresse VARCHAR(50),
clit_tel VARCHAR(50),
PRIMARY KEY(cli_num)
);

DROP TABLE IF EXISTS `Commande`;
CREATE TABLE IF NOT EXISTS `Commande`(
com_num INT NOT NULL AUTO_INCREMENT,
cli_num INT NOT NULL,
com_date DATETIME,
ccom_obs VARCHAR(50),
PRIMARY KEY(com_num),
FOREIGN KEY(cli_num) REFERENCES `Client`(cli_num) 
);

DROP TABLE IF EXISTS `Produit`;
CREATE TABLE IF NOT EXISTS `Produit`(
pro_num INT NOT NULL AUTO_INCREMENT,
pro_libelle VARCHAR(50),
pro_description VARCHAR(50),
PRIMARY KEY(pro_num)
);

DROP TABLE IF EXISTS `est_compose`;
CREATE TABLE IF NOT EXISTS `est_compose`(
com_num INT NOT NULL,
pro_num INT NOT NULL,
est_qte INT,
PRIMARY KEY(com_num, pro_num),
FOREIGN KEY(com_num) REFERENCES `Client`(cli_num),
FOREIGN KEY(pro_num) REFERENCES `Produit`(pro_num)
);

CREATE INDEX ID_cli_nom
ON `Client` (cli_nom);