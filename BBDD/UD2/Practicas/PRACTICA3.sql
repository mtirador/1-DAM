




4
SELECT A1.MATRICULA,A1.PRECIO
FROM AUTOMOVILES A1, AUTOMOVILES A2
WHERE A1.PRECIO>=A2.PRECIO AND
A2.MATRICULA ='3765BSD';



select marca,modelo,precio
FROM automoviles
where precio IN (SELECT precio from automoviles 
WHERE marca = 'seat');


SELECT NOMBRE,APELLIDOS,CON.*
FROM CLIENTES CLI INNER JOIN CONTRATOS CON 
ON CLI.DNI=CON.DNI
ORDER BY APELLIDOS;

SELECT NUMCONTRATOS FROM CONTRATOS 
WHERE DATEDIFF (FFINAL,FINICIAL) = (SELECT MAX (DATEDIFF(FFINAL,FINICIAL)) FROM CONTRATOS);

SELECT MATRICULA,MARCA,MODELO
FROM AUTOMOVILES WHERE PRECIO >(SELECT PRECIO FROM AUTOMOVILES WHERE MODELO = '500E');

7

SELECT MATRICULA,MARCA,MODELO
FROM AUTOMOVILES
WHERE PRECIO < (SELECT PRECIO FROM AUTOMOVILES
WHERE MODELO = 'FOCUS' AND
MARCA = 'FORD');

8
SELECT NOMBRE,APELLIDOS
FROM CLIENTES
WHERE CARNET = (SELECT CARNET FROM CLIENTES
WHERE NOMBRE = 'SORAYA' AND APELLIDOS LIKE 'BATS%');

9

SELECT MARCA,MODELO,PRECIO
FROM AUTOMOVILES
WHERE PRECIO IN (SELECT PRECIO FROM AUTOMOVILES WHERE MARCA = 'SEAT');

SELECT * FROM CONTRATOS4
WHERE DNI = (SELECT DNI FROM CLIENTES 
WHERE NOMBRE = 'BEATRIZ' AND APELLIDOS = 'GARCIA MARTIN');

SELECT CONTRATOS. * FROM CONTRATOS
NATURAL JOIN CLIENTESWHERE NOMBRE = 'BEATRIZ' AND APELLIDOS = 'GARCIA MARTIN';

SELECT NOMBRE, APELLIDOS,CON.*
FROM CLIENTES CLI INNER JOIN CONTRATOS CON 
ON CLI.DNI = CON.DNI
ORDER BY APELLIDOS;

SELECT NOMBRE, APELLIDOS, CON.*
FROM CLIENTES NATURAL JOIN 
WHERE DNI = '07385709';

SELECT MARCA,MODELO
FROM AUTOMOVILES NATURAL JOIN CONTRATOS NATURAL JOIN CLIENTES
WHERE NOMBRE = 'CARLOS JAVIER' AND APELLIDOS = 'LOPEZ CARVAJAL';

SELECT DATEDIFF (FFINAL,FINICIAL) AS DIAS FROM CONTRATOS
WHERE DNI = '09856064';

SELECT MATRICULA,MARCA,MODELO 
FROM AUTOMOVILES WHERE KILOMETROS
BETWEEN 10000 AND 30000 AND COLOR = 'ROJO';


SELECT * FROM AUTOMOVILES 
WHERE COLOR = 'azul' OR COLOR = 'verde' OR COLOR = ' blanco';

SELECT * FROM AUTOMOVILES 
WHERE COLOR = 'verde' AND EXTRAS LIKE "%ABS%" 
AND  EXTRAS LIKE "%AA%" AND KILOMETROS < 30000;

SELECT * FROM AUTOMOVILES 
WHERE PRECIO >=90 AND PRECIO <=900 AND ALQUILADO = FALSE;

SELECT * FROM AUTOMOVILES WHERE PRECIO < 100 AND EXTRAS LIKE 
"%CD%" AND KILOMETROS < 30000 AND ALQUILADO = 0 AND 
(COLOR = 'blanco' OR COLOR 'azul');