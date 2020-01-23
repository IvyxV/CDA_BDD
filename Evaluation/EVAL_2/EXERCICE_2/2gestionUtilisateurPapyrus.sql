USE papyrus;

#Supprime l'utilisateur si il existe
DROP USER IF EXISTS 'util1'@'%';
DROP USER IF EXISTS 'util2'@'%';
DROP USER IF EXISTS 'util3'@'%';

#Créé l'utilisateur et son mot de passe 
CREATE USER 'util1'@'%' IDENTIFIED BY 'root1';
#Donne tout les droits à l'utilisateur sur toutes les tables
GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'%' IDENTIFIED BY 'root1';

CREATE USER 'util2'@'%' IDENTIFIED BY 'root2';
#Donne les droits de lecture à l'utilisateur sur toutes les tables
GRANT SELECT ON papyrus.* TO 'util2'@'%' IDENTIFIED BY 'root2';

CREATE USER 'util3'@'%' IDENTIFIED BY 'root3';
#Donne les droits de lecture à l'utilisateur sur la table fournis
GRANT SELECT ON TABLE papyrus.fournis TO 'util3'@'%' IDENTIFIED BY 'root3';