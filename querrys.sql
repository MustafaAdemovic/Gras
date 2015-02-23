
SELECT 
	id_vozaca, 
	vozac.ime, 
	vozac.prezime, 
	vozilo.tip_vozila 

FROM red_voznje

INNER JOIN vozac ON id_vozaca = vozac.id

INNER JOIN vozilo ON id_vozila = vozilo.id;




SELECT  
	red_voznje.kod_linije ,
	linija.polazna_tacka, 
	linija.krajnja_tacka 

FROM red_voznje

INNER JOIN linija ON red_voznje.kod_linije = linija.kod_linije

INNER JOIN vozilo ON red_voznje.id_vozila = vozilo.ID

WHERE 
	vozilo.Tip_vozila = "TRA";



SELECT 
	red_voznje.kod_linije ,
	linija.polazna_tacka, 
	linija.krajnja_tacka 

FROM red_voznje

INNER JOIN linija ON red_voznje.kod_linije = linija.kod_linije

INNER JOIN vozilo ON red_voznje.id_vozila = vozilo.ID

WHERE 
	vozilo.Tip_vozila = "TRO";



SELECT 
	red_voznje.kod_linije ,
	linija.polazna_tacka, 
	linija.krajnja_tacka 

FROM red_voznje

INNER JOIN linija ON red_voznje.kod_linije = linija.kod_linije

INNER JOIN vozilo ON red_voznje.id_vozila = vozilo.ID

WHERE 
	vozilo.Tip_vozila = "AUT";



SELECT 
	polazna_tacka 

FROM linija

INNER JOIN red_voznje ON red_voznje.kod_linije = linija.kod_linije

INNER JOIN vozilo ON red_voznje.id_vozila = vozilo.ID

WHERE 
	vozilo.Tip_vozila = "TRO" OR vozilo.Tip_vozila ="AUT";



SELECT 
	polazna_tacka 

FROM linija

INNER JOIN red_voznje ON red_voznje.kod_linije = linija.kod_linije

INNER JOIN vozilo ON red_voznje.id_vozila = vozilo.ID

WHERE 
	vozilo.Tip_vozila = "TRA" OR vozilo.Tip_vozila ="AUT";



SELECT avg(godine) 

FROM vozac;



SELECT 
	max(godine), 
	ime, 
	prezime 

FROM vozac;



SELECT 
	kod_linije 

FROM linija

WHERE 
	polazna_tacka="Dom Armije" ORDER BY interval;



SELECT 
	red_voznje.id_vozaca,
	vozac.ime, 
	vozac.prezime 

FROM red_voznje

INNER JOIN vozac ON red_voznje.id_vozaca = vozac.ID

INNER JOIN linija ON linija.kod_linije = red_voznje.kod_linije

WHERE 
	linija.polazna_tacka="Dom Armije";



SELECT 
	red_voznje.id_vozaca, 
	vozac.ime, 
	vozac.prezime 

FROM red_voznje

INNER JOIN vozac ON red_voznje.id_vozaca = vozac.ID

INNER JOIN vozilo ON red_voznje.id_vozila = vozilo.ID

WHERE 
	vozilo.id = 12;




SELECT 
	red_voznje.id_vozaca,
	vozac.ime, 
	vozac.prezime 

FROM red_voznje

INNER JOIN vozac ON red_voznje.id_vozaca = vozac.ID

WHERE
	red_voznje.kod_linije = "16b" OR red_voznje.kod_linije="3";




SELECT 
	red_voznje.id_vozaca, 
	vozac.ime, 
	vozac.prezime 

FROM red_voznje

INNER JOIN vozac ON red_voznje.id_vozaca = vozac.ID

WHERE 
	red_voznje.smjena = 1;



SELECT 
	red_voznje.id_vozaca, 
	vozac.ime, 
	vozac.prezime 

FROM red_voznje

INNER JOIN vozac ON red_voznje.id_vozaca = vozac.ID

INNER JOIN vozilo ON red_voznje.id_vozila = vozilo.ID

WHERE 
	red_voznje.smjena = 1 AND  vozilo.Tip_vozila="TRA";



SELECT 
	red_voznje.kod_linije, 
	linija.polazna_tacka 

FROM red_voznje

INNER JOIN linija ON red_voznje.kod_linije = linija.kod_linije

INNER JOIN vozac ON red_voznje.id_vozaca = vozac.ID

WHERE 
	vozac.ID = 1;