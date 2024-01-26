CREATE DATABASE RegistroMaycolI;


USE RegistroMaycolI;



CREATE TABLE tbDepartamentos(
IDDepartamentos INT PRIMARY KEY,
N_Nombre VARCHAR(50)
);

CREATE TABLE tbCargos(
IDCargos INT PRIMARY KEY,
N_Nombre VARCHAR(50)
);

CREATE TABLE tbEmpleados(
IDEmpleados INT PRIMARY KEY,
N_Nombre VARCHAR(50),
A_Apellido VARCHAR(50),
C_Cargo VARCHAR(10),
F_Fecha_inicio VARCHAR(50),
IDCargos INT,
FOREIGN KEY(IDCargos) REFERENCES tbCargos(IDCargos),
IDDepartamentos INT,
FOREIGN KEY (IDDepartamentos) REFERENCES tbDepartamentos(IDDepartamentos)
);

CREATE TABLE tbProyectos(
IDProyectos INT PRIMARY KEY,
N_Nombre VARCHAR(50)
);

CREATE TABLE tbEmpresa(
IDEmpresa INT PRIMARY KEY AUTO_INCREMENT,
N_NombreEMPRESA VARCHAR(59),
IDEmpleados INT,
FOREIGN KEY(IDEmpleados) REFERENCES tbEmpleados(IDEmpleados),
IDProyectos INT,
FOREIGN KEY(IDProyectos) REFERENCES tbProyectos(IDProyectos)
);