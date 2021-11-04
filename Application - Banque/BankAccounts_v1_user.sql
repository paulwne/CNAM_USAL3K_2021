/* UTILISATEUR POUR SYMFONY */

DROP USER IF EXISTS 'paulinesymfony'@'localhost';
CREATE USER 'paulinesymfony'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'paulinesymfony'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.* TO 'paulinesymfony'@'localhost';

SHOW GRANTS FOR 'paulinesymfony'@'localhost';

FLUSH PRIVILEGES;

USE mysql;

SELECT * FROM user;

/* PREMIER UTILISATEUR */

-- DROP USER IF EXISTS 'paulinedb'@'localhost';
-- CREATE USER 'paulinedb'@'localhost' IDENTIFIED BY 'azer';
-- REVOKE ALL PRIVILEGES ON *.* FROM 'paulinedb'@'localhost';
-- GRANT ALL PRIVILEGES ON *.* TO 'paulinedb'@'localhost';

/* DEUXIEME UTILISATEUR */

/*DROP USER IF EXISTS 'ladybug'@'localhost';
CREATE USER 'ladybug'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'ladybug'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.* TO 'ladybug'@'localhost';*/

/*DROP USER IF EXISTS 'ladybug'@'localhost';
CREATE USER 'ladybug'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'ladybug'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.banks TO 'ladybug'@'localhost';*/

-- DROP USER IF EXISTS 'ladybug'@'localhost';
-- CREATE USER 'ladybug'@'localhost' IDENTIFIED BY 'azer';
-- REVOKE ALL PRIVILEGES ON *.* FROM 'ladybug'@'localhost';
-- GRANT SELECT, UPDATE, INSERT, DELETE ON usal3K_2021_banks.* TO 'ladybug'@'localhost';

-- SHOW GRANTS FOR 'ladybug'@'localhost';

/* TROISIEME UTILISATEUR */

-- DROP USER IF EXISTS 'madelaine'@'localhost';
-- CREATE USER 'madelaine'@'localhost' IDENTIFIED BY 'azer';
-- REVOKE ALL PRIVILEGES ON *.* FROM 'madelaine'@'localhost';
-- GRANT DROP ON usal3K_2021_banks.* TO 'madelaine'@'localhost';