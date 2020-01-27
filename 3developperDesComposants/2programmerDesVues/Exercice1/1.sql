USE hotel;

CREATE VIEW v_hotels_et_stations
AS
SELECT * FROM hotel, station;
SELECT * FROM v_hotels_et_stations;