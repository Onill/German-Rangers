//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_DM
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
player addWeapon "CUP_srifle_M14_DMR";
player addWeapon "CUP_hgun_Colt1911";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_optic_acog_ta01b_black";

//Waffen Munition
player addPrimaryWeaponItem "CUP_20Rnd_762x51_DMR";
player addHandgunItem "CUP_7Rnd_45ACP_1911";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_BDUv2_DCU_US";
player addHeadgear "CUP_H_LWHv2_desert_comms";
player addVest "CFP_US_pasgt_alice_Rifleman_ERDL";
player addBackpack "B_FieldPack_khk";
player addgoggles "CUP_G_ESS_BLK";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "CUP_NVG_PVS14";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 5 do {player addItemToVest "CUP_20Rnd_762x51_DMR";};
for "_i" from 1 to 2 do {player addItemToBackpack "CUP_20Rnd_762x51_DMR";};
for "_i" from 1 to 2 do {player addItemToBackpack "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR";};

for "_i" from 1 to 2 do {player addItemToUniform "CUP_7Rnd_45ACP_1911";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "ACE_morphine";

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