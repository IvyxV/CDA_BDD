USE hotel;

CREATE VIEW v_chambres_hotels_et_station
AS
SELECT hot_nom, sta_nom, cha_numero FROM chambre, hotel, station;

SELECT * FROM v_chambres_hotels_et_station
ORDER BY sta_nom;