USE IN5BVKINALMALL_JOSUEMARROQUIN;

-- Procedimientos Almacenados para la Entidad TipoCliente

-- INSERT

DROP PROCEDURE IF EXISTS sp_AgregarTipoCliente; 
DELIMITER $$
CREATE PROCEDURE sp_AgregarTipoCliente (
	IN _descrpcion VARCHAR(45)
)
BEGIN
	INSERT INTO TipoCliente (descrpcion) 
    VALUES (_descrpcion);
END $$
DELIMITER ;

-- UPDATE

DROP PROCEDURE IF EXISTS sp_EditarTipoCliente;
DELIMITER $$
CREATE PROCEDURE sp_EditarTipoCliente (
	IN _id INT,
	IN _descrpcion VARCHAR(45)
)
BEGIN
	UPDATE TipoCliente 
    SET 
		descrpcion = _descrpcion
    WHERE id = _id;
END $$
DELIMITER ;

-- DELETE

DROP PROCEDURE IF EXISTS sp_EliminarTipoCliente;
DELIMITER $$
CREATE PROCEDURE sp_EliminarTipoCliente (IN _id INT)
BEGIN
	DELETE FROM TipoCliente WHERE id = _id;
END $$
DELIMITER ;

-- SELECT

DROP PROCEDURE IF EXISTS sp_BuscarTipoCliente;
DELIMITER $$
CREATE PROCEDURE sp_BuscarTipoCliente(IN _id INT)
BEGIN
	SELECT 
		TipoCliente.id,
		TipoCliente.descrpcion
	FROM TipoCliente
    WHERE id = _id;
END $$
DELIMITER ;
