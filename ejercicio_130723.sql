create database ejercicio2;
use ejercicio2;

create table productos(
	id int primary key,
    nombre varchar(30) not null,
    precio double not null,
    stock int not null
);

INSERT productos(id, nombre, precio, stock) VALUES
(1, 'Producto 1', 10.99, 100),
(2, 'Producto 2', 15.50, 50),
(3, 'Producto 3', 5.99, 200),
(4, 'Producto 4', 8.75, 75),
(5, 'Producto 5', 12.49, 150),
(6, 'Producto 6', 9.99, 100),
(7, 'Producto 7', 14.99, 80),
(8, 'Producto 8', 6.25, 120),
(9, 'Producto 9', 11.99, 60),
(10, 'Producto 10', 7.50, 90),
(11, 'Producto 11', 16.99, 110),
(12, 'Producto 12', 3.99, 30),
(13, 'Producto 13', 9.50, 70),
(14, 'Producto 14', 13.75, 180),
(15, 'Producto 15', 4.99, 40);


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_tabla_productos`()
BEGIN
	select * from productos;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `aumentar_stock`(in id_ int, in cantidad_aumentar_ int)
BEGIN
	UPDATE productos SET stock=stock+cantidad_aumentar_ WHERE id = id_;
END$$
DELIMITER ;


call mostrar_tabla_productos();
call aumentar_stock(1,10);











