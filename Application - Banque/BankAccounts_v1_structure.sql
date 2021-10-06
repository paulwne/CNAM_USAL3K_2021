DROP DATABASE IF EXISTS usal3K_2021_banks;

CREATE DATABASE usal3K_2021_banks 
DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

USE usal3K_2021_banks;

-- CREATE user `usal3K_2021_banks`@`localhost` IDENTIFIED BY 'azer';
-- GRANT ALL PRIVILEGES ON usal3K_2021_banks.* TO `usal3K_2021_banks`@`localhost`;


/*
	CREATION DES TABLES
*/


CREATE TABLE banks 
(
   `bank_id` INT PRIMARY KEY,
   `bank_name` VARCHAR(20),
   `bank_balance` INT NOT NULL DEFAULT '100000000'
) Engine=InnoDb;

CREATE TABLE bank_accounts 
(
   `id` INT PRIMARY KEY,
   `name` VARCHAR(20),
   `balance` INT NOT NULL DEFAULT '10000',
   `bank_id` INT NOT NULL DEFAULT '1',
   FOREIGN KEY (bank_id) REFERENCES banks(bank_id)
) Engine=InnoDb;

CREATE TABLE transaction_history 
(
	`t_id` INT PRIMARY KEY AUTO_INCREMENT,
    `t_date` DATETIME NOT NULL,
    `t_amount` DECIMAL(10,2),
    `t_type` CHAR(1),
    `t_account_id` INT NOT NULL,
    FOREIGN KEY (t_account_id) REFERENCES bank_accounts(id) 
) Engine=InnoDb;


/*
	INSERTION DES DONNEES DANS LES TABLES
*/

INSERT INTO banks 
(`bank_id`, `bank_name`) 
VALUES 
(1, 'Master Bank'),
(2, 'Banque Populaire'),
(3, 'Crédit Mutuel'),
(4, 'Caisse d\'épargne'),
(5, 'Crédit Agricole');


INSERT INTO bank_accounts
(`id`, `name`, `bank_id`)
VALUES
(1, 'Mike', 2),
(2, 'Jean', 3),
(3, 'Paulette', 4),
(4, 'Martin', 5),
(5, 'Cindy', 5),
(6, 'Réda', 4),
(7, 'Steeve', 3),
(8, 'Léa', 2),
(9, 'Justine', 3);


/*
	AFFICHAGE DES DONNEES DES TABLES 
*/


SELECT * FROM transaction_history;
SELECT * FROM banks;
SELECT * FROM bank_accounts;
