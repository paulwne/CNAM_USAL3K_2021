USE usal3K_2021_banks;

/*
<<<<<<< HEAD
UPDATE bank_accounts
SET balance = balance + 1500
WHERE id = '2';

INSERT INTO transaction_history
(t_date, t_amount, t_type, t_account_id)
VALUES
(NOW(), 1500, 'C', 2);
*/
=======
UPDATE bank_accounts 
SET balance=balance+1500 
WHERE id=2;


INSERT INTO transaction_history 
(t_date, t_amount, t_type, t_account_id) 
VALUES 
(NOW(), 1500, 'C', 2);*/
>>>>>>> 2eccc62917c5ca3b8abe4f850dd43c3955927a23


DROP PROCEDURE IF EXISTS creditBankAccount;

<<<<<<< HEAD
DELIMITER ||
=======
DELIMITER || 
>>>>>>> 2eccc62917c5ca3b8abe4f850dd43c3955927a23


CREATE PROCEDURE creditBankAccount
(
	IN account_id INT,
<<<<<<< HEAD
    IN amount INT,
    IN transaction_type CHAR(1)
)
BEGIN

	UPDATE bank_accounts
	SET balance = balance + amount
	WHERE id = account_id;


	INSERT INTO transaction_history
	(t_date, t_amount, t_type, t_account_id)
	VALUES
=======
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
>>>>>>> 2eccc62917c5ca3b8abe4f850dd43c3955927a23
	(NOW(), amount, transaction_type, account_id);

END ||


DELIMITER ;


CALL creditBankAccount(3, 190, 'C');
CALL creditBankAccount(4, 1230, 'C');
CALL creditBankAccount(5, 1090, 'C');


SELECT * FROM bank_accounts;
SELECT * FROM transaction_history;