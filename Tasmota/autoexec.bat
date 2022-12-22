displaybatch /display.ini

Rule1 "
Rule2 "
Rule1 1
Rule2 1

Rule1 on Time#Minute|1 do DisplayText [fp][s2c2x15y0T][s2c2x15y15t] Uhr endon on AM2301#Temperature do DisplayText [c1l5f0s1]Temperatur: %value% C endon on AM2301#Humidity do DisplayText [c1l6f0s1]Feuchtigkeit: %value% % endon

Rule2 ON mqtt#connected DO Subscribe newMOTD, motd ENDON ON Event#newMOTD DO DisplayText [c1l7f0s1]%value% ENDON