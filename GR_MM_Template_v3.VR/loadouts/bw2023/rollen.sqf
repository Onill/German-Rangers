//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
//
//					Rollen.sqf
//
// Hier werden die verschiedenen Rollen die es für die Fraktion gibt, 
// für das GUI konfiguriert.
// Dies funktioniert über ein Mehrdimensionales Array für die Aufteilung:
// 				
//					ZUG / ECHO / SIERRA / LIMA 
//
// Jede Fraktion hat ihre eigene Rollen Aufteilung.
//
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//
//						ZUG
//
//-----------------------------------------------------------------------------

zugRollen = [
				["Schütze","Zug_Schutze.sqf"],
				["Grenadier","Zug_Grenadier.sqf"],
				["MG","Zug_MG.sqf"],
				["DM","Zug_DM.sqf"],
				["Sanitäter","Zug_Sanitater.sqf"],
				["EHB","Zug_EHB.sqf"],
				["AT","Zug_AT.sqf"],
				["AT-Assistent","Zug_ATA.sqf"],
				["Truppführer","Zug_Truppfuhrer.sqf"],
				["Gruppenführer","Zug_Gruppenfuhrer.sqf"],
				["Nahsicherer","Zug_Fox_Nahsicherer.sqf"],
				["AvD","Zug_Fox_AvD.sqf"],				
				["Zugführer","Zug_Zugfuhrer.sqf"]				
];
publicVariable "zugRollen";

//-----------------------------------------------------------------------------
//
//						ECHO
//
//-----------------------------------------------------------------------------

echoRollen = [
				["Echo 1","echo1.sqf"],
				["Echo 3","echo3.sqf"]
];
publicVariable "echoRollen";

//-----------------------------------------------------------------------------
//
//						Sierra
//
//-----------------------------------------------------------------------------

sierraRollen = [
					["Truppführer","Sierra_TrpFhr.sqf"],
					["Sniper G22","Sierra_Sniper_G22.sqf"],
					["NaSi","Sierra_NaSi_Spaten.sqf"]
];
publicVariable "sierraRollen";

//-----------------------------------------------------------------------------
//
//						Lima
//
//-----------------------------------------------------------------------------

limaRollen = [
					["Standard","Lima_Standard.sqf"]
];
publicVariable "limaRollen";