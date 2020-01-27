USE hotel;

CREATE VIEW v_nom_reservation
AS
SELECT res_date, res_date_debut, res_date_fin, res_prix, res_arrhes, cli_nom FROM `client`, reservation;

SELECT * FROM v_nom_reservation;