USE IN5BVKINALMALL_JOSUEMARROQUIN;

-- Procedimientos Almacenados para la Entidad Administración

-- INSERT

DROP PROCEDURE IF EXISTS sp_AgregarAdministracion; 

DELIMITER $$
CREATE PROCEDURE sp_AgregarAdministracion (
	IN _direccion VARCHAR(60), 
	IN _telefono VARCHAR(8)
)
BEGIN
	INSERT INTO Administracion (direccion, telefono) 
    VALUES (_direccion, _telefono);
END $$
DELIMITER ;

-- UPDATE

DROP PROCEDURE IF EXISTS sp_EditarAdministracion;
DELIMITER $$
CREATE PROCEDURE sp_EditarAdministracion (
	IN _id INT,
	IN _direccion VARCHAR(60),
    IN _telefono VARCHAR(8)
)
BEGIN
	UPDATE Administracion 
    SET 
		direccion = _direccion, 
		telefono = _telefono 
    WHERE id = _id;
END $$
DELIMITER ;

-- DELETE

DROP PROCEDURE IF EXISTS sp_EliminarAdministracion;
DELIMITER $$
CREATE PROCEDURE sp_EliminarAdministracion (IN _id INT)
BEGIN
	DELETE FROM Administracion WHERE id = _id;
END $$
DELIMITER ;

-- SELECT

DROP PROCEDURE IF EXISTS sp_BuscarAdministracion;
DELIMITER $$
CREATE PROCEDURE sp_BuscarAdministracion(IN _id INT)
BEGIN
	SELECT 
		Administracion.id, 
        Administracion.direccion, 
        Administracion.telefono 
	FROM Administracion
    WHERE id = _id;
END $$
DELIMITER ;

-- LISTAR ADMINISTRACION

DROP PROCEDURE IF EXISTS sp_ListarAdministracion;
DELIMITER $$
CREATE PROCEDURE sp_ListarAdministracion()
BEGIN
	SELECT 
		Administracion.id, 
        Administracion.direccion, 
        Administracion.telefono 
	FROM Administracion;
END $$
DELIMITER ;

call sp_AgregarAdministracion("Guatemala, Chimaltenango","78945612");
call sp_AgregarAdministracion("5 Calle, 4-30, zona 3, Guatemala","45871250");
call sp_AgregarAdministracion("Caller España, 2-10, zona 10, Guatemala","42130674");
call sp_AgregarAdministracion("3 Calle, 5-90, zona 20 de mixco, Guatemala","12345678");


SELECT * FROM Administracion;
CALL sp_ListarAdministracion();