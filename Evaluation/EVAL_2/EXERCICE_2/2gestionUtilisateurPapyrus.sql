USE papyrus;

DROP USER IF EXISTS 'util1'@'%';
DROP USER IF EXISTS 'util2'@'%';
DROP USER IF EXISTS 'util3'@'%';

CREATE USER 'util1'@'%' IDENTIFIED BY 'root1';
CREATE USER 'util2'@'%' IDENTIFIED BY 'root2';
CREATE USER 'util3'@'%' IDENTIFIED BY 'root3';

GRANT ALL PRIVILEGES ON papyrus.* TO 'util1'@'%' IDENTIFIED BY 'root1';

GRANT SELECT ON papyrus.* TO 'util2'@'%' IDENTIFIED BY 'root2';

GRANT SELECT ON TABLE papyrus.fournis TO 'util3'@'%' IDENTIFIED BY 'root3';