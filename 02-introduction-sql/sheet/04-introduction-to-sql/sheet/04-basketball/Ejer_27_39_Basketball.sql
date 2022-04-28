27	SET @jugon=5; SELECT * FROM jugadores WHERE valoracion=@jugon;
28	SELECT * FROM jugadores WHERE tapones IS NULL; SELECT * FROM jugadores WHERE tapones IS NOT NULL;
29	SELECT * FROM jugadores WHERE partidos = 1093 or partidos = 697 OR partidos = 926 OR partidos = 687; SELECT * FROM jugadores WHERE partidos IN (1093,697,926,687);
30	SELECT * FROM jugadores WHERE partidos!=1093 and partidos!=697 and partidos!=926 and partidos!=687; SELECT * FROM jugadores WHERE partidos NOT IN (1093,697,926,687);
31	SELECT * FROM jugadores WHERE puntos>=17 AND puntos <=24; SELECT * FROM jugadores WHERE puntos BETWEEN 17 AND 24;
32	SELECT 'El jugador', nombre, 'ha metido',puntos,'puntos' FROM jugadores ;
33	SELECT nombre, IF(Puntos>10 && Rebotes>10,'si','no') AS 'doble-doble' FROM jugadores;
34	SELECT IFNULL(puntos,0)+IFNULL(rebotes,0)+IFNULL(tapones,0) AS 'suma' FROM jugadores;
35	SELECT IFNULL(puntos,0)+IFNULL(rebotes,0)+IFNULL(tapones,0) AS 'suma', IF(puntos+rebotes+tapones<=>null,'Es nulo','') AS 'Tiene nulos'  FROM jugadores;
36	SELECT IFNULL(tapones, nombre) AS 'tapones' FROM jugadores;
37	SELECT nombre, IF(valoracion=1,'paquete',IF(valoracion=2,'normal',IF(valoracion=3,'bueno',IF(valoracion=4,'estrella', 'jugon')))) AS 'valoracion' FROM jugadores;
38	SELECT nombre, case valoracion when 1 then 'paquete' when 2 then 'normal' when 3 then 'bueno' when 4 then 'estrella' ELSE 'jugon' END AS 'valoracion' FROM jugadores; SELECT nombre, case when valoracion=1 then 'paquete' when valoracion=2 then 'normal' when valoracion=3 then 'bueno' when valoracion=4 then 'estrella' ELSE 'jugon' END AS 'valoracion' FROM jugadores;
39	SELECT nombre, case when partidos>1000 then 'carrera larga' when partidos>=900 && partidos<=1000 then 'carrera normal' ELSE 'carrera corta' END AS 'Tiempo ha jugado' FROM jugadores;