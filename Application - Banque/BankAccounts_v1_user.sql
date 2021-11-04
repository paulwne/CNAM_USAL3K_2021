/* UTILISATEUR POUR SYMFONY */

DROP USER IF EXISTS 'paulinesymfony'@'localhost';
CREATE USER 'paulinesymfony'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'paulinesymfony'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.* TO 'paulinesymfony'@'localhost';

SHOW GRANTS FOR 'paulinesymfony'@'localhost';

/* PREMIER UTILISATEUR : ATTRIBUTION DE TOUS LES PRIVILÈGES SUR TOUTES LES BASES DE DONNÉES

DROP USER IF EXISTS 'paulinedb'@'localhost';
CREATE USER 'paulinedb'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'paulinedb'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'paulinedb'@'localhost'; */

/* DEUXIÈME UTILISATEUR 

DROP USER IF EXISTS 'ladybug'@'localhost';
CREATE USER 'ladybug'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'ladybug'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.* TO 'ladybug'@'localhost';

DROP USER IF EXISTS 'ladybug'@'localhost';
CREATE USER 'ladybug'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'ladybug'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.banks TO 'ladybug'@'localhost';

DROP USER IF EXISTS 'ladybug'@'localhost';
CREATE USER 'ladybug'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'ladybug'@'localhost';
GRANT SELECT, UPDATE, INSERT, DELETE ON usal3K_2021_banks.* TO 'ladybug'@'localhost';

SHOW GRANTS FOR 'ladybug'@'localhost'; */

/* TROISIÈME UTILISATEUR

DROP USER IF EXISTS 'madelaine'@'localhost';
CREATE USER 'madelaine'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'madelaine'@'localhost';
GRANT DROP ON usal3K_2021_banks.* TO 'madelaine'@'localhost'; */

/* CREATION D'UN ADMINISTRATEUR */
DROP USER IF EXISTS 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'azer';

-- OCTROI DES DROITS DE L'ADMINISTRATEUR (TOUTES LES PRIVILÈGES)
REVOKE ALL PRIVILEGES ON *.* FROM 'admin'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';

-- DONNE LA POSSIBILITÉ DE MODIFIER LES DROITS DES AUTRES UTILISATEURS 
REVOKE GRANT OPTION ON *.* FROM 'admin'@'localhost';
GRANT GRANT OPTION ON *.* TO 'admin'@'localhost';

SHOW GRANTS FOR 'admin'@'localhost';

-- RECHARGE LES DROITS DES UTILISATEURS | À EXÉCUTER APRÈS AVOIR CRÉÉ OU MODIFIÉ UN UTILISATEUR
FLUSH PRIVILEGES;

-- BASE DE DONNÉES SYSTÈME DE MYSQL
USE mysql;

-- TABLES OÙ SONT STOCKÉS LES UTILISATEURS CRÉÉS AVEC LEURS PRIVILÈGES GLOBAUX
SELECT * FROM user;