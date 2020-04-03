# lesson11
homework

I have added genres to my database, i. e. a table with names of genres and a table of sequences (file f).

films=# select concat ('Name: "', films.film_name, '" (', films.year, '). Rating: ', films.rating, ' Genre: ', genres.genre, '. Directors: ', producers.producer_name, '. Actors: ', actors.actor_name) as info from films inner join s_film_genre on (films.id_film=s_film_genre.film_id) inner join genres on (s_film_genre.genre_id=genres.genre_id) inner join s_film_producer on (films.id_film=s_film_producer.id_film) inner join producers on (s_film_producer.id_producer=producers.id_producer) inner join s_film_actor on (films.id_film=s_film_actor.id_film) inner join actors on (s_film_actor.id_actor=actors.id_actor);
                                                         
                                                         
                                                         
