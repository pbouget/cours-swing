select vendeur.nom, vendeur.prenom,
	   vehicule.prix, vehicule.occasion, vehicule.date_entree,
       couleur.nom as 'couleur',
       stock.entrepot as 'stock',
       ville.nom as 'ville',
       modele.marque as 'marque',
       modele.nom as 'modele',
       modele.annee as 'annee',
       motorisation.Chevaux as 'chevaux',
       motorisation.cylindree as 'cylindree',
       carburant.nom as 'carburant'
	from vehicule
    inner join vehicule_vendu on vehicule_vendu.id_vehicule = vehicule.id
    inner join vente on vente.id = vehicule_vendu.id_vente
    left join vendeur on vendeur.id = vente.id_vendeur
	left join couleur on couleur.id = vehicule.id_couleur
    left join stock on stock.id = vehicule.id_stock
    left join ville on ville.id = stock.id_ville
    left join modele on modele.id = vehicule.id_modele
    left join motorisation on motorisation.id = vehicule.id_motorisation
    left join carburant on carburant.id = motorisation.id_carburant
	order by prix desc,
             carburant,
			 modele.marque,
			 modele,
             annee desc,
             couleur;

    