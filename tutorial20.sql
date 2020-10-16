START TRANSACTION;
SELECT * FROM bank;
UPDATE banksetcoin = 'Q ' where coin = ' P';
SELECT * FROM bank; < ------- Здесь изменения еще видны.
ROLLBACK; ------Передумали.
SELECT * FROM bank; ------ здесь их уже нет.

START TRANSACTION;
SELECT * FROM bank;
UPDATE banksetcoin = 'Q ' where coin = ' P';
SELECT * FROM bank; < ------- Здесь изменения еще видны.
COMMIT; --------- Закрепление транзакии.
SELECT * FROM bank;
