USE papyrus;


CREATE OR REPLACE VIEW v_GlobalCde
AS
SELECT CODART, SUM(QTECDE) AS QteTot, SUM(PRIUNI) AS PrixTot FROM Ligcom
GROUP BY CODART;

SELECT * FROM v_GlobalCde;