-- 1 Natural Join to get the details of ticket and bookings together
SELECT * FROM booking NATURAL JOIN ticket;

--2 Inner join to get the details of theatre and screen together
SELECT * FROM theatre INNER JOIN screen ON theatre.Theatre_ID = screen.Theatre_ID;

--3 To get the details of shows for every movie;
SELECT * FROM movie LEFT JOIN shows On movie.movie_id = shows.movie_id;

-- 4 Right join to find the bookings all the users have done
SELECT * FROM booking RIGHT JOIN users ON booking.User_ID = users.User_ID;
