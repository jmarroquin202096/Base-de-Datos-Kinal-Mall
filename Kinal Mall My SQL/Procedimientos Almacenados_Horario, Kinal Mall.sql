USE IN5BVKINALMALL_JOSUEMARROQUIN;

-- Procedimientos Almacenados para la Entidad Horarios

-- INSERT

DROP PROCEDURE IF EXISTS sp_AgregarHorarios; 
DELIMITER $$
CREATE PROCEDURE sp_AgregarHorarios (
	IN _horarioEntrada TIME, 
	IN _horarioSalida TIME,
    IN _lunes BOOLEAN,
    IN _martes BOOLEAN,
    IN _miercoles BOOLEAN,
    IN _jueves BOOLEAN,
    IN _viernes BOOLEAN
)
BEGIN
	INSERT INTO Horarios (horarioEntrada,horarioSalida,lunes,martes,miercoles,jueves,viernes) 
    VALUES (_horarioEntrada, _horarioSalida,_lunes,_martes,_miercoles,_jueves,_viernes);
END $$
DELIMITER ;

-- UPDATE

DROP PROCEDURE IF EXISTS sp_EditarHorarios;
DELIMITER $$
CREATE PROCEDURE sp_EditarHorarios (
	IN _id INT,
	IN _horarioEntrada TIME, 
	IN _horarioSalida TIME,
    IN _lunes BOOLEAN,
    IN _martes BOOLEAN,
    IN _miercoles BOOLEAN,
    IN _jueves BOOLEAN,
    IN _viernes BOOLEAN
)
BEGIN
	UPDATE Horarios 
    SET 
		horarioEntrada = _horarioEntrada,
        horarioSalida = _horarioSalida,
        lunes = _lunes,
        martes = _martes,
        miercoles = _miercoles,
        jueves = _jueves ,
        viernes = _viernes
    WHERE id = _id;
END $$
DELIMITER ;

-- DELETE

DROP PROCEDURE IF EXISTS sp_EliminarHorarios;
DELIMITER $$
CREATE PROCEDURE sp_EliminarHorarios (IN _id INT)
BEGIN
	DELETE FROM Horarios WHERE id = _id;
END $$
DELIMITER ;

-- SELECT

DROP PROCEDURE IF EXISTS sp_BuscarHorarios;
DELIMITER $$
CREATE PROCEDURE sp_BuscarHorarios(IN _id INT)
BEGIN
	SELECT 
		Horarios.id,
		Horarios.horarioEntrada,
        Horarios.horarioSalida,
        Horarios.lunes,
        Horarios.martes,
        Horarios.miercoles,
        Horarios.jueves,
        Horarios.viernes
	FROM Horarios
    WHERE id = _id;
END $$
DELIMITER ;