# lesson11
homework
films=# select concat ('Name: "', films.film_name, '" (', films.year, '). Rating: ', films.rating, ' Genre: ', genres.genre, '. Directors: ', producers.producer_name, '. Actors: ', actors.actor_name) as info from films inner join s_film_genre on (films.id_film=s_film_genre.film_id) inner join genres on (s_film_genre.genre_id=genres.genre_id) inner join s_film_producer on (films.id_film=s_film_producer.id_film) inner join producers on (s_film_producer.id_producer=producers.id_producer) inner join s_film_actor on (films.id_film=s_film_actor.id_film) inner join actors on (s_film_actor.id_actor=actors.id_actor);
                                                          info
-------------------------------------------------------------------------------------------------------------------------
 Name: "THe Shawshank Redemption" (1994). Rating: 9.3 Genre: drama. Directors: Frank Darabont. Actors: Morgan Freeman
 Name: "THe Shawshank Redemption" (1994). Rating: 9.3 Genre: drama. Directors: Frank Darabont. Actors: Tim Robbins
 Name: "THe Shawshank Redemption" (1994). Rating: 9.3 Genre: criminal. Directors: Frank Darabont. Actors: Morgan Freeman
 Name: "THe Shawshank Redemption" (1994). Rating: 9.3 Genre: criminal. Directors: Frank Darabont. Actors: Tim Robbins
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: drama. Directors: Frank Darabont. Actors: Tom Hanks
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: drama. Directors: Frank Darabont. Actors: David Morse
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: drama. Directors: Frank Darabont. Actors: Michael Clarke Duncan
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: detective. Directors: Frank Darabont. Actors: Tom Hanks
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: detective. Directors: Frank Darabont. Actors: David Morse
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: detective. Directors: Frank Darabont. Actors: Michael Clarke Duncan
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: fantasy. Directors: Frank Darabont. Actors: Tom Hanks
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: fantasy. Directors: Frank Darabont. Actors: David Morse
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: fantasy. Directors: Frank Darabont. Actors: Michael Clarke Duncan
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: criminal. Directors: Frank Darabont. Actors: Tom Hanks
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: criminal. Directors: Frank Darabont. Actors: David Morse
 Name: "The Green Mile" (1999). Rating: 8.6 Genre: criminal. Directors: Frank Darabont. Actors: Michael Clarke Duncan
 Name: "Forrest Gump" (1994). Rating: 8.8 Genre: drama. Directors: Robert Zemeckis. Actors: Tom Hanks
 Name: "Forrest Gump" (1994). Rating: 8.8 Genre: melodrama. Directors: Robert Zemeckis. Actors: Tom Hanks
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: drama. Directors: Olivier Nacache. Actors: Omar Sy
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: drama. Directors: Olivier Nacache. Actors: Francois Cluset
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: comedy. Directors: Olivier Nacache. Actors: Omar Sy
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: comedy. Directors: Olivier Nacache. Actors: Francois Cluset
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: drama. Directors: Eric Toledano. Actors: Omar Sy
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: drama. Directors: Eric Toledano. Actors: Francois Cluset
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: comedy. Directors: Eric Toledano. Actors: Omar Sy
 Name: "The Intouchables" (2011). Rating: 8.5 Genre: comedy. Directors: Eric Toledano. Actors: Francois Cluset
 Name: "Leon" (1994). Rating: 8.5 Genre: thriller. Directors: Luc Besson. Actors: Jean Reno
 Name: "Leon" (1994). Rating: 8.5 Genre: thriller. Directors: Luc Besson. Actors: Natalie Portman
 Name: "Leon" (1994). Rating: 8.5 Genre: drama. Directors: Luc Besson. Actors: Jean Reno
 Name: "Leon" (1994). Rating: 8.5 Genre: drama. Directors: Luc Besson. Actors: Natalie Portman
 Name: "Leon" (1994). Rating: 8.5 Genre: criminal. Directors: Luc Besson. Actors: Jean Reno
 Name: "Leon" (1994). Rating: 8.5 Genre: criminal. Directors: Luc Besson. Actors: Natalie Portman
 Name: "Black Swan" (2010). Rating: 8 Genre: thriller. Directors: Darren Aronofsky. Actors: Natalie Portman
 Name: "Black Swan" (2010). Rating: 8 Genre: thriller. Directors: Darren Aronofsky. Actors: Mila Kunis
 Name: "Black Swan" (2010). Rating: 8 Genre: drama. Directors: Darren Aronofsky. Actors: Natalie Portman
 Name: "Black Swan" (2010). Rating: 8 Genre: drama. Directors: Darren Aronofsky. Actors: Mila Kunis
 Name: "Fight Club" (1999). Rating: 8.8 Genre: drama. Directors: David Fincher. Actors: Edward Norton
 Name: "Fight Club" (1999). Rating: 8.8 Genre: drama. Directors: David Fincher. Actors: Brad Pitt
 Name: "Fight Club" (1999). Rating: 8.8 Genre: drama. Directors: David Fincher. Actors: Helena Bonham Carter
 Name: "Fight Club" (1999). Rating: 8.8 Genre: thriller. Directors: David Fincher. Actors: Edward Norton
 Name: "Fight Club" (1999). Rating: 8.8 Genre: thriller. Directors: David Fincher. Actors: Brad Pitt
 Name: "Fight Club" (1999). Rating: 8.8 Genre: thriller. Directors: David Fincher. Actors: Helena Bonham Carter
 Name: "Fight Club" (1999). Rating: 8.8 Genre: criminal. Directors: David Fincher. Actors: Edward Norton
 Name: "Fight Club" (1999). Rating: 8.8 Genre: criminal. Directors: David Fincher. Actors: Brad Pitt
 Name: "Fight Club" (1999). Rating: 8.8 Genre: criminal. Directors: David Fincher. Actors: Helena Bonham Carter
(45 rows)
