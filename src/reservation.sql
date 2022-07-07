create reservation(
	id int auto_increment primary key,
	user_id int not null,
	movie_id int not null,
	movie_time_id not null
);

alter table reservation add foreign key(user_id) references user(id);
alter table reservation add foreign key(movie_id) references movie(id);
alter table reservation add foreign key(movie_time_id) references movie_time(id);
