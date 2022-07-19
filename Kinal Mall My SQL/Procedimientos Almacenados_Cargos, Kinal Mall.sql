USE IN5BVKINALMALL_JOSUEMARROQUIN;

-- Procedimientos Almacenados para la Entidad Cargos

-- INSERT

DROP PROCEDURE IF EXISTS sp_AgregarCargos; 
DELIMITER $$
CREATE PROCEDURE sp_AgregarCargos (
	IN _nombre VARCHAR(45)
)
BEGIN
	INSERT INTO Cargos (nombre) 
    VALUES (_nombre);
END $$
DELIMITER ;

-- UPDATE

DROP PROCEDURE IF EXISTS sp_EditarCargos;
DELIMITER $$
CREATE PROCEDURE sp_EditarCargos (
	IN _id INT,
	IN _nombre VARCHAR(45)
)
BEGIN
	UPDATE Cargos 
    SET 
		nombre = _nombre
    WHERE id = _id;
END $$
DELIMITER ;

-- DELETE

DROP PROCEDURE IF EXISTS sp_EliminarCargos;
DELIMITER $$
CREATE PROCEDURE sp_EliminarCargos (IN _id INT)
BEGIN
	DELETE FROM Cargos WHERE id = _id;
END $$
DELIMITER ;

-- SELECT

DROP PROCEDURE IF EXISTS sp_BuscarCargos;
DELIMITER $$
CREATE PROCEDURE sp_BuscarCargos(IN _id INT)
BEGIN
	SELECT 
		Cargos.id, 
		Cargos.nombre
	FROM Cargos
    WHERE id = _id;
END $$
DELIMITER ;