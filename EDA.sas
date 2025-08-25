options validvarname=any;
libname sncf "/home/u64046075/SNCF Analysis";
proc import datafile="/home/u64046075/SNCF Analysis/regularite-mensuelle-tgv-aqst_modifie.csv"
out=sncf.sncf_data
dbms=csv
replace;
run;

/*types de variables*/
proc contents data=sncf.sncf_data out= sncf.infos_variables;
run;
/*toutes les variables sont du type approprié*/

/*missing values*/
proc means data=sncf.sncf_data nmiss;run;
/*Pas de valeurs manquantes*/

/*Data Cleaning*/
data sncf.clean_sncf_data;set sncf.sncf_data;
Retard_moy_tout_trains_depart=abs(Retard_moy_tout_trains_depart);
Retard_moy_retard_arrivee=abs(Retard_moy_retard_arrivee);
Retard_moy_total_arrivee=abs(Retard_moy_total_arrivee);
'Retard_moy_>15min_concur_vol'n=abs('Retard_moy_>15min_concur_vol'n);
run;

/* Initialement, notre base de données contenait des valeurs négatives en raison d'erreurs de saisie */

/*Data Exploration*/
proc means data=sncf.clean_sncf_data;
output out =sncf.Stat_descriptives;run;


