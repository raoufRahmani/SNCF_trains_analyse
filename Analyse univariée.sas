/*Gares d 'arrivée et de départ : les gares les plus fréquentées*/
proc freq data=sncf.clean_sncf_data;
tables 'Gare de départ'n / out = sncf.gares_arrivées;
run; 

















