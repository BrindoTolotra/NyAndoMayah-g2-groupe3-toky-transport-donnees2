-- Les depenses accumulées de tout le mois de juin
SELECT sum(essence+maintenance) AS depense 
FROM depense
INNER JOIN recevoir
ON recevoir.id_depense = depense.id_depense
INNER JOIN voyage
ON voyage.id_vehicule = recevoir.id_vehicule
WHERE date_part('month', date_voyage) = 6;