/*
Evenements BDD : INSERT, UPDATE, DELETE
Evenements BDD : BEFORE, AFTER
*/

USE usal3K_2021_banks;

DROP TRIGGER IF EXISTS bank_insert;

DELIMITER ||

CREATE TRIGGER bank_insert BEFORE INSERT ON banks
FOR EACH ROW

BEGIN
	
    DECLARE balanceMin INT DEFAULT 20000;
    SET balanceMin = 20000;
    
    IF balanceMin > NEW.bank_balance
    THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The bank has not enough money !';
    END IF;
    
END ||

DELIMITER ;