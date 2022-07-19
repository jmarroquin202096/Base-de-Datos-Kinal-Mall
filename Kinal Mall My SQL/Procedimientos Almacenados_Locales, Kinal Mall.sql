USE IN5BVKINALMALL_JOSUEMARROQUIN;

-- Procedimientos Almacenados para la Entidad Locales

-- INSERT

DROP PROCEDURE IF EXISTS sp_AgregarLocales; 
DELIMITER $$
CREATE PROCEDURE sp_AgregarLocales (
	IN _saldoFavor DECIMAL(11,2),
	IN _saldoContra DECIMAL(11,2),
	IN _mesesPendientes INT,
	IN _disponibilidad BOOLEAN,
	IN _volorLocal DECIMAL (11,2) ,
	IN _valorAdministracion DECIMAL (11,2)
)
BEGIN
	INSERT INTO Locales (saldoFavor, 
						saldoContra, 
						mesesPendientes, 
						disponibilidad, 
						volorLocal, 
						valorAdministracion) 
    VALUES (_saldoFavor,
			_saldoContra,
			_mesesPendientes,
			_disponibilidad, 
			_volorLocal,
			_valorAdministracion);
END $$
DELIMITER ;

-- UPDATE

DROP PROCEDURE IF EXISTS sp_EditarLocales;
DELIMITER $$
CREATE PROCEDURE sp_EditarLocales (
	IN _saldoFavor DECIMAL(11,2),
	IN _saldoContra DECIMAL(11,2),
	IN _mesesPendientes INT,
	IN _disponibilidad BOOLEAN,
	IN _volorLocal DECIMAL (11,2) ,
	IN _valorAdministracion DECIMAL (11,2)
)
BEGIN
	UPDATE Locales 
    SET 
		saldoFavor = _saldoFavor , 
        saldoContra = _saldoContra, 
        mesesPendientes = _mesesPendientes,
        disponibilidad = _disponibilidad, 
        volorLocal = _volorLocal, 
        valorAdministracion  = _valorAdministracion
    WHERE id = _id;
END $$
DELIMITER ;

-- DELETE

DROP PROCEDURE IF EXISTS sp_EliminarLocales;
DELIMITER $$
CREATE PROCEDURE sp_EliminarLocales (IN _id INT)
BEGIN
	DELETE FROM Locales WHERE id = _id;
END $$
DELIMITER ;

-- SELECT

DROP PROCEDURE IF EXISTS sp_BuscarLocales;
DELIMITER $$
CREATE PROCEDURE sp_BuscarLocales(IN _id INT)
BEGIN
	SELECT 
		Locales.id, 
        Locales.saldoFavor,
        Locales.saldoContra, 
        Locales.mesesPendientes, 
        Locales.disponibilidad, 
        Locales.volorLocal, 
        Locales.valorAdministracion
	FROM Locales
    WHERE id = _id;
END $$
DELIMITER ;