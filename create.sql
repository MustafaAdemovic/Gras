

PRAGMA foreign_keys = on;
.header on


CREATE TABLE tip_vozila(
	kod_vozila VARCHAR(3) PRIMARY KEY ,
	naziv_vozila VARCHAR(20)

);

CREATE TABLE vozac(
	ID INTEGER PRIMARY KEY autoincrement,
	ime VARCHAR(15),
	prezime VARCHAR(15),
	godine SMALLINT,
	godina_zaposlenja VARCHAR(1,0)
);

CREATE TABLE smjena(
	id SMALLINT PRIMARY KEY,
	ime VARCHAR(6)
);


CREATE TABLE vozilo(
	ID INTEGER PRIMARY KEY,
	Tip_vozila VARCHAR(6) ,
	foreign key(Tip_vozila) references Tip_vozila on update cascade on delete cascade
);



CREATE TABLE linija(
	kod_linije VARCHAR(3) PRIMARY KEY,
	polazna_tacka VARCHAR(25),
	krajnja_tacka VARCHAR(25),
	prva_voznja VARCHAR(4),
	interval SMALLINT
);



CREATE TABLE red_voznje(
	id_vozila INTEGER,
	kod_linije VARCHAR(3),
	id_vozaca INTEGER,
	smjena SMALLINT,
	foreign key(id_vozaca) references vozac on update cascade on delete cascade,
	foreign key(kod_linije) references linija on update cascade on delete cascade,
	foreign key(id_vozila) references vozilo on update cascade on delete cascade,
	foreign key(smjena) references smjena on update cascade on delete cascade,
	primary key(id_vozaca,id_vozila,kod_linije, smjena)
);