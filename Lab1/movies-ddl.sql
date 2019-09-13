CREATE TABLE actors(
	AID int not null auto_increment,
    actor_name varchar(30),
    primary key(AID)
);

CREATE TABLE movies(
	MID int not null auto_increment,
    title varchar(30),
    primary key(MID)
);

CREATE TABLE actor_rol(
	MID int,
    AID int,
    rol_name varchar(30),
    foreign key (AID) references actors(AID),
    foreign key (MID) references movies(MID)
);