USE hotel;

CREATE VIEW v_chambres_et_hotels
AS
SELECT * FROM chambre, hotel;
SELECT * FROM v_chambres_et_hotels;