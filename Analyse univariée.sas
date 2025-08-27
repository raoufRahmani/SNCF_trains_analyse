/*Gares d 'arrivée et de départ : les gares les plus fréquentées*/
proc freq data=sncf.clean_sncf_data;
tables 'Gare de départ'n / out = sncf.gares_arrivées;
run; 
/*On voit clairement dans la table *gares_départ* que les gares les plus fréquentées sont
celles de Paris : 2170 départs depuis la gare de Lyon, ce qui représente à elle seule 20 %, 
puis la gare de Marseille Saint-Charles avec 479 départs, en raison de l’importance touristique 
de la ville et du nombre de gares qu’elle dessert.
 */

/*Durée moyenne du trajet*/
data sncf.clean_sncf_data;set sncf.clean_sncf_data;
duree_heure='Durée moyenne du trajet'n/60;
run;


proc sgplot data=sncf.clean_sncf_data;
histogram duree_heure;
xaxis label="Durée moyenne du trajet (heures)";
run;








































































































