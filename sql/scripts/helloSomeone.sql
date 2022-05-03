DELIMITER //
CREATE FUNCTION helloSomeone(
    someoneName VARCHAR(50)
) 

RETURNS VARCHAR(55) DETERMINISTIC

BEGIN
    DECLARE hello VARCHAR(55);
    SET hello = CONCAT('Hi, ', someoneName);
    RETURN hello;
END; //
DELIMITER ;


SELECT helloSomeone('Fulano') FROM DUAL;