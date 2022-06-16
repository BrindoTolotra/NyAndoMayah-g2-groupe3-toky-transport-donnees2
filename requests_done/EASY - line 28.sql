-- les clients qui ont annulé leur voyage.
select nom,prenom
FROM client
INNER JOIN reserver
ON client.id_client = reserver.id_client
INNER JOIN voyage
ON voyage.id_voyage = reserver.id_voyage
INNER JOIN vehicule
ON voyage.id_vehicule = vehicule.id_vehicule
WHERE vehicule.status = 'false';