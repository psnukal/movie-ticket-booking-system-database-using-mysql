CREATE TABLE backup (
Ticket_ID varchar(20),
Booking_ID varchar(10)
);
DELIMITER //
CREATE PROCEDURE backup_procedure()
BEGIN
DECLARE done INT DEFAULT 0;
DECLARE TicketID varchar(20);
DECLARE BookingID varchar(10);
DECLARE Class varchar(20);
DECLARE Price varchar(10);

DECLARE cur CURSOR FOR SELECT * FROM ticket;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
OPEN cur;
label: LOOP
FETCH cur INTO TicketID, BookingID, Class, Price;
INSERT INTO backup VALUES(TicketID,BookingID);
IF done = 1 THEN LEAVE label;
END IF;
END LOOP;
CLOSE cur;
END//
DELIMITER ;


CALL backup_procedure;
select * from backup;