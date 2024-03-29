//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Fox_Nahsicherer Tropen
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_Fox_Nahsicherer"];

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
player addWeapon "CUP_arifle_HK416_Desert";
player addWeapon "ACE_VMM3";

//Waffen Ausstattung
player addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Tan_L";
player addPrimaryWeaponItem "cup_optic_elcan_reflex_coyote_pip";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_GER_Tropentarn_2";
player addHeadgear "CUP_H_OpsCore_Covered_Tropen";
player addVest "CUP_V_B_GER_PVest_Trop_RFL";
player addBackpack "CUP_B_GER_Medic_Tropentarn";


//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player addWeapon "Rangefinder";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152_3";
player linkItem "ItemAndroid";
player linkItem "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 7 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_COYOTE_PULL";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 8 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_salineIV_500";};
player addItemToUniform "ACE_morphine";

for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "ACE_morphine";
player addItemToBackpack "ACE_adenosine";

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "ACE_wirecutter";
player addItemToVest "ACE_DefusalKit";
player addItemToVest "ACE_Clacker";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];