--Hacer un select de todas las tablas seleccionando todas las columnas, 
--utilizando las dos maneras posibles de seleccionar todas las columnas.

select * from employeeS; 
select * from departments;
-- Nota GV: Acá Falta agregar los selects de la otra manera posible que es nombrando todos los campos de cada tabla

-- Hacer un select de cada tabla ordenando por la PK
-- de forma ascendente y luego de forma Descendente.

select EMPNO from employees
order by EMPNO asc;

--Nota GV: Que estes ordenando por la PK no necesariamente te traigas en el select solo la PK, 
-- Tambien faltó la forma descendente y el select de a otra tabla

--3) Hacer un select de cada tabla "renombrando" cada columna por su correspondiente nombre en español

SELECT DPT.deptno as numero , DPT.name as nombre
FROM DEPARTMENTS DPT;

-- NOTA GV: Faltó la otra tabla.

--4) En el select de la tabla de empleados mostrar una nueva columna llamada sueldo_total que multiplique el sueldo por el campo comision

select EMP.EMPNO , EMP.name , EMP.JOB , EMP.salary * EMP.commission as CALCULO
from employees EMP

  -- NOTA GV: Faltó en el select agregar los campos sin multiplicar (salary y commission), y faltó el ;


--5) En el select de la tabla de empleados mostrar una nueva columna llamada aumento equivalente al sueldo m�s un 20% de aumento

select EMP.EMPNO , EMP.name , EMP.JOB , EMP.salary + ((EMP.salary * 20) / 100) as SUELDO_MAS_20
from employees EMP;
 -- NOTA GV: Faltó en el select agregar el campo salary, la columna temporal debe llamarse aumento.

--6) Hacer una query donde se puedan obtener todos los diferentes nombres de los empleados.

SELECT DISTINCT EMP.NAME 
from EMPLOYEES EMP;

--7) Obtener todos los diferentes nombres de departamento.

SELECT DISTINCT DPT.NAME FROM DEPARTMENTS DPT;


--8) Obtener todos los empleados en que la fecha de contrato sea menor al 01/01/2019

SELECT * FROM EMPLOYEES EMP
where EMP.HIREDATE < '01/01/2019' ;

--9) Obtener todos los nombres de los empleados que pertenecen al departamento con el nombre "Engineering"

SELECT * FROM DEPARTMENTS DPT
where DPT.NAME = 'Engineering';

--NOTA GV: se deben obtener los nombres de los empleados que pertenecen a ese departamento, 
-- de esta manera se obtienen los nombres de los departamentos

--10) Obtener todos los nombres de los empleados que pertenecen al departamento con el nombre "Engineering"
--   y que tengan un salario entre 1000 y 5500

SELECT * FROM EMPLOYEES EMP
where EMP.NAME = 'Engineering' AND EMP.SALARY between 1000 and 5500;

--NOTA GV: de esta manera se está filtrando por los empleados que tengan el nombre Engineering, pero no los departamentos con ese nombre.
-- Avisame si necesitas ayuda para resolver este punto y el anterior.

--11) Obtener todos los empleados y todos los departamentos (tabla original de departamentos), tengan o no tengan valores en común.

select * from employees, departments;

-- NOTA GV: esto resulta en una combinación de cada registro de empleados con cada registro de departamentos (cross join)
-- pero lo solicitado es lo que se obtendría de un full join

--12) Obtener el listado de empleados que tengan departamento, con la descripción del mismo, 
--pero así mismo traer todas las descripciones de los departamentos aunque no estén asignados a ningún empleado.

select DPT.NAME , EMP.EMPNO , EMP.NAME , EMP.JOB , EMP.HIREDATE , EMP.SALARY , EMP.SALARY , EMP.COMMISSION
from DEPARTMENTS DPT , EMPLOYEES EMP
where EMP.DEPTNO IS NOT NULL;

--NOTA GV: recordá que si hacemos un join con comas y sin condición de igualación en el WHERE estamos haciendo un cross join,
-- por lo que nos traemos combinaciones de datos que no queremos. Probalo en la BD y verifica el resultado. 

--De igual manera la parte que dice:
--pero así mismo traer todas las descripciones de los departamentos aunque no esten asignados a ningun empleado.

--No se estaría cumpliendo.

--13) Mostrar los departamentos que tienen misma descripcion (en misma tabla original) pero el id es diferente

--NOTA GV: falta completar



