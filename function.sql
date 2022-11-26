DELIMITER $$
CREATE FUNCTION isMajor(
age INTEGER
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
IF age >= 18 THEN
RETURN ("Yes");
ELSE
RETURN ("No");
END IF;
END$$
DELIMITER ;

SELECT First_name, Last_Name, isMajor(Age) as Is_Major from users;

