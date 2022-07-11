CREATE TABLE movie(
	id int auto_increment primary key,
    title varchar(200) not null,
    content varchar(4000) not null,
    rating decimal(5,2) not null,
    ticketing_rate decimal(5,2) not null,
    audience_number decimal(10) not null,
    genre varchar(100) not null,
    openDate Date not null,
    running_time decimal(3),
    director varchar(100),
    cast varchar(200),
    poster varchar(500)
);

CREATE TABLE movie_time(
	id int auto_increment primary key,
    movie_id int not null,
    time varchar(12) not null,
    theater varchar(100)
);

alter table movie_time
add
foreign key(movie_id) references movie(id)