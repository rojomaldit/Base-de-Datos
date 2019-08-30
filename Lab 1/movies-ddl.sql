drop table if exists actors;
drop table if exists movies;
drop table if exists actor_rol;

CREATE TABLE actors(
	AID INT(6),
    actor_name VARCHAR(20)
);

CREATE TABLE movies(
	MID INT(6),
    title VARCHAR(22)
);

CREATE TABLE actor_rol(
	MID INT(6),
    AID VARCHAR(20),
    rol_name VARCHAR(20)
);