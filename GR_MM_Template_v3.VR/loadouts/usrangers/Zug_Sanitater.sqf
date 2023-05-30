//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zug_Sanitater
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Zug_Sanitater"];

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
player addWeapon "CUP_arifle_Colt727";
player addWeapon "CUP_hgun_Colt1911";

//Waffen Ausstattung

//Waffen Munition
player addPrimaryWeaponItem "CUP_30Rnd_556x45_Stanag";
player addHandgunItem "CUP_7Rnd_45ACP_1911";

//------------------------------------------------------------------
//	Kleidung
//------------------------------------------------------------------	
player forceAddUniform "CUP_U_B_BDUv2_DCU_US";
player addHeadgear "CUP_H_LWHv2_desert_comms";
player addVest "CFP_US_pasgt_alice_Rifleman_ERDL";
player addBackpack "SP_Carryall_Tan";
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
for "_i" from 1 to 3 do {player addItemToVest "CUP_30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "CUP_30Rnd_556x45_Stanag_Tracer_Red";};

for "_i" from 1 to 2 do {player addItemToUniform "CUP_7Rnd_45ACP_1911";};

//------------------------------------------------------------------
//	Granaten
//------------------------------------------------------------------	
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	

for "_i" from 1 to 6 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_splint";};

for "_i" from 1 to 3 do {player addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 15 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_IO_FAST";};


for "_i" from 1 to 50 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 24 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 25 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_EACA";};
for "_i" from 1 to 10 do {player addItemToBackpack "kat_nitroglycerin";};
for "_i" from 1 to 5 do {player addItemToBackpack "kat_fentanyl";};

player addItemToBackpack "kat_Carbonate";
player addItemToBackpack "kat_naloxone";

player addItemToUniform "ACE_surgicalKit";


//------------------------------------------------------------------
//	ACE Items in Uniform
//------------------------------------------------------------------	
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_EarPlugs";};

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];