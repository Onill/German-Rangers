//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						ZUG_DM
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_DM"];

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
player addWeapon "BWA3_G28";
player addWeapon "BWA3_P8";

//Waffen Ausstattung
player addPrimaryWeaponItem "bwa3_acc_llm01_irlaser";
player addPrimaryWeaponItem "bwa3_optic_pmii_dmr_microt1_rear";
player addPrimaryWeaponItem "bwa3_bipod_harris";

//Waffen Munition
player addPrimaryWeaponItem "BWA3_20Rnd_762x51_G28";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "BWA3_Uniform_Fleck";
player addHeadgear "BWA3_OpsCore_FastMT_Peltor_Fleck";
player addVest "BWA3_Vest_JPC_Rifleman_Fleck";
player addBackpack "BWA3_AssaultPack_Fleck";
player addgoggles "BWA3_G_Combat_black";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 7 do {player addItemToVest "BWA3_20Rnd_762x51_G28";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_20Rnd_762x51_G28_Tracer";};

for "_i" from 1 to 2 do {player addItemToUniform "BWA3_15Rnd_9x19_P8";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM51A1";};
for "_i" from 1 to 2 do {player addItemToVest "BWA3_DM25";};

//------------------------------------------------------------------
//	Erste Hilfe in Uniform
//------------------------------------------------------------------	
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
player addItemToBackpack "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "CUP_NVG_PVS15_black";

player addItemToBackpack "CUP_optic_Elcan_reflex";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 0, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
