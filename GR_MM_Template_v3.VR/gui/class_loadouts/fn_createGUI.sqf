/*
 *  Author: 
 */
private [];
	// Welche Fraktion


	// Welche Gruppe
	_LoadoutClass = "Zug";
	_LoadoutClass = param[0];
	
	
	
	
	
switch (_LoadoutClass) do
{
	case "Sierra": { 
		loudout =["TrpFhr","NaSi Spaten","NaSi Cutter","Drohne HK416","Drohne HK417","Sniper G22","Sniper HK417","Sniper M107"];
		loudoutIndex =["Sierra_TrpFhr","Sierra_NaSi_Spaten","Sierra_NaSi_Cutter","Sierra_Drohne_HK416","Sierra_Drohne_HK417","Sierra_Sniper_G22","Sierra_Sniper_HK417","Sierra_Sniper_M107"];
	 };
	 case "Echo": {  
		loudout =["Infiltration 1","Infiltration 2","Infiltration 3","Infiltration 4 HVT","Infiltration 4 Drohne","SchwW 1","SchwW 2","SchwW 3","SchwW 4","SchwW 7","SchwW 8"];
		loudoutIndex =["Echo_Infiltration_1","Echo_Infiltration_2","Echo_Infiltration_3","Echo_Infiltration_4_HVT","Echo_Infiltration_4_Drohne","Echo_SchwW1","Echo_SchwW2","Echo_SchwW3","Echo_SchwW4","Echo_SchwW7","Echo_SchwW8",""];
	};
	
	case "Lima": {  
		loudout =["Lima Standart","----","Trainingsabend","Training Schutze","Ausbildung"];
		loudoutIndex =["Lima_01","","trainingsabend","training_schutze","ausbildung"];
	};
	
	case "Ausbildung": {  
		loudout =["Ausbilder","Ausbildung","AGA 4","Trainings-Abend","Training Schutze","Rekrut"];
		loudoutIndex =["ausbilder","ausbildung","ausbildung_aga4","trainingsabend","training_schutze","rekrut"];
	};
	default {
		loudout = ["Schütze","DM-Schütze","Schütze EH B","MG-Schütze","Sanitäter","AT-Schütze","AT-Assistent","Grenadier","Truppführer","Gruppenführer","Fox - Nahsicherer","AvD","Zugführung"];
		loudoutIndex = ["Zug_Schutze","Zug_DM","Zug_EHB","Zug_MG","Zug_Sanitater","Zug_AT","Zug_ATA","Zug_Grenadier","Zug_Truppfuhrer","Zug_Gruppenfuhrer","Zug_Fox_Nahsicherer","Zug_Fox_AvD","Zug_Zugfuhrer"];		  
	};
};

	_menueDialog = createDialog 'ClassLoadout_Dialog';
	