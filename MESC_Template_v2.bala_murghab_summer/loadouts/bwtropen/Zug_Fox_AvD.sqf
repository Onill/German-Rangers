//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Fox_Avd Tropen
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_Fox_Avd"];

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
player addWeapon "CUP_arifle_G36KA3";
player addWeapon "CUP_hgun_M17_Black";

//Waffen Ausstattung
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "CUP_optic_HensoldtZO_low_RDS";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
player addHandgunItem "CUP_17Rnd_9x19_M17_Black";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_GER_Tropentarn_2";
player addHeadgear "CUP_H_OpsCore_Covered_Tropen";
player addVest "CUP_V_B_GER_PVest_Trop_Med";
player addBackpack "TFAR_rt1523g_big_bwmod_tropen";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player addWeapon "Rangefinder";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player linkItem "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
player addItemToUniform "CUP_30Rnd_556x45_G36";

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
player addItemToUniform "SmokeShellGreen";
player addItemToUniform "SmokeShellRed";
player addItemToUniform "SmokeShellBlue";
player addItemToUniform "ACE_Chemlight_HiRed";
player addItemToUniform "ACE_Chemlight_HiGreen";
player addItemToUniform "ACE_Chemlight_HiBlue";

//------------------------------------------------------------------
//	Erste Hilfe
//------------------------------------------------------------------	
player addItemToVest "kat_AED";
player addItemToVest "ACE_personalAidKit";
player addItemToVest "kat_Pulseoximeter";
player addItemToVest "ACE_surgicalKit";
player addItemToVest "kat_scalpel";
for "_i" from 1 to 35 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 7 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 6 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_fentanyl";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_nitroglycerin";};
player addItemToBackpack "kat_naloxone";
player addItemToBackpack "kat_EACA";
player addItemToBackpack "kat_ketamine";
player addItemToBackpack "kat_phenylephrine";
player addItemToBackpack "kat_Carbonate";
player addItemToBackpack "kat_nalbuphine";
player addItemToBackpack "kat_lorazepam";
player addItemToBackpack "ace_marker_flags_black";
player addItemToBackpack "ace_marker_flags_green";
player addItemToBackpack "ace_marker_flags_yellow";
player addItemToBackpack "ace_marker_flags_red";

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];