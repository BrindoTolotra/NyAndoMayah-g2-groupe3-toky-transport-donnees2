-- toutes les place(s) libre(s) pour un voyage
SELECT id_voyage,date_voyage,heure_dep,nb_place_dispo,matricule,v1.nom_ville AS depart, v2.nom_ville AS arrivee
FROM vehicule
INNER JOIN voyage
ON vehicule.id_vehicule = voyage.id_vehicule
INNER JOIN ville
AS v1 ON v1.id_ville = voyage.id_ville_depart
INNER JOIN ville
AS v2 ON v2.id_ville = voyage.id_ville_arrivee
INNER JOIN offre
ON voyage.id_offre = offre.id_offre
where nb_place_dispo>0;