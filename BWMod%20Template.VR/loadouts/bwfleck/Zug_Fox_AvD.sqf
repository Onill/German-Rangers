//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Fox_Avd
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
player addWeapon "BWA3_G36KA4";
player addWeapon "BWA3_P8";

//Waffen Ausstattung
player addPrimaryWeaponItem "bwa3_acc_llm01_irlaser";
player addPrimaryWeaponItem "cup_optic_g33_hws_blk";

//Waffen Munition
player addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
player addHandgunItem "BWA3_15Rnd_9x19_P8";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "BWA3_Uniform_Fleck";
player addHeadgear "BWA3_OpsCore_FastMT_Peltor_Fleck";
player addVest "BWA3_Vest_JPC_Rifleman_Fleck";
player addBackpack "TFAR_rt1523g_big_bwmod";
player addgoggles "BWA3_G_Combat_black";

//------------------------------------------------------------------
//	Ausstattung
//------------------------------------------------------------------	
player addWeapon "Rangefinder";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
player linkItem "TFAR_anprc152";
player linkItem "ItemAndroid";
player addItemToVest "CUP_NVG_PVS15_black";

//------------------------------------------------------------------
//	Munition
//------------------------------------------------------------------	
player addItemToUniform "BWA3_30Rnd_556x45_G36";

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
player addItemToUniform "BWA3_DM32_Green";
player addItemToUniform "BWA3_DM32_Red";
player addItemToUniform "BWA3_DM32_Blue";
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