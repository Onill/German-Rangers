//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Echo
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

//------------------------------------------------------------------
//	Initialisierung
//------------------------------------------------------------------	
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_CRYE_V1_Full";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

//------------------------------------------------------------------
//	ACE Items
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];