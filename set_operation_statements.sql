-- 1 To get the details of movies which are either English or Kannada.
 select * from movie where language = 'English' union select * from movie where language = 'kannada';



-- 2 To get the details of all the movies other than horror movies.
select * from movie except select * from movie where Genre = 'Horror';



-- 3 To get the details of the users who have watched either Adventure or SciFi Genre movie.  
 select * from users where user_id in ( select user_id from booking where show_id in ( select show_id from shows where movie_id in ( select movie_id from movie where Genre = 'Fantasy/Adventure' ))) union select * from users where user_id in ( select user_id from booking where show_id in ( select show_id from shows where movie_id in ( select movie_id from movie where Genre = 'Fantasy/scifi' )));


-- 4 To get the details of the movies which are present in both 'INOX Movies' and 'PVR Cinemas'.
select * from movie where movie_id in ( select movie_id from shows where screen_id in ( select screen_id from screen where theatre_id in ( select theatre_id from theatre where Name_Of_Theatre = 'INOX Movies'))) INTERSECT select * from movie where movie_id in ( select movie_id from shows where screen_id in ( select screen_id from screen where theatre_id in ( select theatre_id from theatre where Name_Of_Theatre = 'PVR Cinemas')));



