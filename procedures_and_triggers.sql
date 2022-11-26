-- to update the gold and silver seats left when booking a ticket

DELIMITER &&

CREATE PROCEDURE Booking_Seats(IN b_id varchar(20), IN cl varchar(10))
BEGIN
	declare S_ID varchar(20);

	Select Show_ID into S_ID from Booking where Booking_ID = b_id;


	IF cl = 'GLD' THEN
			UPDATE Shows SET Seats_Remaining_Gold = Seats_Remaining_Gold - 1 Where Show_ID = S_ID;
	ELSE
			UPDATE Shows SET Seats_Remaining_Silver = Seats_Remaining_Silver - 1 Where Show_ID = S_ID;
	END IF;
END &&
DELIMITER ;



DELIMITER &&
CREATE TRIGGER Adding_Seats
	BEFORE INSERT
	ON Ticket 
	FOR EACH ROW
	BEGIN
		CALL Booking_Seats(NEW.Booking_ID, NEW.Class);
	END &&
DELIMITER ;














-- to update the gold and silver seats left when cancelling a ticket

DELIMITER &&

CREATE PROCEDURE Cancelling_Seats(IN b_id varchar(20), IN cl varchar(10))
BEGIN
	declare S_ID varchar(20);

	Select Show_ID into S_ID from Booking where Booking_ID = b_id;


	IF cl = 'GLD' THEN
			UPDATE Shows SET Seats_Remaining_Gold = Seats_Remaining_Gold + 1 Where Show_ID = S_ID;
	ELSE
			UPDATE Shows SET Seats_Remaining_Silver = Seats_Remaining_Silver + 1 Where Show_ID = S_ID;
	END IF;
END &&
DELIMITER ;



DELIMITER &&
CREATE TRIGGER Deleting_Seats
	BEFORE DELETE
	ON Ticket 
	FOR EACH ROW
	BEGIN
		CALL Cancelling_Seats(OLD.Booking_ID, OLD.Class);
	END &&
DELIMITER ;
