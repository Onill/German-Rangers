/*

Diese Datei einfügen in "Loadouts" Ordner im Missionsverzeichnis

Einfügen in initPlayerLocal:

call compile preprocessFileLineNumbers "loadouts\loadoutInit.sqf";

- In Einheiten setzen
this setVariable ["loadout", "X"];  		
_____________________

Variablen für den Zug:

this setVariable ["loadout", "Zug_Zugfuhrer"]; 
this setVariable ["loadout", "Zug_Fox_AvD"];
this setVariable ["loadout", "Zug_Fox_Nahsicherer"]; 
this setVariable ["loadout", "Zug_Gruppenfuhrer"]; 
this setVariable ["loadout", "Zug_Truppfuhrer"]; 
this setVariable ["loadout", "Zug_Schutze"]; 
this setVariable ["loadout", "Zug_Sanitater"]; 
this setVariable ["loadout", "Zug_EHB"]; 
this setVariable ["loadout", "Zug_Grenadier"]; 
this setVariable ["loadout", "Zug_DM"]; 
this setVariable ["loadout", "Zug_MG"]; 
this setVariable ["loadout", "Zug_AT"]; 
this setVariable ["loadout", "Zug_ATA"]; 


Variablen für Sierra:

this setVariable ["loadout", "Sierra_TrpFhr"]; 
this setVariable ["loadout", "Sierra_Sniper_M107"]; 
this setVariable ["loadout", "Sierra_Sniper_HK417"]; 
this setVariable ["loadout", "Sierra_Sniper_G22"];
this setVariable ["loadout", "Sierra_NaSi_Spaten"];
this setVariable ["loadout", "Sierra_NaSi_Cutter"];
this setVariable ["loadout", "Sierra_Drohne_HK417"];
this setVariable ["loadout", "Sierra_Drohne_HK416"];


Variablen für Echo:

this setVariable ["loadout", "Echo_Gefecht_1"];
this setVariable ["loadout", "Echo_Gefecht_2"];
this setVariable ["loadout", "Echo_Gefecht_3"];
this setVariable ["loadout", "Echo_Gefecht_4"];
this setVariable ["loadout", "Echo_Infiltration_1"];
this setVariable ["loadout", "Echo_Infiltration_2"];
this setVariable ["loadout", "Echo_Infiltration_3"];
this setVariable ["loadout", "Echo_Infiltration_4_Drohne"];
this setVariable ["loadout", "Echo_Infiltration_4_HVT"];
this setVariable ["loadout", "Echo_SchwW1"];
this setVariable ["loadout", "Echo_SchwW2"];
this setVariable ["loadout", "Echo_SchwW3"];
this setVariable ["loadout", "Echo_SchwW4"];
this setVariable ["loadout", "Echo_SchwW7"];
this setVariable ["loadout", "Echo_SchwW8"];
_____________________
*/

if (playerSide == west) then { 

	switch ((player getVariable "loadout")) do {

		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									LIMA									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/


		case("Lima_Standard"):{
			_loadouts = format ["loadouts\bw%1\Lima_Standard.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Ausbildung								---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/


		case("Ausbilder"):{
			_loadouts = format ["loadouts\bw%1\ausbilder.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Rekrut"):{
			_loadouts = format ["loadouts\bw%1\rekrut.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};

		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Führung									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/

		
		case("Zug_Zugfuhrer"):{
			_loadouts = format ["loadouts\bw%1\Zug_Zugfuhrer.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_Fox_AvD"):{	
			_loadouts = format ["loadouts\bw%1\Zug_Fox_AvD.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Zug_Fox_Nahsicherer"):{	
			_loadouts = format ["loadouts\bw%1\Zug_Fox_Nahsicherer.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};


		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Zug    									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/

		
		case("Zug_Gruppenfuhrer"):{	
			_loadouts = format ["loadouts\bw%1\Zug_Gruppenfuhrer.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Zug_Truppfuhrer"):{	
			_loadouts = format ["loadouts\bw%1\Zug_Truppfuhrer.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_Schutze"):{	
			_loadouts = format ["loadouts\bw%1\Zug_Schutze.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Zug_Sanitater"):{	
			_loadouts = format ["loadouts\bw%1\Zug_Sanitater.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_EHB"):{	
			_loadouts = format ["loadouts\bw%1\Zug_EHB.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Zug_Grenadier"):{	
			_loadouts = format ["loadouts\bw%1\Zug_Grenadier.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_DM"):{	
			_loadouts = format ["loadouts\bw%1\Zug_DM.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_MG"):{	
			_loadouts = format ["loadouts\bw%1\Zug_MG.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_AT"):{	
			_loadouts = format ["loadouts\bw%1\Zug_AT.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Zug_ATA"):{	
			_loadouts = format ["loadouts\bw%1\Zug_ATA.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		

		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Sierra 									---
		---																			---
		-------------------------------------------------------------------------------
		-----------------------------------------------------------------------------*/

		
		case("Sierra_TrpFhr"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_TrpFhr.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_Sniper_M107"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_Sniper_M107.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_Sniper_HK417"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_Sniper_HK417.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_Sniper_G22"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_Sniper_G22.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_NaSi_Spaten"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_NaSi_Spaten.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_NaSi_Cutter"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_NaSi_Cutter.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};

		case("Sierra_Drohne_HK417"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_Drohne_HK417.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Sierra_Drohne_HK416"):{	
			_loadouts = format ["loadouts\bw%1\Sierra_Drohne_HK416.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};


		/*-----------------------------------------------------------------------------
		-------------------------------------------------------------------------------
		---																			---
		---									Echo 									---
		---																			---
		-------------------------------------------------------------------------------
		-------------------------------------------------------------------------------
*/
		
		case("Echo_Infiltration_1"):{	
			_loadouts = format ["loadouts\bw%1\Echo_Infiltration_1.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_Infiltration_2"):{	
			_loadouts = format ["loadouts\bw%1\Echo_Infiltration_2.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_Infiltration_3"):{	
			_loadouts = format ["loadouts\bw%1\Echo_Infiltration_3.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_Infiltration_4_Drohne"):{	
			_loadouts = format ["loadouts\bw%1\Echo_Infiltration_4_Drohne.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_Infiltration_4_HVT"):{	
			_loadouts = format ["loadouts\bw%1\Echo_Infiltration_4_HVT.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_SchwW1"):{	
			_loadouts = format ["loadouts\bw%1\Echo_SchwW1.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_SchwW2"):{	
			_loadouts = format ["loadouts\bw%1\Echo_SchwW2.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_SchwW3"):{	
			_loadouts = format ["loadouts\bw%1\Echo_SchwW3.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_SchwW4"):{	
			_loadouts = format ["loadouts\bw%1\Echo_SchwW4.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_SchwW7.sqf"):{	
			_loadouts = format ["loadouts\bw%1\Echo_SchwW7.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
		case("Echo_SchwW8.sqf"):{	
			_loadouts = format ["loadouts\bw%1\Echo_SchwW8.sqf", tarnfarbe];
			call compile preprocessFileLineNumbers _loadouts;
		};
		
	};
};