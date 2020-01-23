DROP DATABASE IF EXISTS papyrus;
CREATE DATABASE papyrus;
USE papyrus;

CREATE TABLE fournis (
NUMFOU SMALLINT  NOT NULL UNIQUE,
NOMFOU VARCHAR(25) NOT NULL,
RUEFOU VARCHAR(50) NOT NULL,
POSFOU CHAR(5) NOT NULL,
VILFOU VARCHAR(30) NOT NULL,
CONFOU VARCHAR(15) NOT NULL,
SATISF TINYINT,
PRIMARY KEY (NUMFOU)
);

CREATE TABLE PRODUIT (
CODART CHAR(4) NOT NULL,
LIBART VARCHAR(30) NOT NULL,
STKALE INT NOT NULL,
STKPHY INT NOT NULL,
QTEANN INT NOT NULL,
UNIMES CHAR(5) NOT NULL,
PRIMARY KEY (CODART)
);

CREATE TABLE entcom (
NUMCOM INT AUTO_INCREMENT,
OBSCOM VARCHAR(50),
DATCOM DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
NUMFOU SMALLINT,
PRIMARY KEY (NUMCOM),
FOREIGN KEY (NUMFOU) REFERENCES fournis(NUMFOU)
);

CREATE TABLE ligcom (
NUMCOM INT NOT NULL,
NUMLIG TINYINT NOT NULL,
CODART CHAR(4) NOT NULL,
QTECDE INT NOT NULL,
PRIUNI DECIMAL(9,2) NOT NULL,
QTELIV INT,
DERLIV DATETIME NOT NULL,
PRIMARY KEY (NUMCOM, NUMLIG),
FOREIGN KEY (NUMCOM) REFERENCES entcom(NUMCOM),
FOREIGN KEY (CODART) REFERENCES PRODUIT(CODART)
);

CREATE TABLE vente (
CODART CHAR(4) NOT NULL,
NUMFOU SMALLINT NOT NULL,
DELLIV SMALLINT NOT NULL,
QTE1 INT NOT NULL,
PRIX1 DECIMAL(9, 2) NOT NULL,
QTE2 INT,
PRIX2 DECIMAL(9, 2),
QTE3 INT,
PRIX3 DECIMAL(9, 2),
FOREIGN KEY (NUMFOU) REFERENCES fournis(NUMFOU),
FOREIGN KEY (CODART) REFERENCES Produit(CODART)
);