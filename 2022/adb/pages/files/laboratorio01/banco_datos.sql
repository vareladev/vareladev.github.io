--Definici�n de tablas
--******************************************************************************

CREATE TABLE AUTOR(
	idAutor INT PRIMARY KEY,
	nombre VARCHAR2(50),
	fechaNacimiento DATE NULL,
	fechaMuerte DATE NULL
);


CREATE TABLE CONDICION(
	idCondicion INT PRIMARY KEY,
	condicion VARCHAR2(50)
);

CREATE TABLE LIBRO(
	codLibro INT PRIMARY KEY,
	titulo VARCHAR2(50),
	fechaEdicion DATE,
	precio FLOAT,
	idCondicion INT
);

CREATE TABLE LIBROXAUTOR(
	idAutor INT NOT NULL,
	codLibro INT NOT NULL
);

CREATE TABLE CLIENTE(
	idCliente INT PRIMARY KEY,
	nombre VARCHAR2(50),
	telefono CHAR(9),
	direccion VARCHAR2(50)
);

CREATE TABLE DEPARTAMENTO(
	idDepartamento INT PRIMARY KEY,
	departamento VARCHAR2(25)
);

CREATE TABLE EMPLEADO(
	idEmpleado INT PRIMARY KEY,
	nombre VARCHAR2(50),
	direccion VARCHAR2(50),
	idDepartamento INT
);

CREATE TABLE FACTURA(
	idFactura INT PRIMARY KEY,
	idEmpleado INT,
	idCliente INT,
	fecha DATE
);

CREATE TABLE FACTURADETALLE(
	idFactura INT NOT NULL,
	codLibro INT NOT NULL,
	cantidad FLOAT
);

--Definici�n de llaves for�neas y primarias
--******************************************************************************
--FK libro
ALTER TABLE LIBRO ADD CONSTRAINT FK_libro_condicion FOREIGN KEY (IdCondicion) REFERENCES CONDICION(idCondicion);
--PK,FK libroxautor
ALTER TABLE LIBROXAUTOR ADD PRIMARY KEY (idAutor ,codLibro);
ALTER TABLE LIBROXAUTOR ADD CONSTRAINT FK_autor_x FOREIGN KEY (idAutor) REFERENCES AUTOR(idAutor);
ALTER TABLE LIBROXAUTOR ADD CONSTRAINT FK_libro_x FOREIGN KEY (codLibro) REFERENCES LIBRO(codLibro);
--FK empleado
ALTER TABLE EMPLEADO ADD CONSTRAINT FK_empleado_depto FOREIGN KEY (idDepartamento) REFERENCES DEPARTAMENTO(idDepartamento);
--FK factura
ALTER TABLE FACTURA ADD CONSTRAINT FK_factura_empleado FOREIGN KEY (idEmpleado) REFERENCES EMPLEADO(idEmpleado);
ALTER TABLE FACTURA ADD CONSTRAINT FK_factura_cliente FOREIGN KEY (idCliente) REFERENCES CLIENTE(idCliente);
--FK Factura Detalle
ALTER TABLE FACTURADETALLE ADD CONSTRAINT FK_detallefactura_f FOREIGN KEY (idFactura) REFERENCES FACTURA(idFactura);
ALTER TABLE FACTURADETALLE ADD CONSTRAINT FK_detallefactura_l FOREIGN KEY (codLibro) REFERENCES LIBRO(codLibro);

--Banco de datos
--******************************************************************************
--CLIENTE
INSERT INTO autor VALUES(1,'Ahmed Hancock','25-10-1963','30-04-1991');
INSERT INTO autor VALUES(2,'Stella Eaton','20-02-1977','30-01-1995');
INSERT INTO autor VALUES(3,'Richard Mccarthy','30-09-1965','11-02-1994');
INSERT INTO autor VALUES(4,'Meredith Kelly','04-05-2002',NULL);
INSERT INTO autor VALUES(5,'Callie Holmes','19-06-1959','28-12-2000');
INSERT INTO autor VALUES(6,'Tucker Valencia','28-04-1987',NULL);
INSERT INTO autor VALUES(7,'Upton Gates','22-05-2001',NULL);
INSERT INTO autor VALUES(8,'Sara Head','27-06-1965','08-03-2010');
INSERT INTO autor VALUES(9,'Barbara Valentine','21-11-1966','26-10-2015');
INSERT INTO autor VALUES(10,'Kirsten Ryan','12-05-1976',NULL);

--CONDICION
INSERT INTO condicion VALUES(1,'Nuevo');
INSERT INTO condicion VALUES(2,'Usado');

--LIBRO
INSERT INTO LIBRO VALUES(1,'interdum libero dui','12-10-2015',39.98,2);
INSERT INTO LIBRO VALUES(2,'sociis natoque penatibus','12-05-2012',29.10,2);
INSERT INTO LIBRO VALUES(3,'non leo. Vivamus','07-11-2013',90.30,1);
INSERT INTO LIBRO VALUES(4,'ligula.','09-10-2010',63.77,2);
INSERT INTO LIBRO VALUES(5,'Morbi','20-02-2014',39.13,1);
INSERT INTO LIBRO VALUES(6,'vel, faucibus id,','27-06-2013',72.81,1);
INSERT INTO LIBRO VALUES(7,'Etiam imperdiet dictum','19-09-2011',53.92,1);
INSERT INTO LIBRO VALUES(8,'Nunc pulvinar arcu','02-06-2011',54.39,1);
INSERT INTO LIBRO VALUES(9,'velit.','14-09-2016',60.34,2);
INSERT INTO LIBRO VALUES(10,'id,','19-02-2016',61.29,1);
INSERT INTO LIBRO VALUES(11,'aliquet vel,','11-03-2016',97.82,1);
INSERT INTO LIBRO VALUES(12,'id','15-03-2017',82.05,1);
INSERT INTO LIBRO VALUES(13,'mollis lectus','14-02-2016',50.96,2);
INSERT INTO LIBRO VALUES(14,'convallis,','25-01-2017',35.86,2);
INSERT INTO LIBRO VALUES(15,'ut,','03-05-2010',63.44,2);
INSERT INTO LIBRO VALUES(16,'bibendum','21-02-2017',56.09,2);
INSERT INTO LIBRO VALUES(17,'egestas rhoncus. Proin','15-03-2011',37.04,2);
INSERT INTO LIBRO VALUES(18,'euismod','23-09-2013',39.05,2);
INSERT INTO LIBRO VALUES(19,'dolor.','07-01-2015',79.80,2);
INSERT INTO LIBRO VALUES(20,'lectus. Nullam suscipit,','28-12-2010',61.75,1);

--LIBROXAUTOR
INSERT INTO LIBROXAUTOR VALUES(4,5);
INSERT INTO LIBROXAUTOR VALUES(6,8);
INSERT INTO LIBROXAUTOR VALUES(3,5);
INSERT INTO LIBROXAUTOR VALUES(5,3);
INSERT INTO LIBROXAUTOR VALUES(9,7);
INSERT INTO LIBROXAUTOR VALUES(4,12);
INSERT INTO LIBROXAUTOR VALUES(8,6);
INSERT INTO LIBROXAUTOR VALUES(1,9);
INSERT INTO LIBROXAUTOR VALUES(7,20);
INSERT INTO LIBROXAUTOR VALUES(5,20);
INSERT INTO LIBROXAUTOR VALUES(3,14);
INSERT INTO LIBROXAUTOR VALUES(1,16);
INSERT INTO LIBROXAUTOR VALUES(3,3);
INSERT INTO LIBROXAUTOR VALUES(4,14);
INSERT INTO LIBROXAUTOR VALUES(1,10);
INSERT INTO LIBROXAUTOR VALUES(6,14);
INSERT INTO LIBROXAUTOR VALUES(6,12);
INSERT INTO LIBROXAUTOR VALUES(7,9);
INSERT INTO LIBROXAUTOR VALUES(4,13);
INSERT INTO LIBROXAUTOR VALUES(9,20);
INSERT INTO LIBROXAUTOR VALUES(7,7);
INSERT INTO LIBROXAUTOR VALUES(9,9);
INSERT INTO LIBROXAUTOR VALUES(2,3);
INSERT INTO LIBROXAUTOR VALUES(8,10);
INSERT INTO LIBROXAUTOR VALUES(10,20);
INSERT INTO LIBROXAUTOR VALUES(5,9);
INSERT INTO LIBROXAUTOR VALUES(3,8);
INSERT INTO LIBROXAUTOR VALUES(10,19);
INSERT INTO LIBROXAUTOR VALUES(5,17);
INSERT INTO LIBROXAUTOR VALUES(6,15);

--CLIENTE
INSERT INTO CLIENTE VALUES(1,'Slade Ball','7079-7355','Ap #177-8082 Tempus, Road');
INSERT INTO CLIENTE VALUES(2,'Jin Gates','7311-4691','Ap #966-954 At, St.');
INSERT INTO CLIENTE VALUES(3,'Gabriel Houston','7247-8502','705-6765 Ante Ave');
INSERT INTO CLIENTE VALUES(4,'Willa Vega','7725-8954','664-9905 Lacus, Rd.');
INSERT INTO CLIENTE VALUES(5,'Linus Moody','7495-3540','Ap #867-8619 Nulla Rd.');
INSERT INTO CLIENTE VALUES(6,'Jade Duffy','7849-1137','P.O. Box 412, 3982 Tempus Av.');
INSERT INTO CLIENTE VALUES(7,'Tyrone Cochran','7075-1329','902-151 Sit Road');
INSERT INTO CLIENTE VALUES(8,'Ronan Olson','7180-1825','Ap #146-7468 Phasellus Street');
INSERT INTO CLIENTE VALUES(9,'Rebekah Rollins','7898-0668','Ap #581-6013 Mollis Ave');
INSERT INTO CLIENTE VALUES(10,'Herrod Faulkner','7175-4045','P.O. Box 913, 757 Lectus Rd.');

--DEPARTAMENTO
INSERT INTO DEPARTAMENTO VALUES(1,'Ventas');
INSERT INTO DEPARTAMENTO VALUES(2,'Administracion');
INSERT INTO DEPARTAMENTO VALUES(3,'Desarrollo');

--EMPLEADO
INSERT INTO EMPLEADO VALUES(1,'Laith Davidson','222-5718 Pellentesque Avenue',1);
INSERT INTO EMPLEADO VALUES(2,'Oscar Osborn','3988 Cursus Avenue',1);
INSERT INTO EMPLEADO VALUES(3,'Eugenia Joseph','183-445 Mi. Road',1);
INSERT INTO EMPLEADO VALUES(4,'Kellie Conley','P.O. Box 135, 8791 Et Avenue',1);
INSERT INTO EMPLEADO VALUES(5,'Scott Bernard','P.O. Box 573, 6063 Lorem Road',1);
INSERT INTO EMPLEADO VALUES(6,'Joan Good','Ap #906-3122 Eu Av.',1);
INSERT INTO EMPLEADO VALUES(7,'Colt Lott','9139 Mollis. St.',1);
INSERT INTO EMPLEADO VALUES(8,'Ebo Battle','P.O. Box 952, 274 Felis. St.',1);
INSERT INTO EMPLEADO VALUES(9,'Nash Thomas','120-4539 Magna Street',1);
INSERT INTO EMPLEADO VALUES(10,'Mohammad Pope','Ap #886-5973 Cras Street',1);
INSERT INTO EMPLEADO VALUES(11,'Dominic Buckley','527-7983 Turpis Road',1);
INSERT INTO EMPLEADO VALUES(12,'Mira Kidd','861-8983 Molestie St.',1);
INSERT INTO EMPLEADO VALUES(13,'Flavia Horton','Ap #240-8663 Tincidunt St.',1);
INSERT INTO EMPLEADO VALUES(14,'Kenneth Huffman','P.O. Box 717, 5892 Natoque Rd.',1);
INSERT INTO EMPLEADO VALUES(15,'Orli Merrill','P.O. Box 846, 9367 Dui. Rd.',1);

--FACTURA
INSERT INTO FACTURA VALUES(1,3,9,'24/01/2018');
INSERT INTO FACTURA VALUES(2,15,9,'25/01/2018');
INSERT INTO FACTURA VALUES(3,4,8,'04/01/2018');
INSERT INTO FACTURA VALUES(4,3,1,'12/01/2018');
INSERT INTO FACTURA VALUES(5,8,6,'29/01/2018');
INSERT INTO FACTURA VALUES(6,6,3,'20/01/2018');
INSERT INTO FACTURA VALUES(7,1,2,'26/01/2018');
INSERT INTO FACTURA VALUES(8,1,6,'16/01/2018');
INSERT INTO FACTURA VALUES(9,12,6,'31/01/2018');
INSERT INTO FACTURA VALUES(10,6,9,'20/01/2018');
INSERT INTO FACTURA VALUES(11,1,4,'04/01/2018');
INSERT INTO FACTURA VALUES(12,7,8,'24/01/2018');
INSERT INTO FACTURA VALUES(13,1,3,'06/01/2018');
INSERT INTO FACTURA VALUES(14,10,1,'20/01/2018');
INSERT INTO FACTURA VALUES(15,15,5,'17/01/2018');
INSERT INTO FACTURA VALUES(16,2,4,'04/01/2018');
INSERT INTO FACTURA VALUES(17,13,2,'24/01/2018');
INSERT INTO FACTURA VALUES(18,12,9,'03/01/2018');
INSERT INTO FACTURA VALUES(19,1,2,'02/01/2018');
INSERT INTO FACTURA VALUES(20,10,8,'01/01/2018');
INSERT INTO FACTURA VALUES(21,6,9,'20/01/2018');
INSERT INTO FACTURA VALUES(22,15,6,'16/01/2018');
INSERT INTO FACTURA VALUES(23,12,5,'02/01/2018');
INSERT INTO FACTURA VALUES(24,5,5,'15/01/2018');
INSERT INTO FACTURA VALUES(25,3,3,'11/01/2018');

--DETALLE FACTURA
INSERT INTO FACTURADETALLE VALUES(20,20,1);
INSERT INTO FACTURADETALLE VALUES(3,8,2);
INSERT INTO FACTURADETALLE VALUES(17,6,4);
INSERT INTO FACTURADETALLE VALUES(11,16,2);
INSERT INTO FACTURADETALLE VALUES(10,20,4);
INSERT INTO FACTURADETALLE VALUES(3,16,1);
INSERT INTO FACTURADETALLE VALUES(23,19,5);
INSERT INTO FACTURADETALLE VALUES(11,18,5);
INSERT INTO FACTURADETALLE VALUES(7,15,1);
INSERT INTO FACTURADETALLE VALUES(13,3,1);
INSERT INTO FACTURADETALLE VALUES(20,16,3);
INSERT INTO FACTURADETALLE VALUES(21,6,5);
INSERT INTO FACTURADETALLE VALUES(2,5,5);
INSERT INTO FACTURADETALLE VALUES(24,12,2);
INSERT INTO FACTURADETALLE VALUES(1,4,2);
INSERT INTO FACTURADETALLE VALUES(21,12,3);
INSERT INTO FACTURADETALLE VALUES(18,11,2);
INSERT INTO FACTURADETALLE VALUES(18,6,5);
INSERT INTO FACTURADETALLE VALUES(14,7,5);
INSERT INTO FACTURADETALLE VALUES(22,19,5);
INSERT INTO FACTURADETALLE VALUES(9,5,3);
INSERT INTO FACTURADETALLE VALUES(22,19,4);
INSERT INTO FACTURADETALLE VALUES(8,6,2);
INSERT INTO FACTURADETALLE VALUES(21,19,1);
INSERT INTO FACTURADETALLE VALUES(22,14,4);
INSERT INTO FACTURADETALLE VALUES(11,18,5);
INSERT INTO FACTURADETALLE VALUES(22,15,3);
INSERT INTO FACTURADETALLE VALUES(4,10,3);
INSERT INTO FACTURADETALLE VALUES(1,3,3);
INSERT INTO FACTURADETALLE VALUES(10,3,1);
INSERT INTO FACTURADETALLE VALUES(24,5,5);
INSERT INTO FACTURADETALLE VALUES(16,15,1);
INSERT INTO FACTURADETALLE VALUES(2,10,4);
INSERT INTO FACTURADETALLE VALUES(12,8,3);
INSERT INTO FACTURADETALLE VALUES(22,19,2);
INSERT INTO FACTURADETALLE VALUES(19,16,4);
INSERT INTO FACTURADETALLE VALUES(13,10,5);
INSERT INTO FACTURADETALLE VALUES(5,6,2);
INSERT INTO FACTURADETALLE VALUES(2,2,5);
INSERT INTO FACTURADETALLE VALUES(3,12,3);
INSERT INTO FACTURADETALLE VALUES(13,5,2);
INSERT INTO FACTURADETALLE VALUES(9,18,3);
INSERT INTO FACTURADETALLE VALUES(2,14,1);
INSERT INTO FACTURADETALLE VALUES(3,17,4);
INSERT INTO FACTURADETALLE VALUES(13,7,3);
INSERT INTO FACTURADETALLE VALUES(14,3,2);
INSERT INTO FACTURADETALLE VALUES(4,12,2);
INSERT INTO FACTURADETALLE VALUES(15,9,2);
INSERT INTO FACTURADETALLE VALUES(22,20,3);
INSERT INTO FACTURADETALLE VALUES(22,10,2);
INSERT INTO FACTURADETALLE VALUES(22,16,3);
INSERT INTO FACTURADETALLE VALUES(1,19,5);
INSERT INTO FACTURADETALLE VALUES(5,11,3);
INSERT INTO FACTURADETALLE VALUES(23,8,5);
INSERT INTO FACTURADETALLE VALUES(4,8,4);
INSERT INTO FACTURADETALLE VALUES(7,20,4);
INSERT INTO FACTURADETALLE VALUES(10,15,1);
INSERT INTO FACTURADETALLE VALUES(9,7,3);
INSERT INTO FACTURADETALLE VALUES(20,17,3);
INSERT INTO FACTURADETALLE VALUES(4,8,1);
INSERT INTO FACTURADETALLE VALUES(9,1,4);
INSERT INTO FACTURADETALLE VALUES(20,13,3);
INSERT INTO FACTURADETALLE VALUES(24,16,2);
INSERT INTO FACTURADETALLE VALUES(21,19,4);
INSERT INTO FACTURADETALLE VALUES(23,7,3);
INSERT INTO FACTURADETALLE VALUES(1,5,3);
INSERT INTO FACTURADETALLE VALUES(16,6,1);
INSERT INTO FACTURADETALLE VALUES(3,19,3);
INSERT INTO FACTURADETALLE VALUES(14,11,2);
INSERT INTO FACTURADETALLE VALUES(19,12,2);

commit;









