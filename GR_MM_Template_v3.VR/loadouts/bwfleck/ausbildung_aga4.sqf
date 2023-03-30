//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Ausbildung_Aga4
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_Schutze"];

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
//	Waffen
//------------------------------------------------------------------	

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_GER_Flecktarn_2";
player addHeadgear "CUP_H_OpsCore_Covered_Fleck";
player addVest "CUP_V_B_GER_PVest_Fleck_RFL";
player addBackpack "CUP_B_GER_Medic_Flecktarn";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 30 do {player addItemToVest  "ACE_fieldDressing";};
for "_i" from 1 to 30 do {player addItemToVest  "ACE_packingBandage";};
for "_i" from 1 to 30 do {player addItemToVest  "ACE_elasticBandage";};
for "_i" from 1 to 30 do {player addItemToVest  "ACE_quikclot";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};


//------------------------------------------------------------------
//	ACE Items
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 0, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];