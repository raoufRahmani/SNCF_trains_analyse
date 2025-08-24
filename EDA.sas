options validvarname=any;
libname sncf "/home/u64046075/SNCF Analysis";
proc import datafile="/home/u64046075/SNCF Analysis/regularite-mensuelle-tgv-aqst.csv"
out=sncf.sncf_data
dbms=csv
replace;
delimiter=';';
guessingrows=MAX; 
run;