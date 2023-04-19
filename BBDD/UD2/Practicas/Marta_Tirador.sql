



1

   Lo hice con el WorkBench
   
   lo importé en self-Contained file C:\BD\examen.sql
   
   

2
 //cambia el tipo del campo ciudad de la tabla cliente por varchar(33) 
 y por valor defecto Santander
 
 ALTER TABLE CLIENTE MODIFY COLUMN CIUDAD VARCHAR(33) DEFAULT "SANTANDER";

3


INSERT INTO COMERCIAL(NOMBRE,APELLIDO1,APELLIDO2,COMISIÓN)
VALUES ('MARTA','TIRADOR','GUTIERREZ',0.15);


4.


INSERT INTO PEDIDO(TOTAL,FECHA,ID_CLIENTE,ID_COMERCIAL)
VALUES (888.00,CURDATE(),1,9);

INSERT INTO PEDIDO(TOTAL,FECHA,ID_CLIENTE,ID_COMERCIAL)
VALUES (888.00,CURDATE(),5,9);

5


SELECT DISTINCT C1.NOMBRE, C1.APELLIDO1, C1.APELLIDO2
FROM COMERCIAL AS C1 JOIN PEDIDO AS P
ON C1.ID= P.ID_COMERCIAL
WHERE C1.ID IN (SELECT ID FROM CLIENTE WHERE CIUDAD='SEVILLA');

SELECT DISTINCT C.NOMBRE, C.APELLIDO1, C.APELLIDO2
FROM COMERCIAL AS C JOIN PEDIDO AS P 
ON C.ID= P.ID_COMERCIAL
WHERE C.ID IN (SELECT ID FROM CLIENTE WHERE CIUDAD='SEVILLA');


SELECT DISTINCT COMERCIAL.NOMBRE, COMERCIAL.APELLIDO1, COMERCIAL.APELLIDO2
FROM COMERCIAL JOIN PEDIDO ON COMERCIAL.ID= PEDIDO.ID_COMERCIAL
WHERE COMERCIAL.ID IN (SELECT ID FROM CLIENTE WHERE CIUDAD='SEVILLA');


6




SELECT MAX(TOTAL) FROM PEDIDO; //EL PEDIDO MAXIMO




7


SELECT C.ID, C.NOMBRE, P.TOTAL, P.FECHA
FROM CLIENTE C RIGHT JOIN PEDIDO P ON C.ID = P.ID_CLIENTE;


8

 


9

SELECT co.nombre, co.apellido1, SUM(p.total) AS total_ventas
FROM comercial co
LEFT JOIN pedido p
ON co.id = p.id_comercial
GROUP BY co.id;



10

SELECT * FROM COMERCIAL
WHERE COMISIÓN>(SELECT COMISIÓN FROM COMERCIAL WHERE NOMBRE='DIEGO' AND APELLIDO1='FLORES');




	

