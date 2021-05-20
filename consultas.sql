--Por medio de inserts agregar datos de prueba a la tabla, en algunos apellidos concatenar al
--final y en mayúscula la palabra DEL.

insert into person(ID,NOMBRE,APELLIDO,EDAD) VALUES(4,'USER 4','USUARIO 4',13)
insert into person(ID,NOMBRE,APELLIDO,EDAD) VALUES(5,'USER 5','USUARIO 5',14) 
insert into person(ID,NOMBRE,APELLIDO,EDAD) VALUES(6,'USER 6','USUARIO 6',14) 
insert into person(ID,NOMBRE,APELLIDO,EDAD) VALUES(7,'USER 7','USUARIO 6',199) 
insert into person(ID,NOMBRE,APELLIDO,EDAD) VALUES(8,'USERDEL','USUARIODEL',199) 


SELECT p.id, CONCAT(P.NOMBRE,'  ',P.APELLIDO), p.edad  from Person AS P;


SELECT count(p.edad),p.edad FROM Person AS P
GROUP BY P.EDAD

--FALTA POR MOSTRAR EL IF
SELECT p.nombre,p.APELLIDO,p.edad  from Person as p
order by p.edad desc

--Actualizar la edad de todas las personas mayores o iguales de 50 años restándole 5.
UPDATE Person set edad=edad-5 where edad>=50

--Eliminar las personas que contengan la palabra DEL solo al final de su apellido.

delete from Person where apellido=""




