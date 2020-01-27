USE hotel;

CREATE OR REPLACE VIEW v_chambres_hotels_et_reservation
AS
SELECT res_date, res_date_debut, res_date_fin, res_prix, res_arrhes, cli_nom, hot_nom FROM `client`, reservation, hotel;

SELECT * FROM v_chambres_hotels_et_reservation;