INSERT INTO Tip_vozila values ("TRA", "Tramvaj");
INSERT INTO Tip_vozila values ("TRO", "Trolejbus");
INSERT INTO Tip_vozila values ("AUT", "Autobus");

INSERT INTO vozac VALUES(?, "Hikmet", "Durgutovic", 32, "1.5.1986");
INSERT INTO vozac VALUES(?, "Emina", "Muratovic", 26, "13.6.1994");
INSERT INTO vozac VALUES(?, "Mustafa", "Ademovic", 32, "17.5.1990");
INSERT INTO vozac VALUES(?, "Mirza", "Becic", 55, "12.3.1989");
INSERT INTO vozac VALUES(?, "Haris", "Arifovic", 25, "30.9.1994");
INSERT INTO vozac VALUES(?, "Vedad", "Zornic", 46, "30.9.1993");

INSERT INTO smjena VALUES(1, "Prva");
INSERT INTO smjena VALUES(2, "Druga");
INSERT INTO smjena VALUES(3, "Nocna");

INSERT INTO vozilo VALUES(12,"TRO");
INSERT INTO vozilo VALUES(33,"TRA");
INSERT INTO vozilo VALUES(125,"TRO");
INSERT INTO vozilo VALUES(21,"AUT");
INSERT INTO vozilo VALUES(64,"TRA");
INSERT INTO vozilo VALUES(13,"TRO");
INSERT INTO vozilo VALUES(88,"AUT");
INSERT INTO vozilo VALUES(55,"AUT");
INSERT INTO vozilo VALUES(111,"TRA");
INSERT INTO vozilo VALUES(1,"TRO");

INSERT INTO linija VALUES("16b","Dom Armije", "Kosevsko Brdo","07:00", 25);
INSERT INTO linija VALUES("3","Ilidza", "Bascarsija","06:00", 60);
INSERT INTO linija VALUES("31","Dobrinja", "Jezero","08:00", 55);
INSERT INTO linija VALUES("19","Bascarsija", "Hrasnica","07:00", 60);
INSERT INTO linija VALUES("666","BitCamp", "Hell","00:00", 90);

/* ID VOZILA,  KOD LINIJE, ID VOZACA, SMJENA*/
INSERT INTO red_voznje VALUES(12, "16b", 3, 1 );
INSERT INTO red_voznje VALUES(33, "16b", 1, 1 );
INSERT INTO red_voznje VALUES(64, "31", 3, 3 );
INSERT INTO red_voznje VALUES(12, "666", 5, 2 );
INSERT INTO red_voznje VALUES(111, "3", 2, 2 );
INSERT INTO red_voznje VALUES(111, "19", 4, 1 );