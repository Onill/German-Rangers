//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Schutze
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
player addWeapon "CUP_arifle_HK416_Black";
player addWeapon "CUP_hgun_M17_Black";

//Waffen Ausstattung
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
player addPrimaryWeaponItem "CUP_optic_Elcan_reflex";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_BLACK_PULL";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_GER_Flecktarn_2";
player addHeadgear "CUP_H_OpsCore_Covered_Fleck";
player addVest "CUP_V_B_GER_PVest_Fleck_RFL";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 7 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_BLACK_PULL";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red";};

for "_i" from 1 to 2 do {player addItemToUniform "CUP_17Rnd_9x19_M17_Black";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 6 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_salineIV_500";};
player addItemToUniform "ACE_morphine";

//------------------------------------------------------------------
//	ACE Items
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_wirecutter";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 0, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];