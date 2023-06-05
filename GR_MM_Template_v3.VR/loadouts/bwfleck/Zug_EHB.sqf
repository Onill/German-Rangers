//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_EHB
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_EHB"];

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
player addWeapon "CUP_arifle_G36A3";
player addWeapon "CUP_hgun_M17_Black";

//Waffen Ausstattung
player addPrimaryWeaponItem "CUP_acc_LLM01_L";
player addPrimaryWeaponItem "CUP_optic_HensoldtZO_low_RDS_pip";

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_G36";
player addHandgunItem "CUP_21Rnd_9x19_M17_Black";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_GER_Flecktarn_1";
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
//	Munition
//------------------------------------------------------------------	
for "_i" from 1 to 7 do {player addItemToVest "CUP_30Rnd_556x45_G36";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_17Rnd_9x19_M17_Black";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_M67";};

//------------------------------------------------------------------
//	Erste Hilfe
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToUniform "ACE_bodyBag";};
for "_i" from 1 to 6 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_splint";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 2 do {player addItemToUniform "kat_larynx";};
for "_i" from 1 to 2 do {player addItemToUniform "kat_chestSeal";};

for "_i" from 1 to 2 do {player addItemToVest "ACE_salineIV_500";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_packingBandage";};
player addItemToVest "kat_BVM";

for "_i" from 1 to 44 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 8 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 13 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 14 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_naloxone";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 3 do {player addItemToBackpack "kat_EACA";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_fentanyl";};
player addItemToBackpack "kat_Carbonate";
player addItemToBackpack "kat_oxygenTank_150_Item";

//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";

player addItemToVest "ACE_EntrenchingTool";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 1, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];
