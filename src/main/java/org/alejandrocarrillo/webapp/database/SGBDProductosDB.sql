CREATE DATABASE IF NOT EXISTS SGBDProductos2020412;
 
-- DROP DATABASE IF EXISTS SGBDProductos2020412;
 
USE SGBDProductos2020412;
 
CREATE TABLE Productos(
	productoId INT NOT NULL AUTO_INCREMENT,
    nombreProducto VARCHAR(30),
    marcaProducto VARCHAR(30),
    descripcionProducto VARCHAR(100),
    precio DECIMAL(10,2),
    PRIMARY KEY PK_productoId (productoId)
);

DELIMITER $$
CREATE PROCEDURE sp_AgregarProductos(IN nom VARCHAR(30), IN mar VARCHAR(30), IN des VARCHAR(100), IN pre DECIMAL(10,2))
BEGIN
	INSERT INTO Productos(nombreProducto, marcaProducto, descripcionProducto, precio)
		VALUES(nom,mar,des,pre);
END $$
DELIMITER ;

call sp_AgregarProductos('Leche','Foremost','Leche descremada.',15.2);

select * from productos;