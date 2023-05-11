//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_AA
//
//------------------------------------------------------------------
//------------------------------------------------------------------	
if (!local player) exitWith {};

player setVariable ["loadout","Zug_AA"];

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
player addWeapon "CUP_arifle_Mk17_STD_AFG_woodland";
player addWeapon "launch_I_Titan_F";
player addWeapon "CUP_hgun_M9A1";

//Waffen Ausstattung
player addPrimaryWeaponItem "cup_acc_anpeq_15_flashlight_black_l";
player addPrimaryWeaponItem "cup_optic_aimm_m68_blk";

//Waffen Munition
player addPrimaryWeaponItem "CUP_20Rnd_762x51_B_SCAR_bkl";
player addSecondaryWeaponItem "Titan_AA";
player addHandgunItem "CUP_15Rnd_9x19_M9";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_USMC_FROG4_WMARPAT";
player addHeadgear "CUP_H_LWHv2_MARPAT_comms";
player addVest "CUP_V_JPC_Fastbelt_rngr";
player addBackpack "CUP_B_Kombat_Olive";
player addgoggles "CUP_G_Oakleys_Clr";

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
for "_i" from 1 to 5 do {player addItemToVest "CUP_20Rnd_762x51_B_SCAR_bkl";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_15Rnd_9x19_M9";};

for "_i" from 1 to 2 do {player addItemToBackpack "Titan_AA";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

//------------------------------------------------------------------
//	Erste Hilfe in Uniform
//------------------------------------------------------------------	
for "_i" from 1 to 8 do {player addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_morphine";

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
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
