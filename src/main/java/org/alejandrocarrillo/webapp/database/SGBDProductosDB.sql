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
 
select * from productos;