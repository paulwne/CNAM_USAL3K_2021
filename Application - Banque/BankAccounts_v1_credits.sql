USE usal3K_2021_banks;

/*
UPDATE bank_accounts 
SET balance=balance+1500 
WHERE id=2;


INSERT INTO transaction_history 
(t_date, t_amount, t_type, t_account_id) 
VALUES 
(NOW(), 1500, 'C', 2);*/


DROP PROCEDURE IF EXISTS creditBankAccount;

DELIMITER || 


CREATE PROCEDURE creditBankAccount
(
	IN account_id INT,
	IN amount INT,
	IN transaction_type CHAR(1)
)
BEGIN

	UPDATE bank_accounts 
	SET balance=balance+amount 
	WHERE id=account_id;
	
	
	INSERT INTO transaction_history 
	(t_date, t_amount, t_type, t_account_id) 
	VALUES 
	(NOW(), amount, transaction_type, account_id);

END ||


DELIMITER ;


CALL creditBankAccount(3, 190, 'C');
CALL creditBankAccount(4, 1230, 'C');
CALL creditBankAccount(5, 1090, 'C');


SELECT * FROM bank_accounts;
SELECT * FROM transaction_history;