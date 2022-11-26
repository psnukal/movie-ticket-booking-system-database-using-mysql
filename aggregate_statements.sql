--1 To find the total number of gold seats present in each theatre.
SELECT Theatre_ID, SUM(No_of_Seats_Gold) FROM SCREEN GROUP BY Theatre_ID;

-- 2 To check the number of users who are major(18+).
SELECT isMAJOR(Age) as Mojor, COUNT(AGE) as Count_Users FROM USERS GROUP BY isMAJOR(Age);

-- 3 To find the average cost of bookings the users have made.
SELECT AVG(Total_Cost) AS Average_Cost_Of_Bookings from booking;

-- 4 To find the Age of the oldest User.
SELECT MAX(Age) from users;