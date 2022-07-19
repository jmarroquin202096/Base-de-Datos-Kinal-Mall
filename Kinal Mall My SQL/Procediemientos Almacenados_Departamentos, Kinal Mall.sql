USE IN5BVKINALMALL_JOSUEMARROQUIN;

-- Procedimientos Almacenados para la Entidad Departamentos

-- INSERT

DROP PROCEDURE IF EXISTS sp_AgregarDepartamentos; 
DELIMITER $$
CREATE PROCEDURE sp_AgregarDepartamentos (
	IN _nombre VARCHAR(45)
)
BEGIN
	INSERT INTO Departamentos (nombre) 
    VALUES (_nombre);
END $$
DELIMITER ;

-- UPDATE

DROP PROCEDURE IF EXISTS sp_EditarDepartamentos;
DELIMITER $$
CREATE PROCEDURE sp_EditarDepartamentos (
	IN _id INT,
	IN _nombre VARCHAR(45)
)
BEGIN
	UPDATE Departamentos 
    SET 
		nombre = _nombre
    WHERE id = _id;
END $$
DELIMITER ;

-- DELETE

DROP PROCEDURE IF EXISTS sp_EliminarDepartamentos;
DELIMITER $$
CREATE PROCEDURE sp_EliminarDepartamentos (IN _id INT)
BEGIN
	DELETE FROM Departamentos WHERE id = _id;
END $$
DELIMITER ;

-- SELECT

DROP PROCEDURE IF EXISTS sp_BuscarDepartamentos;
DELIMITER $$
CREATE PROCEDURE sp_BuscarDepartamentos(IN _id INT)
BEGIN
	SELECT 
		Departamentos.id, 
		Departamentos.nombre
	FROM Departamentos
    WHERE id = _id;
END $$
DELIMITER ;

