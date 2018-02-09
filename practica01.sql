
--1. Datos de todos los vendedores que nacieron antes de 1970.

--Tabla vendedor vacía. Sin resultados.
select *
from vendedor as v join persona as p on v.rfc_vendedor = p.rfc
where p.anio_nacimiento < 1970;

--2. Datos de todos los autos cuya marca empiece con la letra F.

--Tabla auto vacía. Sin resultados.
select *
from auto
where marca like 'F%';

--3. Los datos de los clientes, considerando el orden alfabético, que tienen RFC después de
--PEM581022U96, ordenados en orden descendente.

--Tabla cliente vacía. Sin resultado.
select *
from cliente
where cliente.rfc_cliente > 'PEM581022U96'
order by cliente.rfc_cliente desc;

--4. Los empleados que ganan igual o menos que $1500.

--Tabla vendedor vacía. Sin resultado.
select *
from vendedor
where vendedor.sueldo <= '1500';

--5. Los RFC de aquellos clientes que nacieron entre 1920 y 1953.

--Tabla cliente vacía. Sin resultados.
select *
from cliente as c join persona as p on c.rfc_cliente = p.rfc
where (p.anio_nacimiento >= 1920) and (p.anio_nacimiento <= 1953);

--6. Los distintos colores de autos que se han vendido durante el 2016.

--Tabla auto vacía. Sin resultados.
select auto.color
from auto
where extract(year from auto.fecha_compra) = 2016
group by auto.color;

--7. Nombre completo y fecha de nacimiento de los distintos clientes, en orden descendente por año de
--nacimiento, que tengan en su apellido materno la letra r en la segunda posición, con año de
--nacimiento menor o igual a 1999 y que han comprado al menos un auto de la marca Nissan en el año
--2016.

--Tabla cliente vacía. Sin resultados.
select rea.nombre, rea.apaterno, rea.amaterno, rea.anio_nacimiento
from (select *
from (select p.nombre, p.apaterno, p.amaterno, p.anio_nacimiento, c.rfc_cliente
from cliente as c join persona as p on c.rfc_cliente = p.rfc
where (p.amaterno like '_r%') and (p.anio_nacimiento <= 1999)
order by p.anio_nacimiento DESC) as cl inner join realiza as r on cl.rfc_cliente = r.rfc_cliente) as rea 
inner join auto as au on rea.no_motor = au.no_motor
where au.marca like 'Nissan' and extract(year from au.fecha_compra) = 2016;

--8. Nombre completo y año de nacimiento de los distintos empleados, en orden ascendente por año de
--nacimiento, que vivan en la calle 204 Posurere, con año de nacimiento menor o igual a 1994, y que
--han vendido al menos un auto de la marca Ford en el año 2016.

--Tabla vendedor vacía. Sin resultado.
select auxem.nombre, auxem.apaterno, auxem.amaterno, auxem.anio_nacimiento
from (select *
from (select p.nombre, p.apaterno, p.amaterno, p.anio_nacimiento, v.rfc_vendedor, p.id_direccion
from vendedor as v inner join persona as p on v.rfc_vendedor = p.rfc
where p.anio_nacimiento <= 1994
order by p.anio_nacimiento ASC) em
inner join 
realiza on em.rfc_vendedor = realiza.rfc_vendedor
inner join 
auto on realiza.no_motor = auto.no_motor
where auto.marca like 'Ford' and extract(year from auto.fecha_compra) = 2016) as auxem
inner join 
direccion as dir on dir.id = auxem.id_direccion
where dir.calle like '204 Posurere';


--9. Obtener los nombres completos de todos los clientes, ordenados por apellido paterno y materno, que
--han realizado compras de autos de la marca Seat o Nissan.

--Sin coherencia.

--10. El sueldo promedio de los empleados que vendieron 2 autos de color rojo o de marca Nissan.

--Sin coherencia. No tenemos una referencia.

--11. Número de autos que fueron vendidos entre 2014 y 2016, agrupados por color.

--Sin coherencia. No tenemos registro estre esas fechas.

--12. El RFC de los clientes que compraron un auto durante el primer trimestre de 2015.

--Sin coherencia. No tenemos registro de esa fecha.

--13. Número de autos de la marca Toyota que fueron vendidos desde la fundación de la agencia y hasta el
--2016, agrupados por modelo.

--Sin coherencia, ya que no tenemos datos desde la fundación.

--14. Total de autos vendidos por la agencia, por marca, en cada trimestre del año 2010.

--Sin coherencia. No tenemos registro de esa fecha.

--15. Número de autos vendidos por cada empleado, en cada semestre de 2016.

--Sin coherencia.