USE exemple;

# 1 : 
# Select * from employe;

#2 : 
#SELECT nodept, nom, noregion FROM dept;

# 3 : 
# SELECT nom, dateemb, nosup, nodep, salaire FROM employe;

#4 :
#SELECT titre FROM employe;

#5 : 
#SELECT DISTINCT titre FROM employe;

#6 : 
# SELECT nom, noemp, nodep FROM employe
# WHERE titre='secrétaire';
 
#7 :
#SELECT nom, nodep FROM employe
#WHERE nodep > 40;

#8 :
#SELECT nom, prenom FROM employe
#WHERE nom < prenom;

#9 :
#SELECT nom, salaire, nodep FROM employe
#WHERE titre='représentant' AND nodep=35 && salaire > 20000;

#10 :
#SELECT nom, titre, salaire FROM employe
#WHERE titre = 'représentant' OR titre = 'président';

#11 :
#SELECT nom, titre, nodep, salaire FROM employe
#WHERE nodep=34  OR titre = 'représentant' OR titre = 'secrétaire';

#12 :
#SELECT nom, titre, nodep, salaire FROM employe
#WHERE titre = 'représentant' OR (titre = 'secrétaire' && nodep = 34);

#13 :
#SELECT nom, salaire FROM employe
#WHERE salaire > 20000 && salaire < 30000;

#15 : 
#SELECT nom FROM employe
#WHERE nom LIKE 'H%';

#16 :
#SELECT nom FROM employe
#WHERE nom LIKE '%n';

#17 :
#SELECT nom FROM employe
#WHERE nom LIKE '__u';

#18 :
#SELECT salaire, nom FROM employe
#WHERE nodep = 41
#ORDER BY salaire;

#19 :
#SELECT salaire, nom FROM employe
#WHERE nodep = 41
#ORDER BY salaire DESC;

#20 :
#SELECT nom, titre, salaire FROM employe
#ORDER BY titre, salaire DESC;

#21 :
#SELECT nom, salaire, tauxcom, titre FROM employe
#ORDER BY tauxcom;

#22 :
#SELECT nom, salaire, tauxcom, titre FROM employe
#WHERE tauxcom IS NULL;

#23 :
#SELECT nom, salaire, tauxcom, titre FROM employe
#WHERE tauxcom IS NOT NULL;

#24 :
#SELECT nom, salaire, tauxcom, titre FROM employe
#WHERE tauxcom < 15 && tauxcom IS NOT NULL;

#25 :
#SELECT nom, salaire, tauxcom, titre FROM employe
#WHERE tauxcom > 15 && tauxcom IS NOT NULL;

#26 :
#SELECT nom, salaire, tauxcom, titre, tauxcom * salaire AS commission FROM employe
#WHERE tauxcom IS NOT NULL;

#27 :
#SELECT nom, salaire, tauxcom, titre, tauxcom * salaire AS commission FROM employe
#WHERE tauxcom IS NOT NULL
#ORDER BY commission;

#28 :
#SELECT CONCAT(nom, prenom) AS nomEtPrenom FROM employe;

#29 :
#SELECT SUBSTRING(nom, 1, 5) FROM employe;

#30 :
#SELECT nom,  LOCATE ('r', nom) AS posRDansNom FROM employe;

#31 :
#SELECT nom, UPPER(nom) FROM employe
#WHERE nom = 'Vrante';

#32 :
#SELECT nom, LENGTH(nom) AS longueurNom FROM employe;